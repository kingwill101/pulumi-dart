// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_portal_properties.dart';
import 'sku.dart';

/// {@template pulumi_appplatform_api_portal_args_doc}
/// The set of arguments for ApiPortal.
/// {@endtemplate}
/// {@macro pulumi_appplatform_api_portal_args_doc}
class ApiPortalArgs {
  /// The name of API portal.
  final pulumi.Input<String>? apiPortalName;
  /// API portal properties payload
  final pulumi.Input<ApiPortalProperties>? properties;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;
  /// Sku of the API portal resource
  final pulumi.Input<Sku>? sku;

  /// Creates a new [ApiPortalArgs].
  /// [apiPortalName] The name of API portal.
  /// [properties] API portal properties payload
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  /// [sku] Sku of the API portal resource
  ApiPortalArgs({
    this.apiPortalName,
    this.properties,
    required this.resourceGroupName,
    required this.serviceName,
    this.sku,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiPortalName': ?apiPortalName,
      'properties': ?pulumi.Input.mapOptionalInputValue<ApiPortalProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
    };
  }

  factory ApiPortalArgs.fromMap(Map<String, dynamic> map) {
    return ApiPortalArgs(
      apiPortalName: map['apiPortalName'] == null ? null : (map['apiPortalName']! as String).input(),
      properties: map['properties'] == null ? null : (ApiPortalProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
      sku: map['sku'] == null ? null : (Sku.fromMap((map['sku']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

