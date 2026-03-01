// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rrset_routing_policy.dart';

/// {@template pulumi_dns_v1_resource_record_set_args_doc}
/// The set of arguments for ResourceRecordSet.
/// {@endtemplate}
/// {@macro pulumi_dns_v1_resource_record_set_args_doc}
class ResourceRecordSetArgs {
  /// For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  final pulumi.Input<String>? clientOperationId;
  final pulumi.Input<String>? kind;
  final pulumi.Input<String> managedZone;

  /// For example, www.example.com.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Configures dynamic query responses based on either the geo location of the querying user or a weighted round robin based routing policy. A valid ResourceRecordSet contains only rrdata (for static resolution) or a routing_policy (for dynamic resolution).
  final pulumi.Input<RRSetRoutingPolicy>? routingPolicy;

  /// As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1) -- see examples.
  final pulumi.Input<List<String>>? rrdatas;

  /// As defined in RFC 4034 (section 3.2).
  final pulumi.Input<List<String>>? signatureRrdatas;

  /// Number of seconds that this ResourceRecordSet can be cached by resolvers.
  final pulumi.Input<int>? ttl;

  /// The identifier of a supported record type. See the list of Supported DNS record types.
  final pulumi.Input<String>? type;

  /// Creates a new [ResourceRecordSetArgs].
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
  ResourceRecordSetArgs({
    String? clientOperationId,
    String? kind,
    required String managedZone,
    String? name,
    String? project,
    RRSetRoutingPolicy? routingPolicy,
    List<String>? rrdatas,
    List<String>? signatureRrdatas,
    int? ttl,
    String? type,
  }) : clientOperationId = pulumi.Input.asOptionalInput<String>(
         clientOperationId,
       ),
       kind = pulumi.Input.asOptionalInput<String>(kind),
       managedZone = pulumi.Input.asInput<String>(managedZone),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       routingPolicy = pulumi.Input.asOptionalInput<RRSetRoutingPolicy>(
         routingPolicy,
       ),
       rrdatas = pulumi.Input.asOptionalInput<List<String>>(rrdatas),
       signatureRrdatas = pulumi.Input.asOptionalInput<List<String>>(
         signatureRrdatas,
       ),
       ttl = pulumi.Input.asOptionalInput<int>(ttl),
       type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientOperationId': ?clientOperationId,
      'kind': ?kind,
      'managedZone': managedZone,
      'name': ?name,
      'project': ?project,
      'routingPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            RRSetRoutingPolicy,
            Map<String, dynamic>
          >(routingPolicy, (value) => value.toMap()),
      'rrdatas': ?rrdatas,
      'signatureRrdatas': ?signatureRrdatas,
      'ttl': ?ttl,
      'type': ?type,
    };
  }

  factory ResourceRecordSetArgs.fromMap(Map<String, dynamic> map) {
    return ResourceRecordSetArgs(
      clientOperationId: map['clientOperationId'] == null
          ? null
          : map['clientOperationId'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      managedZone: map['managedZone'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      routingPolicy: map['routingPolicy'] == null
          ? null
          : RRSetRoutingPolicy.fromMap(
              (map['routingPolicy'] as Map).cast<String, dynamic>(),
            ),
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
