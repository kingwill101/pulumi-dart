// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getResourceRecordSet.
class GetResourceRecordSetArgs2 {
  final Input<String>? clientOperationId;
  final Input<String> managedZone;
  final Input<String> name;
  final Input<String>? project;
  final Input<String> type;

  GetResourceRecordSetArgs2({
    this.clientOperationId,
    required this.managedZone,
    required this.name,
    this.project,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clientOperationIdValue = clientOperationId;
    if (clientOperationIdValue != null) {
      map['clientOperationId'] = clientOperationIdValue;
    }
    map['managedZone'] = managedZone;
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['type'] = type;
    return map;
  }

  factory GetResourceRecordSetArgs2.fromMap(Map<String, dynamic> map) {
    return GetResourceRecordSetArgs2(
      clientOperationId:
          Input.asOptionalInput<String>(map['clientOperationId']),
      managedZone: Input.asInput<String>(map['managedZone']),
      name: Input.asInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      type: Input.asInput<String>(map['type']),
    );
  }
}
