// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_get_partner_registration_get_partner_registration_args_doc}
/// Arguments for getPartnerRegistration.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_get_partner_registration_get_partner_registration_args_doc}
class GetPartnerRegistrationArgs {
  /// The name of the EventGrid Partner Registration resource.
  final pulumi.Input<String> name;
  /// The name of the resource group in which the EventGrid Partner Registration exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPartnerRegistrationArgs].
  /// [name] The name of the EventGrid Partner Registration resource.
  /// [resourceGroupName] The name of the resource group in which the EventGrid Partner Registration exists.
  GetPartnerRegistrationArgs({
    required String name,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPartnerRegistrationArgs.fromMap(Map<String, dynamic> map) {
    return GetPartnerRegistrationArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

