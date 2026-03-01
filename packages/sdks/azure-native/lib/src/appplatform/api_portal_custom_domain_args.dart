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
  ApiPortalCustomDomainArgs({
    required pulumi.Output<String> apiPortalName,
    pulumi.Output<String>? domainName,
    pulumi.Output<ApiPortalCustomDomainProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      apiPortalName = pulumi.Input.asInput<String>(apiPortalName),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      properties = pulumi.Input.asOptionalInput<ApiPortalCustomDomainProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

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
      apiPortalName: pulumi.Output.create<String>(map['apiPortalName'] as String),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<ApiPortalCustomDomainProperties>(ApiPortalCustomDomainProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

