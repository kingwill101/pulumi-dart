// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_record_set_dns_v1beta2.dart';

/// {@template pulumi_dns_v1beta2_change_dns_v1beta2_args_doc}
/// The set of arguments for Change.
/// {@endtemplate}
/// {@macro pulumi_dns_v1beta2_change_dns_v1beta2_args_doc}
class ChangeDnsV1beta2Args {
  /// Which ResourceRecordSets to add?
  final pulumi.Input<List<ResourceRecordSetDnsV1beta2>>? additions;

  /// For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  final pulumi.Input<String>? clientOperationId;

  /// Which ResourceRecordSets to remove? Must match existing data exactly.
  final pulumi.Input<List<ResourceRecordSetDnsV1beta2>>? deletions;

  /// If the DNS queries for the zone will be served.
  final pulumi.Input<bool>? isServing;
  final pulumi.Input<String>? kind;
  final pulumi.Input<String> managedZone;
  final pulumi.Input<String>? project;

  /// Creates a new [ChangeDnsV1beta2Args].
  /// [additions] Which ResourceRecordSets to add?
  /// [clientOperationId] For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  /// [deletions] Which ResourceRecordSets to remove? Must match existing data exactly.
  /// [isServing] If the DNS queries for the zone will be served.
  /// [kind] Optional.
  /// [managedZone] Required.
  /// [project] Optional.
  ChangeDnsV1beta2Args({
    List<ResourceRecordSetDnsV1beta2>? additions,
    String? clientOperationId,
    List<ResourceRecordSetDnsV1beta2>? deletions,
    bool? isServing,
    String? kind,
    required String managedZone,
    String? project,
  })  : additions =
            pulumi.Input.asOptionalInput<List<ResourceRecordSetDnsV1beta2>>(
                additions),
        clientOperationId =
            pulumi.Input.asOptionalInput<String>(clientOperationId),
        deletions =
            pulumi.Input.asOptionalInput<List<ResourceRecordSetDnsV1beta2>>(
                deletions),
        isServing = pulumi.Input.asOptionalInput<bool>(isServing),
        kind = pulumi.Input.asOptionalInput<String>(kind),
        managedZone = pulumi.Input.asInput<String>(managedZone),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionsValue = additions;
    if (additionsValue != null) {
      map['additions'] = pulumi.Input.mapOptionalInputValue<
              List<ResourceRecordSetDnsV1beta2>, List<Map<String, dynamic>>>(
          additionsValue,
          (value) => pulumi.Input.encodeList<ResourceRecordSetDnsV1beta2,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final clientOperationIdValue = clientOperationId;
    if (clientOperationIdValue != null) {
      map['clientOperationId'] = clientOperationIdValue;
    }
    final deletionsValue = deletions;
    if (deletionsValue != null) {
      map['deletions'] = pulumi.Input.mapOptionalInputValue<
              List<ResourceRecordSetDnsV1beta2>, List<Map<String, dynamic>>>(
          deletionsValue,
          (value) => pulumi.Input.encodeList<ResourceRecordSetDnsV1beta2,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final isServingValue = isServing;
    if (isServingValue != null) {
      map['isServing'] = isServingValue;
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    map['managedZone'] = managedZone;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory ChangeDnsV1beta2Args.fromMap(Map<String, dynamic> map) {
    return ChangeDnsV1beta2Args(
      additions: map['additions'] == null
          ? null
          : pulumi.Input.decodeList<ResourceRecordSetDnsV1beta2>(
              map['additions'],
              (value) => ResourceRecordSetDnsV1beta2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      clientOperationId: map['clientOperationId'] == null
          ? null
          : map['clientOperationId'] as String,
      deletions: map['deletions'] == null
          ? null
          : pulumi.Input.decodeList<ResourceRecordSetDnsV1beta2>(
              map['deletions'],
              (value) => ResourceRecordSetDnsV1beta2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      isServing: map['isServing'] == null ? null : map['isServing'] as bool,
      kind: map['kind'] == null ? null : map['kind'] as String,
      managedZone: map['managedZone'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
