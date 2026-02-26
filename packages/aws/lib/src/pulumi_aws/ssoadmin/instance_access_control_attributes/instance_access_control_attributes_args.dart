// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../instance_access_control_attributes_attribute/instance_access_control_attributes_attribute.dart';

/// The set of arguments for InstanceAccessControlAttributes.
class InstanceAccessControlAttributesArgs {
  /// See AccessControlAttribute for more details.
  final Input<List<InstanceAccessControlAttributesAttribute>> attributes;

  /// The Amazon Resource Name (ARN) of the SSO Instance.
  final Input<String> instanceArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  InstanceAccessControlAttributesArgs({
    required this.attributes,
    required this.instanceArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attributes'] = Input.mapInputValue<
            List<InstanceAccessControlAttributesAttribute>,
            List<Map<String, dynamic>>>(
        attributes,
        (value) => Input.encodeList<InstanceAccessControlAttributesAttribute,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    map['instanceArn'] = instanceArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory InstanceAccessControlAttributesArgs.fromMap(
      Map<String, dynamic> map) {
    return InstanceAccessControlAttributesArgs(
      attributes: Input.asInput<List<InstanceAccessControlAttributesAttribute>>(
          map['attributes']),
      instanceArn: Input.asInput<String>(map['instanceArn']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
