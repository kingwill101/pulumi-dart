// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainRedirectRequestHeader {
  /// Specified custom request header fields
  final pulumi.Input<String>? key;
  /// Customize the value of the request header field.
  final pulumi.Input<String>? value;

  /// Creates a new [DomainRedirectRequestHeader].
  /// [key] Specified custom request header fields
  /// [value] Customize the value of the request header field.
  DomainRedirectRequestHeader({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory DomainRedirectRequestHeader.fromMap(Map<String, dynamic> map) {
    return DomainRedirectRequestHeader(
      key: map['key'] == null ? null : (map['key'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

