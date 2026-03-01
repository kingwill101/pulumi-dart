// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_get_api_portal_custom_domain_args_doc}
/// Arguments for getApiPortalCustomDomain.
/// {@endtemplate}
/// {@macro pulumi_appplatform_get_api_portal_custom_domain_args_doc}
class GetApiPortalCustomDomainArgs {
  /// The name of API portal.
  final pulumi.Input<String> apiPortalName;
  /// The name of the API portal custom domain.
  final pulumi.Input<String> domainName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetApiPortalCustomDomainArgs].
  /// [apiPortalName] The name of API portal.
  /// [domainName] The name of the API portal custom domain.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  GetApiPortalCustomDomainArgs({
    required String apiPortalName,
    required String domainName,
    required String resourceGroupName,
    required String serviceName,
  }) :
      apiPortalName = pulumi.Input.asInput<String>(apiPortalName),
      domainName = pulumi.Input.asInput<String>(domainName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiPortalName': apiPortalName,
      'domainName': domainName,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetApiPortalCustomDomainArgs.fromMap(Map<String, dynamic> map) {
    return GetApiPortalCustomDomainArgs(
      apiPortalName: map['apiPortalName'] as String,
      domainName: map['domainName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}

