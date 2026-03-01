// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_task_infrastructure_spec_batch_compute_resources_response.dart';
import 'google_cloud_dataplex_v1_task_infrastructure_spec_container_image_runtime_response.dart';
import 'google_cloud_dataplex_v1_task_infrastructure_spec_vpc_network_response.dart';

/// Configuration for the underlying infrastructure used to run workloads.
class GoogleCloudDataplexV1TaskInfrastructureSpecResponse {
  /// Compute resources needed for a Task when using Dataproc Serverless.
  final GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResourcesResponse
  batch;

  /// Container Image Runtime Configuration.
  final GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntimeResponse
  containerImage;

  /// Vpc network.
  final GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetworkResponse
  vpcNetwork;

  /// Creates a new [GoogleCloudDataplexV1TaskInfrastructureSpecResponse].
  /// [batch] Compute resources needed for a Task when using Dataproc Serverless.
  /// [containerImage] Container Image Runtime Configuration.
  /// [vpcNetwork] Vpc network.
  GoogleCloudDataplexV1TaskInfrastructureSpecResponse({
    required this.batch,
    required this.containerImage,
    required this.vpcNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batch': batch.toMap(),
      'containerImage': containerImage.toMap(),
      'vpcNetwork': vpcNetwork.toMap(),
    };
  }

  factory GoogleCloudDataplexV1TaskInfrastructureSpecResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDataplexV1TaskInfrastructureSpecResponse(
      batch:
          GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResourcesResponse.fromMap(
            (map['batch'] as Map).cast<String, dynamic>(),
          ),
      containerImage:
          GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntimeResponse.fromMap(
            (map['containerImage'] as Map).cast<String, dynamic>(),
          ),
      vpcNetwork:
          GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetworkResponse.fromMap(
            (map['vpcNetwork'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
