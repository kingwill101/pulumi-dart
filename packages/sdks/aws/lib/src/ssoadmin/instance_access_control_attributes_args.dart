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
  InstanceAccessControlAttributesArgs({
    required pulumi.Output<List<InstanceAccessControlAttributesAttribute>> attributes,
    required pulumi.Output<String> instanceArn,
    pulumi.Output<String>? region,
  }) :
      attributes = pulumi.Input.asInput<List<InstanceAccessControlAttributesAttribute>>(attributes),
      instanceArn = pulumi.Input.asInput<String>(instanceArn),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': pulumi.Input.mapInputValue<List<InstanceAccessControlAttributesAttribute>, List<Map<String, dynamic>>>(attributes, (value) => pulumi.Input.encodeList<InstanceAccessControlAttributesAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceArn': instanceArn,
      'region': ?region,
    };
  }

  factory InstanceAccessControlAttributesArgs.fromMap(Map<String, dynamic> map) {
    return InstanceAccessControlAttributesArgs(
      attributes: pulumi.Output.create<List<InstanceAccessControlAttributesAttribute>>(pulumi.Input.decodeList<InstanceAccessControlAttributesAttribute>(map['attributes'], (value) => InstanceAccessControlAttributesAttribute.fromMap((value as Map).cast<String, dynamic>()))),
      instanceArn: pulumi.Output.create<String>(map['instanceArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

