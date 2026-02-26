// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cluster_cluster_config_preemptible_worker_config_instance_flexibility_policy_instance_selection_list/cluster_cluster_config_preemptible_worker_config_instance_flexibility_policy_instance_selection_list.dart';
import '../cluster_cluster_config_preemptible_worker_config_instance_flexibility_policy_instance_selection_result/cluster_cluster_config_preemptible_worker_config_instance_flexibility_policy_instance_selection_result.dart';
import '../cluster_cluster_config_preemptible_worker_config_instance_flexibility_policy_provisioning_model_mix/cluster_cluster_config_preemptible_worker_config_instance_flexibility_policy_provisioning_model_mix.dart';

class ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicy {
  /// List of instance selection options that the group will use when creating new VMs.
  final List<
          ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList>?
      instanceSelectionLists;

  /// A list of instance selection results in the group.
  final List<
          ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult>?
      instanceSelectionResults;

  /// Defines how the Group selects the provisioning model to ensure required reliability.
  final ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyProvisioningModelMix?
      provisioningModelMix;

  ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicy({
    this.instanceSelectionLists,
    this.instanceSelectionResults,
    this.provisioningModelMix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final instanceSelectionListsValue = instanceSelectionLists;
    if (instanceSelectionListsValue != null) {
      map['instanceSelectionLists'] = Input.encodeList<
          ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList,
          Map<String,
              dynamic>>(instanceSelectionListsValue, (value) => value.toMap());
    }
    final instanceSelectionResultsValue = instanceSelectionResults;
    if (instanceSelectionResultsValue != null) {
      map['instanceSelectionResults'] = Input.encodeList<
          ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult,
          Map<String,
              dynamic>>(instanceSelectionResultsValue, (value) => value.toMap());
    }
    final provisioningModelMixValue = provisioningModelMix;
    if (provisioningModelMixValue != null) {
      map['provisioningModelMix'] = provisioningModelMixValue.toMap();
    }
    return map;
  }

  factory ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicy.fromMap(
      Map<String, dynamic> map) {
    return ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicy(
      instanceSelectionLists: map['instanceSelectionLists'] == null
          ? null
          : Input.decodeList<
                  ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList>(
              map['instanceSelectionLists'],
              (value) =>
                  ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList
                      .fromMap((value as Map).cast<String, dynamic>())),
      instanceSelectionResults: map['instanceSelectionResults'] == null
          ? null
          : Input.decodeList<
                  ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult>(
              map['instanceSelectionResults'],
              (value) =>
                  ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult
                      .fromMap((value as Map).cast<String, dynamic>())),
      provisioningModelMix: map['provisioningModelMix'] == null
          ? null
          : ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyProvisioningModelMix
              .fromMap(
                  (map['provisioningModelMix'] as Map).cast<String, dynamic>()),
    );
  }
}
