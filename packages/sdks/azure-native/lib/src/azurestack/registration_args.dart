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
    pulumi.Output<String>? location,
    pulumi.Output<String>? registrationName,
    required pulumi.Output<String> registrationToken,
    required pulumi.Output<String> resourceGroup,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      registrationName = pulumi.Input.asOptionalInput<String>(registrationName),
      registrationToken = pulumi.Input.asInput<String>(registrationToken),
      resourceGroup = pulumi.Input.asInput<String>(resourceGroup);

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
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      registrationName: map['registrationName'] == null ? null : pulumi.Output.create<String>(map['registrationName'] as String),
      registrationToken: pulumi.Output.create<String>(map['registrationToken'] as String),
      resourceGroup: pulumi.Output.create<String>(map['resourceGroup'] as String),
    );
  }
}

