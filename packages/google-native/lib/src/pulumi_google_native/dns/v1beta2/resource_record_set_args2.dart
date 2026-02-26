// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'rrset_routing_policy2.dart';

/// The set of arguments for ResourceRecordSet.
class ResourceRecordSetArgs2 {
  /// For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  final Input<String>? clientOperationId;
  final Input<String>? kind;
  final Input<String> managedZone;

  /// For example, www.example.com.
  final Input<String>? name;
  final Input<String>? project;

  /// Configures dynamic query responses based on either the geo location of the querying user or a weighted round robin based routing policy. A valid ResourceRecordSet contains only rrdata (for static resolution) or a routing_policy (for dynamic resolution).
  final Input<RRSetRoutingPolicy2>? routingPolicy;

  /// As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1) -- see examples.
  final Input<List<String>>? rrdatas;

  /// As defined in RFC 4034 (section 3.2).
  final Input<List<String>>? signatureRrdatas;

  /// Number of seconds that this ResourceRecordSet can be cached by resolvers.
  final Input<int>? ttl;

  /// The identifier of a supported record type. See the list of Supported DNS record types.
  final Input<String>? type;

  ResourceRecordSetArgs2({
    this.clientOperationId,
    this.kind,
    required this.managedZone,
    this.name,
    this.project,
    this.routingPolicy,
    this.rrdatas,
    this.signatureRrdatas,
    this.ttl,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clientOperationIdValue = clientOperationId;
    if (clientOperationIdValue != null) {
      map['clientOperationId'] = clientOperationIdValue;
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    map['managedZone'] = managedZone;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final routingPolicyValue = routingPolicy;
    if (routingPolicyValue != null) {
      map['routingPolicy'] = Input.mapOptionalInputValue<RRSetRoutingPolicy2,
          Map<String, dynamic>>(routingPolicyValue, (value) => value.toMap());
    }
    final rrdatasValue = rrdatas;
    if (rrdatasValue != null) {
      map['rrdatas'] = rrdatasValue;
    }
    final signatureRrdatasValue = signatureRrdatas;
    if (signatureRrdatasValue != null) {
      map['signatureRrdatas'] = signatureRrdatasValue;
    }
    final ttlValue = ttl;
    if (ttlValue != null) {
      map['ttl'] = ttlValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory ResourceRecordSetArgs2.fromMap(Map<String, dynamic> map) {
    return ResourceRecordSetArgs2(
      clientOperationId:
          Input.asOptionalInput<String>(map['clientOperationId']),
      kind: Input.asOptionalInput<String>(map['kind']),
      managedZone: Input.asInput<String>(map['managedZone']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      routingPolicy:
          Input.asOptionalInput<RRSetRoutingPolicy2>(map['routingPolicy']),
      rrdatas: Input.asOptionalInput<List<String>>(map['rrdatas']),
      signatureRrdatas:
          Input.asOptionalInput<List<String>>(map['signatureRrdatas']),
      ttl: Input.asOptionalInput<int>(map['ttl']),
      type: Input.asOptionalInput<String>(map['type']),
    );
  }
}
