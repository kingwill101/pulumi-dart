// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azureactivedirectory_get_guest_usage_args_doc}
/// Arguments for getGuestUsage.
/// {@endtemplate}
/// {@macro pulumi_azureactivedirectory_get_guest_usage_args_doc}
class GetGuestUsageArgs {
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The initial domain name of the Azure AD B2C tenant.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetGuestUsageArgs].
  /// [resourceGroupName] The name of the resource group.
  /// [resourceName] The initial domain name of the Azure AD B2C tenant.
  GetGuestUsageArgs({
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetGuestUsageArgs.fromMap(Map<String, dynamic> map) {
    return GetGuestUsageArgs(
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceName: (map['resourceName'] as String).input(),
    );
  }
}

