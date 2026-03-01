// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_application_security_group_get_application_security_group_args_doc}
/// Arguments for getApplicationSecurityGroup.
/// {@endtemplate}
/// {@macro pulumi_network_get_application_security_group_get_application_security_group_args_doc}
class GetApplicationSecurityGroupArgs {
  /// The name of the Application Security Group.
  final pulumi.Input<String> name;
  /// The name of the resource group in which the Application Security Group exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetApplicationSecurityGroupArgs].
  /// [name] The name of the Application Security Group.
  /// [resourceGroupName] The name of the resource group in which the Application Security Group exists.
  GetApplicationSecurityGroupArgs({
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

  factory GetApplicationSecurityGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationSecurityGroupArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

