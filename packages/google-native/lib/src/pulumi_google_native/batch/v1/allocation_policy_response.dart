// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'instance_policy_or_template_response.dart';
import 'location_policy_response.dart';
import 'network_policy_response.dart';
import 'placement_policy_response.dart';
import 'service_account_response.dart';

/// A Job's resource allocation policy describes when, where, and how compute resources should be allocated for the Job.
class AllocationPolicyResponse {
  /// Describe instances that can be created by this AllocationPolicy. Only instances[0] is supported now.
  final List<InstancePolicyOrTemplateResponse> instances;

  /// Labels applied to all VM instances and other resources created by AllocationPolicy. Labels could be user provided or system generated. You can assign up to 64 labels. [Google Compute Engine label restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions) apply. Label names that start with "goog-" or "google-" are reserved.
  final Map<String, String> labels;

  /// Location where compute resources should be allocated for the Job.
  final LocationPolicyResponse location;

  /// The network policy. If you define an instance template in the InstancePolicyOrTemplate field, Batch will use the network settings in the instance template instead of this field.
  final NetworkPolicyResponse network;

  /// The placement policy.
  final PlacementPolicyResponse placement;

  /// Service account that VMs will run as.
  final ServiceAccountResponse serviceAccount;

  AllocationPolicyResponse({
    required this.instances,
    required this.labels,
    required this.location,
    required this.network,
    required this.placement,
    required this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instances'] = Input.encodeList<InstancePolicyOrTemplateResponse,
        Map<String, dynamic>>(instances, (value) => value.toMap());
    map['labels'] = labels;
    map['location'] = location.toMap();
    map['network'] = network.toMap();
    map['placement'] = placement.toMap();
    map['serviceAccount'] = serviceAccount.toMap();
    return map;
  }

  factory AllocationPolicyResponse.fromMap(Map<String, dynamic> map) {
    return AllocationPolicyResponse(
      instances: Input.decodeList<InstancePolicyOrTemplateResponse>(
          map['instances'],
          (value) => InstancePolicyOrTemplateResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      labels: (map['labels'] as Map).cast<String, String>(),
      location: LocationPolicyResponse.fromMap(
          (map['location'] as Map).cast<String, dynamic>()),
      network: NetworkPolicyResponse.fromMap(
          (map['network'] as Map).cast<String, dynamic>()),
      placement: PlacementPolicyResponse.fromMap(
          (map['placement'] as Map).cast<String, dynamic>()),
      serviceAccount: ServiceAccountResponse.fromMap(
          (map['serviceAccount'] as Map).cast<String, dynamic>()),
    );
  }
}
