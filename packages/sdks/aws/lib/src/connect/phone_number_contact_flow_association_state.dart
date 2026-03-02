// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PhoneNumberContactFlowAssociation resources.
class PhoneNumberContactFlowAssociationState {
  /// Contact flow ID.
  final pulumi.Input<String>? contactFlowId;
  /// Amazon Connect instance ID.
  final pulumi.Input<String>? instanceId;
  /// Phone number ID.
  final pulumi.Input<String>? phoneNumberId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [PhoneNumberContactFlowAssociationState].
  /// [contactFlowId] Contact flow ID.
  /// [instanceId] Amazon Connect instance ID.
  /// [phoneNumberId] Phone number ID.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  PhoneNumberContactFlowAssociationState({
    this.contactFlowId,
    this.instanceId,
    this.phoneNumberId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactFlowId': ?contactFlowId,
      'instanceId': ?instanceId,
      'phoneNumberId': ?phoneNumberId,
      'region': ?region,
    };
  }

  factory PhoneNumberContactFlowAssociationState.fromMap(Map<String, dynamic> map) {
    return PhoneNumberContactFlowAssociationState(
      contactFlowId: map['contactFlowId'] == null ? null : (map['contactFlowId'] as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      phoneNumberId: map['phoneNumberId'] == null ? null : (map['phoneNumberId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

