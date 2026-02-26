// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getManagedZone.
class GetManagedZoneArgs2 {
  final Input<String>? clientOperationId;
  final Input<String> managedZone;
  final Input<String>? project;

  GetManagedZoneArgs2({
    this.clientOperationId,
    required this.managedZone,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
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

  factory GetManagedZoneArgs2.fromMap(Map<String, dynamic> map) {
    return GetManagedZoneArgs2(
      clientOperationId:
          Input.asOptionalInput<String>(map['clientOperationId']),
      managedZone: Input.asInput<String>(map['managedZone']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
