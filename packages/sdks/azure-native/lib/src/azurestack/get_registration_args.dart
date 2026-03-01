// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestack_get_registration_args_doc}
/// Arguments for getRegistration.
/// {@endtemplate}
/// {@macro pulumi_azurestack_get_registration_args_doc}
class GetRegistrationArgs {
  /// Name of the Azure Stack registration.
  final pulumi.Input<String> registrationName;
  /// Name of the resource group.
  final pulumi.Input<String> resourceGroup;

  /// Creates a new [GetRegistrationArgs].
  /// [registrationName] Name of the Azure Stack registration.
  /// [resourceGroup] Name of the resource group.
  GetRegistrationArgs({
    required pulumi.Output<String> registrationName,
    required pulumi.Output<String> resourceGroup,
  }) :
      registrationName = pulumi.Input.asInput<String>(registrationName),
      resourceGroup = pulumi.Input.asInput<String>(resourceGroup);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'registrationName': registrationName,
      'resourceGroup': resourceGroup,
    };
  }

  factory GetRegistrationArgs.fromMap(Map<String, dynamic> map) {
    return GetRegistrationArgs(
      registrationName: pulumi.Output.create<String>(map['registrationName'] as String),
      resourceGroup: pulumi.Output.create<String>(map['resourceGroup'] as String),
    );
  }
}

