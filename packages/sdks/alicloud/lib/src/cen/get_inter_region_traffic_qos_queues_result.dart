// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_inter_region_traffic_qos_queues_queue.dart';

/// Result data returned by getInterRegionTrafficQosQueues.
class GetInterRegionTrafficQosQueuesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Inter Region Traffic Qos Queue IDs.
  final List<String> ids;
  final String? nameRegex;
  /// A list of name of Inter Region Traffic Qos Queues.
  final List<String> names;
  final String? outputFile;
  /// A list of Inter Region Traffic Qos Queue Entries. Each element contains the following attributes:
  final List<GetInterRegionTrafficQosQueuesQueue> queues;
  /// The ID of the traffic scheduling policy.
  final String trafficQosPolicyId;

  /// Creates a new [GetInterRegionTrafficQosQueuesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Inter Region Traffic Qos Queue IDs.
  /// [nameRegex] Optional.
  /// [names] A list of name of Inter Region Traffic Qos Queues.
  /// [outputFile] Optional.
  /// [queues] A list of Inter Region Traffic Qos Queue Entries. Each element contains the following attributes:
  /// [trafficQosPolicyId] The ID of the traffic scheduling policy.
  const GetInterRegionTrafficQosQueuesResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.queues,
    required this.trafficQosPolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'queues': pulumi.Input.encodeList<GetInterRegionTrafficQosQueuesQueue, Map<String, dynamic>>(queues, (value) => value.toMap()),
      'trafficQosPolicyId': trafficQosPolicyId,
    };
  }

  factory GetInterRegionTrafficQosQueuesResult.fromMap(Map<String, dynamic> map) {
    return GetInterRegionTrafficQosQueuesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      queues: pulumi.Input.decodeList<GetInterRegionTrafficQosQueuesQueue>(map['queues']!, (value) => GetInterRegionTrafficQosQueuesQueue.fromMap((value as Map).cast<String, dynamic>())),
      trafficQosPolicyId: map['trafficQosPolicyId'] as String,
    );
  }
}

