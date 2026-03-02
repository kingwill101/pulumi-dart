// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_app_get_managed_environment_args_doc}
/// Arguments for getManagedEnvironment.
/// {@endtemplate}
/// {@macro pulumi_app_get_managed_environment_args_doc}
class GetManagedEnvironmentArgs {
  /// Name of the Environment.
  final pulumi.Input<String> environmentName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetManagedEnvironmentArgs].
  /// [environmentName] Name of the Environment.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetManagedEnvironmentArgs({
    required this.environmentName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentName': environmentName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetManagedEnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedEnvironmentArgs(
      environmentName: (map['environmentName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

