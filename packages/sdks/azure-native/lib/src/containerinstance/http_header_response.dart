// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The HTTP header.
class HttpHeaderResponse {
  /// The header name.
  final pulumi.Input<String?>? name;
  /// The header value.
  final pulumi.Input<String?>? value;

  /// Creates a new [HttpHeaderResponse].
  /// [name] The header name.
  /// [value] The header value.
  const HttpHeaderResponse({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory HttpHeaderResponse.fromMap(Map<String, dynamic> map) {
    return HttpHeaderResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
