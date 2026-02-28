// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_access_control_attributes_attribute_value.dart';

class InstanceAccessControlAttributesAttribute {
  /// The name of the attribute associated with your identities in your identity source. This is used to map a specified attribute in your identity source with an attribute in AWS SSO.
  final String key;

  /// The value used for mapping a specified attribute to an identity source. See AccessControlAttributeValue
  final List<InstanceAccessControlAttributesAttributeValue> values;

  /// Creates a new [InstanceAccessControlAttributesAttribute].
  /// [key] The name of the attribute associated with your identities in your identity source. This is used to map a specified attribute in your identity source with an attribute in AWS SSO.
  /// [values] The value used for mapping a specified attribute to an identity source. See AccessControlAttributeValue
  InstanceAccessControlAttributesAttribute({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['values'] = pulumi.Input.encodeList<
        InstanceAccessControlAttributesAttributeValue,
        Map<String, dynamic>>(values, (value) => value.toMap());
    return map;
  }

  factory InstanceAccessControlAttributesAttribute.fromMap(
      Map<String, dynamic> map) {
    return InstanceAccessControlAttributesAttribute(
      key: map['key'] as String,
      values: pulumi.Input.decodeList<
              InstanceAccessControlAttributesAttributeValue>(
          map['values'],
          (value) => InstanceAccessControlAttributesAttributeValue.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
