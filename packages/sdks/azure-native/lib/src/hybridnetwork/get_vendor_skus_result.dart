// ignore_for_file: unused_element, unnecessary_cast

import 'network_function_template_response.dart';
import 'system_data_response.dart';

/// Result data returned by getVendorSkus.
class GetVendorSkusResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The sku deployment mode.
  final String? deploymentMode;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The parameters for the managed application to be supplied by the vendor.
  final dynamic managedApplicationParameters;
  /// The template for the managed application deployment.
  final dynamic managedApplicationTemplate;
  /// The name of the resource
  final String? name;
  /// The template definition of the network function.
  final NetworkFunctionTemplateResponse? networkFunctionTemplate;
  /// The network function type.
  final String? networkFunctionType;
  /// Indicates if the vendor sku is in preview mode.
  final bool? preview;
  /// The provisioning state of the vendor sku sub resource.
  final String? provisioningState;
  /// The sku type.
  final String? skuType;
  /// The system meta data relating to this resource.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
  const GetVendorSkusResult({
    this.azureApiVersion,
    this.deploymentMode,
    this.id,
    this.managedApplicationParameters,
    this.managedApplicationTemplate,
    this.name,
    this.networkFunctionTemplate,
    this.networkFunctionType,
    this.preview,
    this.provisioningState,
    this.skuType,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'deploymentMode': ?deploymentMode,
      'id': ?id,
      'managedApplicationParameters': ?managedApplicationParameters,
      'managedApplicationTemplate': ?managedApplicationTemplate,
      'name': ?name,
      'networkFunctionTemplate': ?networkFunctionTemplate?.toMap(),
      'networkFunctionType': ?networkFunctionType,
      'preview': ?preview,
      'provisioningState': ?provisioningState,
      'skuType': ?skuType,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetVendorSkusResult.fromMap(Map<String, dynamic> map) {
    return GetVendorSkusResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deploymentMode: (() { final guardedValue = map['deploymentMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedApplicationParameters: (() { final guardedValue = map['managedApplicationParameters']; if (guardedValue == null) return null; return guardedValue; })(),
      managedApplicationTemplate: (() { final guardedValue = map['managedApplicationTemplate']; if (guardedValue == null) return null; return guardedValue; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkFunctionTemplate: (() { final guardedValue = map['networkFunctionTemplate']; if (guardedValue == null) return null; return NetworkFunctionTemplateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      networkFunctionType: (() { final guardedValue = map['networkFunctionType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      preview: (() { final guardedValue = map['preview']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      skuType: (() { final guardedValue = map['skuType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
