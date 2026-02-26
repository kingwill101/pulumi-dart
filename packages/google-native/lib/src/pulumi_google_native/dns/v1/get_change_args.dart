// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getChange.
class GetChangeArgs {
  final Input<String> changeId;
  final Input<String>? clientOperationId;
  final Input<String> managedZone;
  final Input<String>? project;

  GetChangeArgs({
    required this.changeId,
    this.clientOperationId,
    required this.managedZone,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['changeId'] = changeId;
    final clientOperationIdValue = clientOperationId;
    if (clientOperationIdValue != null) {
      map['clientOperationId'] = clientOperationIdValue;
    }
    map['managedZone'] = managedZone;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetChangeArgs.fromMap(Map<String, dynamic> map) {
    return GetChangeArgs(
      changeId: Input.asInput<String>(map['changeId']),
      clientOperationId:
          Input.asOptionalInput<String>(map['clientOperationId']),
      managedZone: Input.asInput<String>(map['managedZone']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
