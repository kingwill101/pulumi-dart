// ignore_for_file: unused_element, unnecessary_cast

import 'rrset_routing_policy_response.dart';

/// Result data returned by getResourceRecordSet.
class GetResourceRecordSetResult {
  final String kind;

  /// For example, www.example.com.
  final String name;

  /// Configures dynamic query responses based on either the geo location of the querying user or a weighted round robin based routing policy. A valid ResourceRecordSet contains only rrdata (for static resolution) or a routing_policy (for dynamic resolution).
  final RRSetRoutingPolicyResponse routingPolicy;

  /// As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1) -- see examples.
  final List<String> rrdatas;

  /// As defined in RFC 4034 (section 3.2).
  final List<String> signatureRrdatas;

  /// Number of seconds that this ResourceRecordSet can be cached by resolvers.
  final int ttl;

  /// The identifier of a supported record type. See the list of Supported DNS record types.
  final String type;

  /// Creates a new [GetResourceRecordSetResult].
  /// [kind] Required.
  /// [name] For example, www.example.com.
  /// [routingPolicy] Configures dynamic query responses based on either the geo location of the querying user or a weighted round robin based routing policy. A valid ResourceRecordSet contains only rrdata (for static resolution) or a routing_policy (for dynamic resolution).
  /// [rrdatas] As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1) -- see examples.
  /// [signatureRrdatas] As defined in RFC 4034 (section 3.2).
  /// [ttl] Number of seconds that this ResourceRecordSet can be cached by resolvers.
  /// [type] The identifier of a supported record type. See the list of Supported DNS record types.
  GetResourceRecordSetResult({
    required this.kind,
    required this.name,
    required this.routingPolicy,
    required this.rrdatas,
    required this.signatureRrdatas,
    required this.ttl,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['name'] = name;
    map['routingPolicy'] = routingPolicy.toMap();
    map['rrdatas'] = rrdatas;
    map['signatureRrdatas'] = signatureRrdatas;
    map['ttl'] = ttl;
    map['type'] = type;
    return map;
  }

  factory GetResourceRecordSetResult.fromMap(Map<String, dynamic> map) {
    return GetResourceRecordSetResult(
      kind: map['kind'] as String,
      name: map['name'] as String,
      routingPolicy: RRSetRoutingPolicyResponse.fromMap(
          (map['routingPolicy'] as Map).cast<String, dynamic>()),
      rrdatas: (map['rrdatas'] as List).cast<String>(),
      signatureRrdatas: (map['signatureRrdatas'] as List).cast<String>(),
      ttl: map['ttl'] as int,
      type: map['type'] as String,
    );
  }
}
