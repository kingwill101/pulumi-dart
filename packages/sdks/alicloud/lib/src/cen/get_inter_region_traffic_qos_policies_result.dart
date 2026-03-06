// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_inter_region_traffic_qos_policies_policy.dart';

/// Result data returned by getInterRegionTrafficQosPolicies.
class GetInterRegionTrafficQosPoliciesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of Inter Region Traffic Qos Policy names.
  final List<String> names;
  final String? outputFile;
  /// A list of Cen Inter Region Traffic Qos Policies. Each element contains the following attributes:
  final List<GetInterRegionTrafficQosPoliciesPolicy> policies;
  /// The status of the Inter Region Traffic Qos Policy.
  final String? status;
  final String? trafficQosPolicyDescription;
  final String? trafficQosPolicyId;
  final String? trafficQosPolicyName;
  /// The ID of the inter-region connection.
  final String transitRouterAttachmentId;
  /// The ID of the transit router.
  final String transitRouterId;

  /// Creates a new [GetInterRegionTrafficQosPoliciesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of Inter Region Traffic Qos Policy names.
  /// [outputFile] Optional.
  /// [policies] A list of Cen Inter Region Traffic Qos Policies. Each element contains the following attributes:
  /// [status] The status of the Inter Region Traffic Qos Policy.
  /// [trafficQosPolicyDescription] Optional.
  /// [trafficQosPolicyId] Optional.
  /// [trafficQosPolicyName] Optional.
  /// [transitRouterAttachmentId] The ID of the inter-region connection.
  /// [transitRouterId] The ID of the transit router.
  const GetInterRegionTrafficQosPoliciesResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.policies,
    this.status,
    this.trafficQosPolicyDescription,
    this.trafficQosPolicyId,
    this.trafficQosPolicyName,
    required this.transitRouterAttachmentId,
    required this.transitRouterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'policies': pulumi.Input.encodeList<GetInterRegionTrafficQosPoliciesPolicy, Map<String, dynamic>>(policies, (value) => value.toMap()),
      'status': ?status,
      'trafficQosPolicyDescription': ?trafficQosPolicyDescription,
      'trafficQosPolicyId': ?trafficQosPolicyId,
      'trafficQosPolicyName': ?trafficQosPolicyName,
      'transitRouterAttachmentId': transitRouterAttachmentId,
      'transitRouterId': transitRouterId,
    };
  }

  factory GetInterRegionTrafficQosPoliciesResult.fromMap(Map<String, dynamic> map) {
    return GetInterRegionTrafficQosPoliciesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policies: pulumi.Input.decodeList<GetInterRegionTrafficQosPoliciesPolicy>(map['policies']!, (value) => GetInterRegionTrafficQosPoliciesPolicy.fromMap((value as Map).cast<String, dynamic>())),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      trafficQosPolicyDescription: (() { final guardedValue = map['trafficQosPolicyDescription']; if (guardedValue == null) return null; return guardedValue as String; })(),
      trafficQosPolicyId: (() { final guardedValue = map['trafficQosPolicyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      trafficQosPolicyName: (() { final guardedValue = map['trafficQosPolicyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      transitRouterAttachmentId: map['transitRouterAttachmentId'] as String,
      transitRouterId: map['transitRouterId'] as String,
    );
  }
}

