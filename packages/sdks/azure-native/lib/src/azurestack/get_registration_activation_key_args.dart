// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestack_get_registration_activation_key_args_doc}
/// Arguments for getRegistrationActivationKey.
/// {@endtemplate}
/// {@macro pulumi_azurestack_get_registration_activation_key_args_doc}
class GetRegistrationActivationKeyArgs {
  /// Name of the Azure Stack registration.
  final pulumi.Input<String> registrationName;
  /// Name of the resource group.
  final pulumi.Input<String> resourceGroup;

  /// Creates a new [GetRegistrationActivationKeyArgs].
  /// [registrationName] Name of the Azure Stack registration.
  /// [resourceGroup] Name of the resource group.
  GetRegistrationActivationKeyArgs({
    required this.registrationName,
    required this.resourceGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'registrationName': registrationName,
      'resourceGroup': resourceGroup,
    };
  }

  factory GetRegistrationActivationKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetRegistrationActivationKeyArgs(
      registrationName: (map['registrationName'] as String).input(),
      resourceGroup: (map['resourceGroup'] as String).input(),
    );
  }
}

