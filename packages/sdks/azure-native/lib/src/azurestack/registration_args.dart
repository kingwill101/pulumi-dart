// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestack_registration_args_doc}
/// The set of arguments for Registration.
/// {@endtemplate}
/// {@macro pulumi_azurestack_registration_args_doc}
class RegistrationArgs {
  /// Location of the resource.
  final pulumi.Input<String>? location;
  /// Name of the Azure Stack registration.
  final pulumi.Input<String>? registrationName;
  /// The token identifying registered Azure Stack
  final pulumi.Input<String> registrationToken;
  /// Name of the resource group.
  final pulumi.Input<String> resourceGroup;

  /// Creates a new [RegistrationArgs].
  /// [location] Location of the resource.
  /// [registrationName] Name of the Azure Stack registration.
  /// [registrationToken] The token identifying registered Azure Stack
  /// [resourceGroup] Name of the resource group.
  RegistrationArgs({
    this.location,
    this.registrationName,
    required this.registrationToken,
    required this.resourceGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'registrationName': ?registrationName,
      'registrationToken': registrationToken,
      'resourceGroup': resourceGroup,
    };
  }

  factory RegistrationArgs.fromMap(Map<String, dynamic> map) {
    return RegistrationArgs(
      location: map['location'] == null ? null : (map['location'] as String).input(),
      registrationName: map['registrationName'] == null ? null : (map['registrationName'] as String).input(),
      registrationToken: (map['registrationToken'] as String).input(),
      resourceGroup: (map['resourceGroup'] as String).input(),
    );
  }
}

