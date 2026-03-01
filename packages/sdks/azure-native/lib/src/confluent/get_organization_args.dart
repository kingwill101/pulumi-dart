// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_confluent_get_organization_args_doc}
/// Arguments for getOrganization.
/// {@endtemplate}
/// {@macro pulumi_confluent_get_organization_args_doc}
class GetOrganizationArgs {
  /// Organization resource name
  final pulumi.Input<String> organizationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetOrganizationArgs].
  /// [organizationName] Organization resource name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetOrganizationArgs({
    required pulumi.Output<String> organizationName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      organizationName = pulumi.Input.asInput<String>(organizationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organizationName': organizationName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetOrganizationArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationArgs(
      organizationName: pulumi.Output.create<String>(map['organizationName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

