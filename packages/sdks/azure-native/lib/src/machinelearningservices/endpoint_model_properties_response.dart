// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_model_deprecation_properties_response.dart';
import 'endpoint_model_sku_properties_response.dart';
import 'system_data_response.dart';

/// Endpoint Model properties.
class EndpointModelPropertiesResponse {
  /// The capabilities.
  final pulumi.Input<Map<String, String>>? capabilities;
  final pulumi.Input<EndpointModelDeprecationPropertiesResponse>? deprecation;
  /// The capabilities for finetune models.
  final pulumi.Input<Map<String, String>>? finetuneCapabilities;
  /// Deployment model format.
  final pulumi.Input<String>? format;
  /// If the model is default version.
  final pulumi.Input<bool>? isDefaultVersion;
  /// Model lifecycle status.
  final pulumi.Input<String>? lifecycleStatus;
  /// The max capacity.
  final pulumi.Input<int>? maxCapacity;
  /// Deployment model name.
  final pulumi.Input<String>? name;
  /// The list of Model Sku.
  final pulumi.Input<List<EndpointModelSkuPropertiesResponse>>? skus;
  /// Metadata pertaining to creation and last modification of the resource.
  final pulumi.Input<SystemDataResponse> systemData;
  /// Optional. Deployment model version. If version is not specified, a default version will be assigned. The default version is different for different models and might change when there is new version available for a model. Default version for a model could be found from list models API.
  final pulumi.Input<String>? version;

  /// Creates a new [EndpointModelPropertiesResponse].
  /// [capabilities] The capabilities.
  /// [deprecation] Optional.
  /// [finetuneCapabilities] The capabilities for finetune models.
  /// [format] Deployment model format.
  /// [isDefaultVersion] If the model is default version.
  /// [lifecycleStatus] Model lifecycle status.
  /// [maxCapacity] The max capacity.
  /// [name] Deployment model name.
  /// [skus] The list of Model Sku.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [version] Optional. Deployment model version. If version is not specified, a default version will be assigned. The default version is different for different models and might change when there is new version available for a model. Default version for a model could be found from list models API.
  EndpointModelPropertiesResponse({
    this.capabilities,
    this.deprecation,
    this.finetuneCapabilities,
    this.format,
    this.isDefaultVersion,
    this.lifecycleStatus,
    this.maxCapacity,
    this.name,
    this.skus,
    required this.systemData,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilities': ?capabilities,
      'deprecation': ?pulumi.Input.mapOptionalInputValue<EndpointModelDeprecationPropertiesResponse, Map<String, dynamic>>(deprecation, (value) => value.toMap()),
      'finetuneCapabilities': ?finetuneCapabilities,
      'format': ?format,
      'isDefaultVersion': ?isDefaultVersion,
      'lifecycleStatus': ?lifecycleStatus,
      'maxCapacity': ?maxCapacity,
      'name': ?name,
      'skus': ?pulumi.Input.mapOptionalInputValue<List<EndpointModelSkuPropertiesResponse>, List<Map<String, dynamic>>>(skus, (value) => pulumi.Input.encodeList<EndpointModelSkuPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'systemData': pulumi.Input.mapInputValue<SystemDataResponse, Map<String, dynamic>>(systemData, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory EndpointModelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EndpointModelPropertiesResponse(
      capabilities: map['capabilities'] == null ? null : ((map['capabilities']! as Map).cast<String, String>()).input(),
      deprecation: map['deprecation'] == null ? null : (EndpointModelDeprecationPropertiesResponse.fromMap((map['deprecation']! as Map).cast<String, dynamic>())).input(),
      finetuneCapabilities: map['finetuneCapabilities'] == null ? null : ((map['finetuneCapabilities']! as Map).cast<String, String>()).input(),
      format: map['format'] == null ? null : (map['format']! as String).input(),
      isDefaultVersion: map['isDefaultVersion'] == null ? null : (map['isDefaultVersion']! as bool).input(),
      lifecycleStatus: map['lifecycleStatus'] == null ? null : (map['lifecycleStatus']! as String).input(),
      maxCapacity: map['maxCapacity'] == null ? null : (map['maxCapacity']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      skus: map['skus'] == null ? null : (pulumi.Input.decodeList<EndpointModelSkuPropertiesResponse>(map['skus']!, (value) => EndpointModelSkuPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      systemData: (SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>())).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

