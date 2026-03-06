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
  const InstanceAccessControlAttributesState({
    this.attributes,
    this.instanceArn,
    this.region,
    this.status,
    this.statusReason,
  });

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
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceAccessControlAttributesAttribute>(guardedValue, (value) => InstanceAccessControlAttributesAttribute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      instanceArn: (() { final guardedValue = map['instanceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusReason: (() { final guardedValue = map['statusReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

