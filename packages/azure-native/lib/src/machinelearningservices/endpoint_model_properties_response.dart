// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_model_deprecation_properties_response.dart';
import 'endpoint_model_sku_properties_response.dart';
import 'system_data_response.dart';

/// Endpoint Model properties.
class EndpointModelPropertiesResponse {
  /// The capabilities.
  final Map<String, String>? capabilities;
  final EndpointModelDeprecationPropertiesResponse? deprecation;
  /// The capabilities for finetune models.
  final Map<String, String>? finetuneCapabilities;
  /// Deployment model format.
  final String? format;
  /// If the model is default version.
  final bool? isDefaultVersion;
  /// Model lifecycle status.
  final String? lifecycleStatus;
  /// The max capacity.
  final int? maxCapacity;
  /// Deployment model name.
  final String? name;
  /// The list of Model Sku.
  final List<EndpointModelSkuPropertiesResponse>? skus;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// Optional. Deployment model version. If version is not specified, a default version will be assigned. The default version is different for different models and might change when there is new version available for a model. Default version for a model could be found from list models API.
  final String? version;

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
      'deprecation': ?deprecation == null ? null : deprecation!.toMap(),
      'finetuneCapabilities': ?finetuneCapabilities,
      'format': ?format,
      'isDefaultVersion': ?isDefaultVersion,
      'lifecycleStatus': ?lifecycleStatus,
      'maxCapacity': ?maxCapacity,
      'name': ?name,
      'skus': ?skus == null ? null : pulumi.Input.encodeList<EndpointModelSkuPropertiesResponse, Map<String, dynamic>>(skus!, (value) => value.toMap()),
      'systemData': systemData.toMap(),
      'version': ?version,
    };
  }

  factory EndpointModelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EndpointModelPropertiesResponse(
      capabilities: map['capabilities'] == null ? null : (map['capabilities'] as Map).cast<String, String>(),
      deprecation: map['deprecation'] == null ? null : EndpointModelDeprecationPropertiesResponse.fromMap((map['deprecation'] as Map).cast<String, dynamic>()),
      finetuneCapabilities: map['finetuneCapabilities'] == null ? null : (map['finetuneCapabilities'] as Map).cast<String, String>(),
      format: map['format'] == null ? null : map['format'] as String,
      isDefaultVersion: map['isDefaultVersion'] == null ? null : map['isDefaultVersion'] as bool,
      lifecycleStatus: map['lifecycleStatus'] == null ? null : map['lifecycleStatus'] as String,
      maxCapacity: map['maxCapacity'] == null ? null : map['maxCapacity'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      skus: map['skus'] == null ? null : pulumi.Input.decodeList<EndpointModelSkuPropertiesResponse>(map['skus'], (value) => EndpointModelSkuPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

