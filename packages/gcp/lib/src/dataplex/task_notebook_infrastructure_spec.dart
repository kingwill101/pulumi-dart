// ignore_for_file: unused_element, unnecessary_cast

import 'task_notebook_infrastructure_spec_batch.dart';
import 'task_notebook_infrastructure_spec_container_image.dart';
import 'task_notebook_infrastructure_spec_vpc_network.dart';

class TaskNotebookInfrastructureSpec {
  /// Compute resources needed for a Task when using Dataproc Serverless.
  /// Structure is documented below.
  final TaskNotebookInfrastructureSpecBatch? batch;

  /// Container Image Runtime Configuration.
  /// Structure is documented below.
  final TaskNotebookInfrastructureSpecContainerImage? containerImage;

  /// Vpc network.
  /// Structure is documented below.
  final TaskNotebookInfrastructureSpecVpcNetwork? vpcNetwork;

  /// Creates a new [TaskNotebookInfrastructureSpec].
  /// [batch] Compute resources needed for a Task when using Dataproc Serverless.
  /// [containerImage] Container Image Runtime Configuration.
  /// [vpcNetwork] Vpc network.
  TaskNotebookInfrastructureSpec({
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

  factory TaskNotebookInfrastructureSpec.fromMap(Map<String, dynamic> map) {
    return TaskNotebookInfrastructureSpec(
      batch: map['batch'] == null
          ? null
          : TaskNotebookInfrastructureSpecBatch.fromMap(
              (map['batch'] as Map).cast<String, dynamic>()),
      containerImage: map['containerImage'] == null
          ? null
          : TaskNotebookInfrastructureSpecContainerImage.fromMap(
              (map['containerImage'] as Map).cast<String, dynamic>()),
      vpcNetwork: map['vpcNetwork'] == null
          ? null
          : TaskNotebookInfrastructureSpecVpcNetwork.fromMap(
              (map['vpcNetwork'] as Map).cast<String, dynamic>()),
    );
  }
}
