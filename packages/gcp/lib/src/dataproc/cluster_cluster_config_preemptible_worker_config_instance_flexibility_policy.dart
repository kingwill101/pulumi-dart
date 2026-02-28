// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_cluster_config_preemptible_worker_config_instance_flexibility_policy_instance_selection_list.dart';
import 'cluster_cluster_config_preemptible_worker_config_instance_flexibility_policy_instance_selection_result.dart';
import 'cluster_cluster_config_preemptible_worker_config_instance_flexibility_policy_provisioning_model_mix.dart';

class ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicy {
  /// List of instance selection options that the group will use when creating new VMs.
  final List<ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList>? instanceSelectionLists;
  /// A list of instance selection results in the group.
  final List<ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult>? instanceSelectionResults;
  /// Defines how the Group selects the provisioning model to ensure required reliability.
  final ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyProvisioningModelMix? provisioningModelMix;

  /// Creates a new [ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicy].
  /// [instanceSelectionLists] List of instance selection options that the group will use when creating new VMs.
  /// [instanceSelectionResults] A list of instance selection results in the group.
  /// [provisioningModelMix] Defines how the Group selects the provisioning model to ensure required reliability.
  ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicy({
    this.instanceSelectionLists,
    this.instanceSelectionResults,
    this.provisioningModelMix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceSelectionLists': ?instanceSelectionLists == null ? null : pulumi.Input.encodeList<ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList, Map<String, dynamic>>(instanceSelectionLists!, (value) => value.toMap()),
      'instanceSelectionResults': ?instanceSelectionResults == null ? null : pulumi.Input.encodeList<ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult, Map<String, dynamic>>(instanceSelectionResults!, (value) => value.toMap()),
      'provisioningModelMix': ?provisioningModelMix == null ? null : provisioningModelMix!.toMap(),
    };
  }

  factory ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicy.fromMap(Map<String, dynamic> map) {
    return ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicy(
      instanceSelectionLists: map['instanceSelectionLists'] == null ? null : pulumi.Input.decodeList<ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList>(map['instanceSelectionLists'], (value) => ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList.fromMap((value as Map).cast<String, dynamic>())),
      instanceSelectionResults: map['instanceSelectionResults'] == null ? null : pulumi.Input.decodeList<ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult>(map['instanceSelectionResults'], (value) => ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult.fromMap((value as Map).cast<String, dynamic>())),
      provisioningModelMix: map['provisioningModelMix'] == null ? null : ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyProvisioningModelMix.fromMap((map['provisioningModelMix'] as Map).cast<String, dynamic>()),
    );
  }
}

