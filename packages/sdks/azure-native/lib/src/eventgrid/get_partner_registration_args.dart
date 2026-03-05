// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_get_partner_registration_args_doc}
/// Arguments for getPartnerRegistration.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_get_partner_registration_args_doc}
class GetPartnerRegistrationArgs {
  /// Name of the partner registration.
  final pulumi.Input<String> partnerRegistrationName;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPartnerRegistrationArgs].
  /// [partnerRegistrationName] Name of the partner registration.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  GetPartnerRegistrationArgs({
    required this.partnerRegistrationName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partnerRegistrationName': partnerRegistrationName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPartnerRegistrationArgs.fromMap(Map<String, dynamic> map) {
    return GetPartnerRegistrationArgs(
      partnerRegistrationName: pulumi.Input.fromValue(map['partnerRegistrationName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

