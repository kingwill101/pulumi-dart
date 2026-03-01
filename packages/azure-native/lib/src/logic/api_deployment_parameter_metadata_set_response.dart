// ignore_for_file: unused_element, unnecessary_cast

import 'api_deployment_parameter_metadata_response.dart';

/// The API deployment parameters metadata.
class ApiDeploymentParameterMetadataSetResponse {
  /// The package content link parameter.
  final ApiDeploymentParameterMetadataResponse? packageContentLink;
  /// The package content link parameter.
  final ApiDeploymentParameterMetadataResponse? redisCacheConnectionString;

  /// Creates a new [ApiDeploymentParameterMetadataSetResponse].
  /// [packageContentLink] The package content link parameter.
  /// [redisCacheConnectionString] The package content link parameter.
  ApiDeploymentParameterMetadataSetResponse({
    this.packageContentLink,
    this.redisCacheConnectionString,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'packageContentLink': ?packageContentLink == null ? null : packageContentLink!.toMap(),
      'redisCacheConnectionString': ?redisCacheConnectionString == null ? null : redisCacheConnectionString!.toMap(),
    };
  }

  factory ApiDeploymentParameterMetadataSetResponse.fromMap(Map<String, dynamic> map) {
    return ApiDeploymentParameterMetadataSetResponse(
      packageContentLink: map['packageContentLink'] == null ? null : ApiDeploymentParameterMetadataResponse.fromMap((map['packageContentLink'] as Map).cast<String, dynamic>()),
      redisCacheConnectionString: map['redisCacheConnectionString'] == null ? null : ApiDeploymentParameterMetadataResponse.fromMap((map['redisCacheConnectionString'] as Map).cast<String, dynamic>()),
    );
  }
}

