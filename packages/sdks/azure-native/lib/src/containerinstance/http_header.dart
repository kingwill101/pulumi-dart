// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The HTTP header.
class HttpHeader {
  /// The header name.
  final pulumi.Input<String>? name;
  /// The header value.
  final pulumi.Input<String>? value;

  /// Creates a new [HttpHeader].
  /// [name] The header name.
  /// [value] The header value.
  const HttpHeader({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory HttpHeader.fromMap(Map<String, dynamic> map) {
    return HttpHeader(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
