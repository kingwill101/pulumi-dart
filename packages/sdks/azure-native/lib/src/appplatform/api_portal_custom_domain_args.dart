// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_portal_custom_domain_properties.dart';

/// {@template pulumi_appplatform_api_portal_custom_domain_args_doc}
/// The set of arguments for ApiPortalCustomDomain.
/// {@endtemplate}
/// {@macro pulumi_appplatform_api_portal_custom_domain_args_doc}
class ApiPortalCustomDomainArgs {
  /// The name of API portal.
  final pulumi.Input<String> apiPortalName;
  /// The name of the API portal custom domain.
  final pulumi.Input<String>? domainName;
  /// The properties of custom domain for API portal
  final pulumi.Input<ApiPortalCustomDomainProperties>? properties;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [ApiPortalCustomDomainArgs].
  /// [apiPortalName] The name of API portal.
  /// [domainName] The name of the API portal custom domain.
  /// [properties] The properties of custom domain for API portal
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  const ApiPortalCustomDomainArgs({
    required this.apiPortalName,
    this.domainName,
    this.properties,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiPortalName': apiPortalName,
      'domainName': ?domainName,
      'properties': ?pulumi.Input.mapOptionalInputValue<ApiPortalCustomDomainProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory ApiPortalCustomDomainArgs.fromMap(Map<String, dynamic> map) {
    return ApiPortalCustomDomainArgs(
      apiPortalName: pulumi.Input.fromValue(map['apiPortalName'] as String),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiPortalCustomDomainProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}

