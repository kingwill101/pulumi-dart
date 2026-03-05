// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_deployment_parameter_metadata_response.dart';

/// The API deployment parameters metadata.
class ApiDeploymentParameterMetadataSetResponse {
  /// The package content link parameter.
  final pulumi.Input<ApiDeploymentParameterMetadataResponse>? packageContentLink;
  /// The package content link parameter.
  final pulumi.Input<ApiDeploymentParameterMetadataResponse>? redisCacheConnectionString;

  /// Creates a new [ApiDeploymentParameterMetadataSetResponse].
  /// [packageContentLink] The package content link parameter.
  /// [redisCacheConnectionString] The package content link parameter.
  ApiDeploymentParameterMetadataSetResponse({
    this.packageContentLink,
    this.redisCacheConnectionString,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'packageContentLink': ?pulumi.Input.mapOptionalInputValue<ApiDeploymentParameterMetadataResponse, Map<String, dynamic>>(packageContentLink, (value) => value.toMap()),
      'redisCacheConnectionString': ?pulumi.Input.mapOptionalInputValue<ApiDeploymentParameterMetadataResponse, Map<String, dynamic>>(redisCacheConnectionString, (value) => value.toMap()),
    };
  }

  factory ApiDeploymentParameterMetadataSetResponse.fromMap(Map<String, dynamic> map) {
    return ApiDeploymentParameterMetadataSetResponse(
      packageContentLink: (() { final guardedValue = map['packageContentLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiDeploymentParameterMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      redisCacheConnectionString: (() { final guardedValue = map['redisCacheConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiDeploymentParameterMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

