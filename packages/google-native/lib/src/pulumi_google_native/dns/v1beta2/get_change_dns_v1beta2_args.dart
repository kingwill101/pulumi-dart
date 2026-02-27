// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getChange.
class GetChangeDnsV1beta2Args {
  final pulumi.Input<String> changeId;
  final pulumi.Input<String>? clientOperationId;
  final pulumi.Input<String> managedZone;
  final pulumi.Input<String>? project;

  GetChangeDnsV1beta2Args({
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

  factory GetChangeDnsV1beta2Args.fromMap(Map<String, dynamic> map) {
    return GetChangeDnsV1beta2Args(
      changeId: pulumi.Input.asInput<String>(map['changeId']),
      clientOperationId:
          pulumi.Input.asOptionalInput<String>(map['clientOperationId']),
      managedZone: pulumi.Input.asInput<String>(map['managedZone']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
