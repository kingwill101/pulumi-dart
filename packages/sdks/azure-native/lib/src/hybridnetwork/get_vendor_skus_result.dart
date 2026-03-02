// ignore_for_file: unused_element, unnecessary_cast

import 'network_function_template_response.dart';
import 'system_data_response.dart';

/// Result data returned by getVendorSkus.
class GetVendorSkusResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The sku deployment mode.
  final String? deploymentMode;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The parameters for the managed application to be supplied by the vendor.
  final dynamic managedApplicationParameters;
  /// The template for the managed application deployment.
  final dynamic managedApplicationTemplate;
  /// The name of the resource
  final String name;
  /// The template definition of the network function.
  final NetworkFunctionTemplateResponse? networkFunctionTemplate;
  /// The network function type.
  final String? networkFunctionType;
  /// Indicates if the vendor sku is in preview mode.
  final bool? preview;
  /// The provisioning state of the vendor sku sub resource.
  final String provisioningState;
  /// The sku type.
  final String? skuType;
  /// The system meta data relating to this resource.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetVendorSkusResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [deploymentMode] The sku deployment mode.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [managedApplicationParameters] The parameters for the managed application to be supplied by the vendor.
  /// [managedApplicationTemplate] The template for the managed application deployment.
  /// [name] The name of the resource
  /// [networkFunctionTemplate] The template definition of the network function.
  /// [networkFunctionType] The network function type.
  /// [preview] Indicates if the vendor sku is in preview mode.
  /// [provisioningState] The provisioning state of the vendor sku sub resource.
  /// [skuType] The sku type.
  /// [systemData] The system meta data relating to this resource.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetVendorSkusResult({
    required this.azureApiVersion,
    this.deploymentMode,
    required this.id,
    this.managedApplicationParameters,
    this.managedApplicationTemplate,
    required this.name,
    this.networkFunctionTemplate,
    this.networkFunctionType,
    this.preview,
    required this.provisioningState,
    this.skuType,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'deploymentMode': ?deploymentMode,
      'id': id,
      'managedApplicationParameters': ?managedApplicationParameters,
      'managedApplicationTemplate': ?managedApplicationTemplate,
      'name': name,
      'networkFunctionTemplate': ?networkFunctionTemplate == null ? null : networkFunctionTemplate!.toMap(),
      'networkFunctionType': ?networkFunctionType,
      'preview': ?preview,
      'provisioningState': provisioningState,
      'skuType': ?skuType,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetVendorSkusResult.fromMap(Map<String, dynamic> map) {
    return GetVendorSkusResult(
      azureApiVersion: map['azureApiVersion'] as String,
      deploymentMode: map['deploymentMode'] == null ? null : map['deploymentMode']! as String,
      id: map['id'] as String,
      managedApplicationParameters: map['managedApplicationParameters'] == null ? null : map['managedApplicationParameters']!,
      managedApplicationTemplate: map['managedApplicationTemplate'] == null ? null : map['managedApplicationTemplate']!,
      name: map['name'] as String,
      networkFunctionTemplate: map['networkFunctionTemplate'] == null ? null : NetworkFunctionTemplateResponse.fromMap((map['networkFunctionTemplate']! as Map).cast<String, dynamic>()),
      networkFunctionType: map['networkFunctionType'] == null ? null : map['networkFunctionType']! as String,
      preview: map['preview'] == null ? null : map['preview']! as bool,
      provisioningState: map['provisioningState'] as String,
      skuType: map['skuType'] == null ? null : map['skuType']! as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

