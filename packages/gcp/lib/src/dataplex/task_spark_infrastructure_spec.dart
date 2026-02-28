// ignore_for_file: unused_element, unnecessary_cast

import 'task_spark_infrastructure_spec_batch.dart';
import 'task_spark_infrastructure_spec_container_image.dart';
import 'task_spark_infrastructure_spec_vpc_network.dart';

class TaskSparkInfrastructureSpec {
  /// Compute resources needed for a Task when using Dataproc Serverless.
  /// Structure is documented below.
  final TaskSparkInfrastructureSpecBatch? batch;

  /// Container Image Runtime Configuration.
  /// Structure is documented below.
  final TaskSparkInfrastructureSpecContainerImage? containerImage;

  /// Vpc network.
  /// Structure is documented below.
  final TaskSparkInfrastructureSpecVpcNetwork? vpcNetwork;

  /// Creates a new [TaskSparkInfrastructureSpec].
  /// [batch] Compute resources needed for a Task when using Dataproc Serverless.
  /// [containerImage] Container Image Runtime Configuration.
  /// [vpcNetwork] Vpc network.
  TaskSparkInfrastructureSpec({
    this.batch,
    this.containerImage,
    this.vpcNetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final batchValue = batch;
    if (batchValue != null) {
      map['batch'] = batchValue.toMap();
    }
    final containerImageValue = containerImage;
    if (containerImageValue != null) {
      map['containerImage'] = containerImageValue.toMap();
    }
    final vpcNetworkValue = vpcNetwork;
    if (vpcNetworkValue != null) {
      map['vpcNetwork'] = vpcNetworkValue.toMap();
    }
    return map;
  }

  factory TaskSparkInfrastructureSpec.fromMap(Map<String, dynamic> map) {
    return TaskSparkInfrastructureSpec(
      batch: map['batch'] == null
          ? null
          : TaskSparkInfrastructureSpecBatch.fromMap(
              (map['batch'] as Map).cast<String, dynamic>()),
      containerImage: map['containerImage'] == null
          ? null
          : TaskSparkInfrastructureSpecContainerImage.fromMap(
              (map['containerImage'] as Map).cast<String, dynamic>()),
      vpcNetwork: map['vpcNetwork'] == null
          ? null
          : TaskSparkInfrastructureSpecVpcNetwork.fromMap(
              (map['vpcNetwork'] as Map).cast<String, dynamic>()),
    );
  }
}
