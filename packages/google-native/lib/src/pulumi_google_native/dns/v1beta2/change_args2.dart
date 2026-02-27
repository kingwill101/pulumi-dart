// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'resource_record_set2.dart';

/// The set of arguments for Change.
class ChangeArgs2 {
  /// Which ResourceRecordSets to add?
  final Input<List<ResourceRecordSet2>>? additions;

  /// For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  final Input<String>? clientOperationId;

  /// Which ResourceRecordSets to remove? Must match existing data exactly.
  final Input<List<ResourceRecordSet2>>? deletions;

  /// If the DNS queries for the zone will be served.
  final Input<bool>? isServing;
  final Input<String>? kind;
  final Input<String> managedZone;
  final Input<String>? project;

  ChangeArgs2({
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
      map['additions'] = Input.mapOptionalInputValue<List<ResourceRecordSet2>,
              List<Map<String, dynamic>>>(
          additionsValue,
          (value) => Input.encodeList<ResourceRecordSet2, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final clientOperationIdValue = clientOperationId;
    if (clientOperationIdValue != null) {
      map['clientOperationId'] = clientOperationIdValue;
    }
    final deletionsValue = deletions;
    if (deletionsValue != null) {
      map['deletions'] = Input.mapOptionalInputValue<List<ResourceRecordSet2>,
              List<Map<String, dynamic>>>(
          deletionsValue,
          (value) => Input.encodeList<ResourceRecordSet2, Map<String, dynamic>>(
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

  factory ChangeArgs2.fromMap(Map<String, dynamic> map) {
    return ChangeArgs2(
      additions:
          Input.asOptionalInput<List<ResourceRecordSet2>>(map['additions']),
      clientOperationId:
          Input.asOptionalInput<String>(map['clientOperationId']),
      deletions:
          Input.asOptionalInput<List<ResourceRecordSet2>>(map['deletions']),
      isServing: Input.asOptionalInput<bool>(map['isServing']),
      kind: Input.asOptionalInput<String>(map['kind']),
      managedZone: Input.asInput<String>(map['managedZone']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
