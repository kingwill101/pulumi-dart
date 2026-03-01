// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_access_control_attributes_attribute.dart';

/// Input properties used for looking up and filtering InstanceAccessControlAttributes resources.
class InstanceAccessControlAttributesState {
  /// See AccessControlAttribute for more details.
  final pulumi.Input<List<InstanceAccessControlAttributesAttribute>>? attributes;
  /// The Amazon Resource Name (ARN) of the SSO Instance.
  final pulumi.Input<String>? instanceArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<String>? status;
  final pulumi.Input<String>? statusReason;

  /// Creates a new [InstanceAccessControlAttributesState].
  /// [attributes] See AccessControlAttribute for more details.
  /// [instanceArn] The Amazon Resource Name (ARN) of the SSO Instance.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Optional.
  /// [statusReason] Optional.
  InstanceAccessControlAttributesState({
    pulumi.Output<List<InstanceAccessControlAttributesAttribute>>? attributes,
    pulumi.Output<String>? instanceArn,
    pulumi.Output<String>? region,
    pulumi.Output<String>? status,
    pulumi.Output<String>? statusReason,
  }) :
      attributes = pulumi.Input.asOptionalInput<List<InstanceAccessControlAttributesAttribute>>(attributes),
      instanceArn = pulumi.Input.asOptionalInput<String>(instanceArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      status = pulumi.Input.asOptionalInput<String>(status),
      statusReason = pulumi.Input.asOptionalInput<String>(statusReason);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?pulumi.Input.mapOptionalInputValue<List<InstanceAccessControlAttributesAttribute>, List<Map<String, dynamic>>>(attributes, (value) => pulumi.Input.encodeList<InstanceAccessControlAttributesAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceArn': ?instanceArn,
      'region': ?region,
      'status': ?status,
      'statusReason': ?statusReason,
    };
  }

  factory InstanceAccessControlAttributesState.fromMap(Map<String, dynamic> map) {
    return InstanceAccessControlAttributesState(
      attributes: map['attributes'] == null ? null : pulumi.Output.create<List<InstanceAccessControlAttributesAttribute>>(pulumi.Input.decodeList<InstanceAccessControlAttributesAttribute>(map['attributes'], (value) => InstanceAccessControlAttributesAttribute.fromMap((value as Map).cast<String, dynamic>()))),
      instanceArn: map['instanceArn'] == null ? null : pulumi.Output.create<String>(map['instanceArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      statusReason: map['statusReason'] == null ? null : pulumi.Output.create<String>(map['statusReason'] as String),
    );
  }
}

