// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainHttpHeaderConfig {
  final pulumi.Input<String>? headerId;
  final pulumi.Input<String> headerKey;
  final pulumi.Input<String> headerValue;

  /// Creates a new [DomainHttpHeaderConfig].
  /// [headerId] Optional.
  /// [headerKey] Required.
  /// [headerValue] Required.
  const DomainHttpHeaderConfig({
    this.headerId,
    required this.headerKey,
    required this.headerValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerId': ?headerId,
      'headerKey': headerKey,
      'headerValue': headerValue,
    };
  }

  factory DomainHttpHeaderConfig.fromMap(Map<String, dynamic> map) {
    return DomainHttpHeaderConfig(
      headerId: (() { final guardedValue = map['headerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      headerKey: pulumi.Input.fromValue(map['headerKey'] as String),
      headerValue: pulumi.Input.fromValue(map['headerValue'] as String),
    );
  }
}

