// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_environment_infrastructure_spec_compute_resources_response.dart';
import 'google_cloud_dataplex_v1_environment_infrastructure_spec_os_image_runtime_response.dart';

/// Configuration for the underlying infrastructure used to run workloads.
class GoogleCloudDataplexV1EnvironmentInfrastructureSpecResponse {
  /// Optional. Compute resources needed for analyze interactive workloads.
  final GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResourcesResponse
  compute;

  /// Software Runtime Configuration for analyze interactive workloads.
  final GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntimeResponse
  osImage;

  /// Creates a new [GoogleCloudDataplexV1EnvironmentInfrastructureSpecResponse].
  /// [compute] Optional. Compute resources needed for analyze interactive workloads.
  /// [osImage] Software Runtime Configuration for analyze interactive workloads.
  GoogleCloudDataplexV1EnvironmentInfrastructureSpecResponse({
    required this.compute,
    required this.osImage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compute': compute.toMap(),
      'osImage': osImage.toMap(),
    };
  }

  factory GoogleCloudDataplexV1EnvironmentInfrastructureSpecResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDataplexV1EnvironmentInfrastructureSpecResponse(
      compute:
          GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResourcesResponse.fromMap(
            (map['compute'] as Map).cast<String, dynamic>(),
          ),
      osImage:
          GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntimeResponse.fromMap(
            (map['osImage'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
