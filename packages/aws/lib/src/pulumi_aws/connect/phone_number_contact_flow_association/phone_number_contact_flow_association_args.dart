// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for PhoneNumberContactFlowAssociation.
class PhoneNumberContactFlowAssociationArgs {
  /// Contact flow ID.
  final Input<String> contactFlowId;

  /// Amazon Connect instance ID.
  final Input<String> instanceId;

  /// Phone number ID.
  final Input<String> phoneNumberId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  PhoneNumberContactFlowAssociationArgs({
    required this.contactFlowId,
    required this.instanceId,
    required this.phoneNumberId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contactFlowId'] = contactFlowId;
    map['instanceId'] = instanceId;
    map['phoneNumberId'] = phoneNumberId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory PhoneNumberContactFlowAssociationArgs.fromMap(
      Map<String, dynamic> map) {
    return PhoneNumberContactFlowAssociationArgs(
      contactFlowId: Input.asInput<String>(map['contactFlowId']),
      instanceId: Input.asInput<String>(map['instanceId']),
      phoneNumberId: Input.asInput<String>(map['phoneNumberId']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
