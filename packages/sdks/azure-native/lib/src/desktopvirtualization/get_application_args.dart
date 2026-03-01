// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_desktopvirtualization_get_application_args_doc}
/// Arguments for getApplication.
/// {@endtemplate}
/// {@macro pulumi_desktopvirtualization_get_application_args_doc}
class GetApplicationArgs {
  /// The name of the application group
  final pulumi.Input<String> applicationGroupName;
  /// The name of the application within the specified application group
  final pulumi.Input<String> applicationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetApplicationArgs].
  /// [applicationGroupName] The name of the application group
  /// [applicationName] The name of the application within the specified application group
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetApplicationArgs({
    required pulumi.Output<String> applicationGroupName,
    required pulumi.Output<String> applicationName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      applicationGroupName = pulumi.Input.asInput<String>(applicationGroupName),
      applicationName = pulumi.Input.asInput<String>(applicationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationGroupName': applicationGroupName,
      'applicationName': applicationName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetApplicationArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationArgs(
      applicationGroupName: pulumi.Output.create<String>(map['applicationGroupName'] as String),
      applicationName: pulumi.Output.create<String>(map['applicationName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

