// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_record_set.dart';

/// The set of arguments for Change.
class ChangeArgs {
  /// Which ResourceRecordSets to add?
  final pulumi.Input<List<ResourceRecordSet>>? additions;

  /// For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  final pulumi.Input<String>? clientOperationId;

  /// Which ResourceRecordSets to remove? Must match existing data exactly.
  final pulumi.Input<List<ResourceRecordSet>>? deletions;

  /// If the DNS queries for the zone will be served.
  final pulumi.Input<bool>? isServing;
  final pulumi.Input<String>? kind;
  final pulumi.Input<String> managedZone;
  final pulumi.Input<String>? project;

  ChangeArgs({
    this.additions,
    this.clientOperationId,
    this.deletions,
    this.isServing,
    this.kind,
    required this.managedZone,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionsValue = additions;
    if (additionsValue != null) {
      map['additions'] = pulumi.Input.mapOptionalInputValue<
              List<ResourceRecordSet>, List<Map<String, dynamic>>>(
          additionsValue,
          (value) =>
              pulumi.Input.encodeList<ResourceRecordSet, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final clientOperationIdValue = clientOperationId;
    if (clientOperationIdValue != null) {
      map['clientOperationId'] = clientOperationIdValue;
    }
    final deletionsValue = deletions;
    if (deletionsValue != null) {
      map['deletions'] = pulumi.Input.mapOptionalInputValue<
              List<ResourceRecordSet>, List<Map<String, dynamic>>>(
          deletionsValue,
          (value) =>
              pulumi.Input.encodeList<ResourceRecordSet, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
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

  factory ChangeArgs.fromMap(Map<String, dynamic> map) {
    return ChangeArgs(
      additions: pulumi.Input.asOptionalInput<List<ResourceRecordSet>>(
          map['additions']),
      clientOperationId:
          pulumi.Input.asOptionalInput<String>(map['clientOperationId']),
      deletions: pulumi.Input.asOptionalInput<List<ResourceRecordSet>>(
          map['deletions']),
      isServing: pulumi.Input.asOptionalInput<bool>(map['isServing']),
      kind: pulumi.Input.asOptionalInput<String>(map['kind']),
      managedZone: pulumi.Input.asInput<String>(map['managedZone']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
