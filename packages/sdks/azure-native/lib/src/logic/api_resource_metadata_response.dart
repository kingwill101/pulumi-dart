// ignore_for_file: unused_element, unnecessary_cast

import 'api_deployment_parameter_metadata_set_response.dart';
import 'wsdl_service_response.dart';

/// The api resource metadata.
class ApiResourceMetadataResponse {
  /// The api type.
  final String? apiType;
  /// The brand color.
  final String? brandColor;
  /// The connection type.
  final String? connectionType;
  /// The connector deployment parameters metadata.
  final ApiDeploymentParameterMetadataSetResponse? deploymentParameters;
  /// The hide key.
  final String? hideKey;
  /// The provisioning state.
  final String? provisioningState;
  /// The source.
  final String? source;
  /// The tags.
  final Map<String, String>? tags;
  /// The WSDL import method.
  final String? wsdlImportMethod;
  /// The WSDL service.
  final WsdlServiceResponse? wsdlService;

  /// Creates a new [ApiResourceMetadataResponse].
  /// [apiType] The api type.
  /// [brandColor] The brand color.
  /// [connectionType] The connection type.
  /// [deploymentParameters] The connector deployment parameters metadata.
  /// [hideKey] The hide key.
  /// [provisioningState] The provisioning state.
  /// [source] The source.
  /// [tags] The tags.
  /// [wsdlImportMethod] The WSDL import method.
  /// [wsdlService] The WSDL service.
  ApiResourceMetadataResponse({
    this.apiType,
    this.brandColor,
    this.connectionType,
    this.deploymentParameters,
    this.hideKey,
    this.provisioningState,
    this.source,
    this.tags,
    this.wsdlImportMethod,
    this.wsdlService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiType': ?apiType,
      'brandColor': ?brandColor,
      'connectionType': ?connectionType,
      'deploymentParameters': ?deploymentParameters == null ? null : deploymentParameters!.toMap(),
      'hideKey': ?hideKey,
      'provisioningState': ?provisioningState,
      'source': ?source,
      'tags': ?tags,
      'wsdlImportMethod': ?wsdlImportMethod,
      'wsdlService': ?wsdlService == null ? null : wsdlService!.toMap(),
    };
  }

  factory ApiResourceMetadataResponse.fromMap(Map<String, dynamic> map) {
    return ApiResourceMetadataResponse(
      apiType: map['apiType'] == null ? null : map['apiType'] as String,
      brandColor: map['brandColor'] == null ? null : map['brandColor'] as String,
      connectionType: map['connectionType'] == null ? null : map['connectionType'] as String,
      deploymentParameters: map['deploymentParameters'] == null ? null : ApiDeploymentParameterMetadataSetResponse.fromMap((map['deploymentParameters'] as Map).cast<String, dynamic>()),
      hideKey: map['hideKey'] == null ? null : map['hideKey'] as String,
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      source: map['source'] == null ? null : map['source'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      wsdlImportMethod: map['wsdlImportMethod'] == null ? null : map['wsdlImportMethod'] as String,
      wsdlService: map['wsdlService'] == null ? null : WsdlServiceResponse.fromMap((map['wsdlService'] as Map).cast<String, dynamic>()),
    );
  }
}

