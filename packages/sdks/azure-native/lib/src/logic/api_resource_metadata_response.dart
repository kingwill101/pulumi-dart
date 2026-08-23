// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_deployment_parameter_metadata_set_response.dart';
import 'wsdl_service_response.dart';

/// The api resource metadata.
class ApiResourceMetadataResponse {
  /// The api type.
  final pulumi.Input<String>? apiType;
  /// The brand color.
  final pulumi.Input<String>? brandColor;
  /// The connection type.
  final pulumi.Input<String>? connectionType;
  /// The connector deployment parameters metadata.
  final pulumi.Input<ApiDeploymentParameterMetadataSetResponse>? deploymentParameters;
  /// The hide key.
  final pulumi.Input<String>? hideKey;
  /// The provisioning state.
  final pulumi.Input<String>? provisioningState;
  /// The source.
  final pulumi.Input<String>? source;
  /// The tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The WSDL import method.
  final pulumi.Input<String>? wsdlImportMethod;
  /// The WSDL service.
  final pulumi.Input<WsdlServiceResponse>? wsdlService;

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
  const ApiResourceMetadataResponse({
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
      'deploymentParameters': ?pulumi.Input.mapOptionalInputValue<ApiDeploymentParameterMetadataSetResponse, Map<String, dynamic>>(deploymentParameters, (value) => value.toMap()),
      'hideKey': ?hideKey,
      'provisioningState': ?provisioningState,
      'source': ?source,
      'tags': ?tags,
      'wsdlImportMethod': ?wsdlImportMethod,
      'wsdlService': ?pulumi.Input.mapOptionalInputValue<WsdlServiceResponse, Map<String, dynamic>>(wsdlService, (value) => value.toMap()),
    };
  }

  factory ApiResourceMetadataResponse.fromMap(Map<String, dynamic> map) {
    return ApiResourceMetadataResponse(
      apiType: (() { final guardedValue = map['apiType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      brandColor: (() { final guardedValue = map['brandColor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionType: (() { final guardedValue = map['connectionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentParameters: (() { final guardedValue = map['deploymentParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiDeploymentParameterMetadataSetResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hideKey: (() { final guardedValue = map['hideKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      wsdlImportMethod: (() { final guardedValue = map['wsdlImportMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      wsdlService: (() { final guardedValue = map['wsdlService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WsdlServiceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
