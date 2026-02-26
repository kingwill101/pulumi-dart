// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_environment_infrastructure_spec_compute_resources.dart';
import 'google_cloud_dataplex_v1_environment_infrastructure_spec_os_image_runtime.dart';

/// Configuration for the underlying infrastructure used to run workloads.
class GoogleCloudDataplexV1EnvironmentInfrastructureSpec {
  /// Optional. Compute resources needed for analyze interactive workloads.
  final GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources?
      compute;

  /// Software Runtime Configuration for analyze interactive workloads.
  final GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime
      osImage;

  GoogleCloudDataplexV1EnvironmentInfrastructureSpec({
    this.compute,
    required this.osImage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final computeValue = compute;
    if (computeValue != null) {
      map['compute'] = computeValue.toMap();
    }
    map['osImage'] = osImage.toMap();
    return map;
  }

  factory GoogleCloudDataplexV1EnvironmentInfrastructureSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1EnvironmentInfrastructureSpec(
      compute: map['compute'] == null
          ? null
          : GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources
              .fromMap((map['compute'] as Map).cast<String, dynamic>()),
      osImage: GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime
          .fromMap((map['osImage'] as Map).cast<String, dynamic>()),
    );
  }
}
