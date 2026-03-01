// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_application_security_group_args_doc}
/// Arguments for getApplicationSecurityGroup.
/// {@endtemplate}
/// {@macro pulumi_network_get_application_security_group_args_doc}
class GetApplicationSecurityGroupArgs {
  /// The name of the application security group.
  final pulumi.Input<String> applicationSecurityGroupName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetApplicationSecurityGroupArgs].
  /// [applicationSecurityGroupName] The name of the application security group.
  /// [resourceGroupName] The name of the resource group.
  GetApplicationSecurityGroupArgs({
    required String applicationSecurityGroupName,
    required String resourceGroupName,
  }) :
      applicationSecurityGroupName = pulumi.Input.asInput<String>(applicationSecurityGroupName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationSecurityGroupName': applicationSecurityGroupName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetApplicationSecurityGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationSecurityGroupArgs(
      applicationSecurityGroupName: map['applicationSecurityGroupName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

