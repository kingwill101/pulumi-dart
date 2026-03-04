// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_m365securityandcompliance_get_private_link_services_for_o365_management_activity_apiargs_doc}
/// Arguments for getPrivateLinkServicesForO365ManagementActivityAPI.
/// {@endtemplate}
/// {@macro pulumi_m365securityandcompliance_get_private_link_services_for_o365_management_activity_apiargs_doc}
class GetPrivateLinkServicesForO365ManagementActivityAPIArgs {
  /// The name of the resource group that contains the service instance.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the service instance.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetPrivateLinkServicesForO365ManagementActivityAPIArgs].
  /// [resourceGroupName] The name of the resource group that contains the service instance.
  /// [resourceName] The name of the service instance.
  GetPrivateLinkServicesForO365ManagementActivityAPIArgs({
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetPrivateLinkServicesForO365ManagementActivityAPIArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetPrivateLinkServicesForO365ManagementActivityAPIArgs(
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}
