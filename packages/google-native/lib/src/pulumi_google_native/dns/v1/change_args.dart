// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'resource_record_set.dart';

/// The set of arguments for Change.
class ChangeArgs {
  /// Which ResourceRecordSets to add?
  final Input<List<ResourceRecordSet>>? additions;

  /// For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  final Input<String>? clientOperationId;

  /// Which ResourceRecordSets to remove? Must match existing data exactly.
  final Input<List<ResourceRecordSet>>? deletions;

  /// If the DNS queries for the zone will be served.
  final Input<bool>? isServing;
  final Input<String>? kind;
  final Input<String> managedZone;
  final Input<String>? project;

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
      map['additions'] = Input.mapOptionalInputValue<List<ResourceRecordSet>,
              List<Map<String, dynamic>>>(
          additionsValue,
          (value) => Input.encodeList<ResourceRecordSet, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final clientOperationIdValue = clientOperationId;
    if (clientOperationIdValue != null) {
      map['clientOperationId'] = clientOperationIdValue;
    }
    final deletionsValue = deletions;
    if (deletionsValue != null) {
      map['deletions'] = Input.mapOptionalInputValue<List<ResourceRecordSet>,
              List<Map<String, dynamic>>>(
          deletionsValue,
          (value) => Input.encodeList<ResourceRecordSet, Map<String, dynamic>>(
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
      additions:
          Input.asOptionalInput<List<ResourceRecordSet>>(map['additions']),
      clientOperationId:
          Input.asOptionalInput<String>(map['clientOperationId']),
      deletions:
          Input.asOptionalInput<List<ResourceRecordSet>>(map['deletions']),
      isServing: Input.asOptionalInput<bool>(map['isServing']),
      kind: Input.asOptionalInput<String>(map['kind']),
      managedZone: Input.asInput<String>(map['managedZone']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
