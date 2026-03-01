// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_task_infrastructure_spec_batch_compute_resources.dart';
import 'google_cloud_dataplex_v1_task_infrastructure_spec_container_image_runtime.dart';
import 'google_cloud_dataplex_v1_task_infrastructure_spec_vpc_network.dart';

/// Configuration for the underlying infrastructure used to run workloads.
class GoogleCloudDataplexV1TaskInfrastructureSpec {
  /// Compute resources needed for a Task when using Dataproc Serverless.
  final GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources? batch;

  /// Container Image Runtime Configuration.
  final GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime?
  containerImage;

  /// Vpc network.
  final GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork? vpcNetwork;

  /// Creates a new [GoogleCloudDataplexV1TaskInfrastructureSpec].
  /// [batch] Compute resources needed for a Task when using Dataproc Serverless.
  /// [containerImage] Container Image Runtime Configuration.
  /// [vpcNetwork] Vpc network.
  GoogleCloudDataplexV1TaskInfrastructureSpec({
    this.batch,
    this.containerImage,
    this.vpcNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batch': ?batch == null ? null : batch!.toMap(),
      'containerImage': ?containerImage == null
          ? null
          : containerImage!.toMap(),
      'vpcNetwork': ?vpcNetwork == null ? null : vpcNetwork!.toMap(),
    };
  }

  factory GoogleCloudDataplexV1TaskInfrastructureSpec.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDataplexV1TaskInfrastructureSpec(
      batch: map['batch'] == null
          ? null
          : GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources.fromMap(
              (map['batch'] as Map).cast<String, dynamic>(),
            ),
      containerImage: map['containerImage'] == null
          ? null
          : GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime.fromMap(
              (map['containerImage'] as Map).cast<String, dynamic>(),
            ),
      vpcNetwork: map['vpcNetwork'] == null
          ? null
          : GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork.fromMap(
              (map['vpcNetwork'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
