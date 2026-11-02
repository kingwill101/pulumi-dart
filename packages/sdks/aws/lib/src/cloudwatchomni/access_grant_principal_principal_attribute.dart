// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessGrantPrincipalPrincipalAttribute {
  /// Identity Center user attribute to match, for example `userName` or `enterprise.department`. Must be 1-128 characters. Each key may appear only once per grant.
  final pulumi.Input<String> key;
  /// Attribute value. Must be 1-512 characters.
  final pulumi.Input<String> value;

  /// Creates a new [AccessGrantPrincipalPrincipalAttribute].
  /// [key] Identity Center user attribute to match, for example `userName` or `enterprise.department`. Must be 1-128 characters. Each key may appear only once per grant.
  /// [value] Attribute value. Must be 1-512 characters.
  const AccessGrantPrincipalPrincipalAttribute({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory AccessGrantPrincipalPrincipalAttribute.fromMap(Map<String, dynamic> map) {
    return AccessGrantPrincipalPrincipalAttribute(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
