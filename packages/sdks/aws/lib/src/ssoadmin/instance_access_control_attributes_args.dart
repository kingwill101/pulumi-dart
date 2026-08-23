// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_access_control_attributes_attribute.dart';

/// {@template pulumi_ssoadmin_instance_access_control_attributes_instance_access_control_attributes_args_doc}
/// The set of arguments for InstanceAccessControlAttributes.
/// {@endtemplate}
/// {@macro pulumi_ssoadmin_instance_access_control_attributes_instance_access_control_attributes_args_doc}
class InstanceAccessControlAttributesArgs {
  /// See AccessControlAttribute for more details.
  final pulumi.Input<List<InstanceAccessControlAttributesAttribute>> attributes;
  /// The Amazon Resource Name (ARN) of the SSO Instance.
  final pulumi.Input<String> instanceArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [InstanceAccessControlAttributesArgs].
  /// [attributes] See AccessControlAttribute for more details.
  /// [instanceArn] The Amazon Resource Name (ARN) of the SSO Instance.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const InstanceAccessControlAttributesArgs({
    required this.attributes,
    required this.instanceArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': pulumi.Input.mapInputValue<List<InstanceAccessControlAttributesAttribute>, List<Map<String, dynamic>>>(attributes, (value) => pulumi.Input.encodeList<InstanceAccessControlAttributesAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceArn': instanceArn,
      'region': ?region,
    };
  }

  factory InstanceAccessControlAttributesArgs.fromMap(Map<String, dynamic> map) {
    return InstanceAccessControlAttributesArgs(
      attributes: pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceAccessControlAttributesAttribute>(map['attributes']!, (value) => InstanceAccessControlAttributesAttribute.fromMap((value as Map).cast<String, dynamic>()))),
      instanceArn: pulumi.Input.fromValue(map['instanceArn'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
