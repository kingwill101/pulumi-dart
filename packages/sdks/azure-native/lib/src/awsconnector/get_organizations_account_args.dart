// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_organizations_account_args_doc}
/// Arguments for getOrganizationsAccount.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_organizations_account_args_doc}
class GetOrganizationsAccountArgs {
  /// Name of OrganizationsAccount
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetOrganizationsAccountArgs].
  /// [name] Name of OrganizationsAccount
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetOrganizationsAccountArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetOrganizationsAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationsAccountArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

