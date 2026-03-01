// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connect_phone_number_contact_flow_association_phone_number_contact_flow_association_args_doc}
/// The set of arguments for PhoneNumberContactFlowAssociation.
/// {@endtemplate}
/// {@macro pulumi_connect_phone_number_contact_flow_association_phone_number_contact_flow_association_args_doc}
class PhoneNumberContactFlowAssociationArgs {
  /// Contact flow ID.
  final pulumi.Input<String> contactFlowId;

  /// Amazon Connect instance ID.
  final pulumi.Input<String> instanceId;

  /// Phone number ID.
  final pulumi.Input<String> phoneNumberId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [PhoneNumberContactFlowAssociationArgs].
  /// [contactFlowId] Contact flow ID.
  /// [instanceId] Amazon Connect instance ID.
  /// [phoneNumberId] Phone number ID.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  PhoneNumberContactFlowAssociationArgs({
    required String contactFlowId,
    required String instanceId,
    required String phoneNumberId,
    String? region,
  }) : contactFlowId = pulumi.Input.asInput<String>(contactFlowId),
       instanceId = pulumi.Input.asInput<String>(instanceId),
       phoneNumberId = pulumi.Input.asInput<String>(phoneNumberId),
       region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactFlowId': contactFlowId,
      'instanceId': instanceId,
      'phoneNumberId': phoneNumberId,
      'region': ?region,
    };
  }

  factory PhoneNumberContactFlowAssociationArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return PhoneNumberContactFlowAssociationArgs(
      contactFlowId: map['contactFlowId'] as String,
      instanceId: map['instanceId'] as String,
      phoneNumberId: map['phoneNumberId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
