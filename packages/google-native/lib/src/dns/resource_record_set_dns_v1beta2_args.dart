// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rrset_routing_policy_dns_v1beta2.dart';

/// {@template pulumi_dns_v1beta2_resource_record_set_dns_v1beta2_args_doc}
/// The set of arguments for ResourceRecordSet.
/// {@endtemplate}
/// {@macro pulumi_dns_v1beta2_resource_record_set_dns_v1beta2_args_doc}
class ResourceRecordSetDnsV1beta2Args {
  /// For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  final pulumi.Input<String>? clientOperationId;
  final pulumi.Input<String>? kind;
  final pulumi.Input<String> managedZone;

  /// For example, www.example.com.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Configures dynamic query responses based on either the geo location of the querying user or a weighted round robin based routing policy. A valid ResourceRecordSet contains only rrdata (for static resolution) or a routing_policy (for dynamic resolution).
  final pulumi.Input<RRSetRoutingPolicyDnsV1beta2>? routingPolicy;

  /// As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1) -- see examples.
  final pulumi.Input<List<String>>? rrdatas;

  /// As defined in RFC 4034 (section 3.2).
  final pulumi.Input<List<String>>? signatureRrdatas;

  /// Number of seconds that this ResourceRecordSet can be cached by resolvers.
  final pulumi.Input<int>? ttl;

  /// The identifier of a supported record type. See the list of Supported DNS record types.
  final pulumi.Input<String>? type;

  /// Creates a new [ResourceRecordSetDnsV1beta2Args].
  /// [clientOperationId] For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  /// [kind] Optional.
  /// [managedZone] Required.
  /// [name] For example, www.example.com.
  /// [project] Optional.
  /// [routingPolicy] Configures dynamic query responses based on either the geo location of the querying user or a weighted round robin based routing policy. A valid ResourceRecordSet contains only rrdata (for static resolution) or a routing_policy (for dynamic resolution).
  /// [rrdatas] As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1) -- see examples.
  /// [signatureRrdatas] As defined in RFC 4034 (section 3.2).
  /// [ttl] Number of seconds that this ResourceRecordSet can be cached by resolvers.
  /// [type] The identifier of a supported record type. See the list of Supported DNS record types.
  ResourceRecordSetDnsV1beta2Args({
    String? clientOperationId,
    String? kind,
    required String managedZone,
    String? name,
    String? project,
    RRSetRoutingPolicyDnsV1beta2? routingPolicy,
    List<String>? rrdatas,
    List<String>? signatureRrdatas,
    int? ttl,
    String? type,
  })  : clientOperationId =
            pulumi.Input.asOptionalInput<String>(clientOperationId),
        kind = pulumi.Input.asOptionalInput<String>(kind),
        managedZone = pulumi.Input.asInput<String>(managedZone),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        routingPolicy =
            pulumi.Input.asOptionalInput<RRSetRoutingPolicyDnsV1beta2>(
                routingPolicy),
        rrdatas = pulumi.Input.asOptionalInput<List<String>>(rrdatas),
        signatureRrdatas =
            pulumi.Input.asOptionalInput<List<String>>(signatureRrdatas),
        ttl = pulumi.Input.asOptionalInput<int>(ttl),
        type = pulumi.Input.asOptionalInput<String>(type);

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
      map['routingPolicy'] = pulumi.Input.mapOptionalInputValue<
          RRSetRoutingPolicyDnsV1beta2,
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

  factory ResourceRecordSetDnsV1beta2Args.fromMap(Map<String, dynamic> map) {
    return ResourceRecordSetDnsV1beta2Args(
      clientOperationId: map['clientOperationId'] == null
          ? null
          : map['clientOperationId'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      managedZone: map['managedZone'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      routingPolicy: map['routingPolicy'] == null
          ? null
          : RRSetRoutingPolicyDnsV1beta2.fromMap(
              (map['routingPolicy'] as Map).cast<String, dynamic>()),
      rrdatas: map['rrdatas'] == null
          ? null
          : (map['rrdatas'] as List).cast<String>(),
      signatureRrdatas: map['signatureRrdatas'] == null
          ? null
          : (map['signatureRrdatas'] as List).cast<String>(),
      ttl: map['ttl'] == null ? null : map['ttl'] as int,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
