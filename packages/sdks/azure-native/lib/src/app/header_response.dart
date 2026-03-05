// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Header of otlp configuration
class HeaderResponse {
  /// The key of otlp configuration header
  final pulumi.Input<String>? key;
  /// The value of otlp configuration header
  final pulumi.Input<String>? value;

  /// Creates a new [HeaderResponse].
  /// [key] The key of otlp configuration header
  /// [value] The value of otlp configuration header
  HeaderResponse({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory HeaderResponse.fromMap(Map<String, dynamic> map) {
    return HeaderResponse(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

