// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_policy_or_template.dart';
import 'location_policy.dart';
import 'network_policy.dart';
import 'placement_policy.dart';
import 'service_account.dart';

/// A Job's resource allocation policy describes when, where, and how compute resources should be allocated for the Job.
class AllocationPolicy {
  /// Describe instances that can be created by this AllocationPolicy. Only instances[0] is supported now.
  final List<InstancePolicyOrTemplate>? instances;

  /// Labels applied to all VM instances and other resources created by AllocationPolicy. Labels could be user provided or system generated. You can assign up to 64 labels. [Google Compute Engine label restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions) apply. Label names that start with "goog-" or "google-" are reserved.
  final Map<String, String>? labels;

  /// Location where compute resources should be allocated for the Job.
  final LocationPolicy? location;

  /// The network policy. If you define an instance template in the InstancePolicyOrTemplate field, Batch will use the network settings in the instance template instead of this field.
  final NetworkPolicy? network;

  /// The placement policy.
  final PlacementPolicy? placement;

  /// Service account that VMs will run as.
  final ServiceAccount? serviceAccount;

  AllocationPolicy({
    this.instances,
    this.labels,
    this.location,
    this.network,
    this.placement,
    this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final instancesValue = instances;
    if (instancesValue != null) {
      map['instances'] = pulumi.Input.encodeList<InstancePolicyOrTemplate,
          Map<String, dynamic>>(instancesValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue.toMap();
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue.toMap();
    }
    final placementValue = placement;
    if (placementValue != null) {
      map['placement'] = placementValue.toMap();
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue.toMap();
    }
    return map;
  }

  factory AllocationPolicy.fromMap(Map<String, dynamic> map) {
    return AllocationPolicy(
      instances: map['instances'] == null
          ? null
          : pulumi.Input.decodeList<InstancePolicyOrTemplate>(
              map['instances'],
              (value) => InstancePolicyOrTemplate.fromMap(
                  (value as Map).cast<String, dynamic>())),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null
          ? null
          : LocationPolicy.fromMap(
              (map['location'] as Map).cast<String, dynamic>()),
      network: map['network'] == null
          ? null
          : NetworkPolicy.fromMap(
              (map['network'] as Map).cast<String, dynamic>()),
      placement: map['placement'] == null
          ? null
          : PlacementPolicy.fromMap(
              (map['placement'] as Map).cast<String, dynamic>()),
      serviceAccount: map['serviceAccount'] == null
          ? null
          : ServiceAccount.fromMap(
              (map['serviceAccount'] as Map).cast<String, dynamic>()),
    );
  }
}
