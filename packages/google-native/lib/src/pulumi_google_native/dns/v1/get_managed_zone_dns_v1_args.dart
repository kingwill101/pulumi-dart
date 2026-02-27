// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getManagedZone.
class GetManagedZoneDnsV1Args {
  final pulumi.Input<String>? clientOperationId;
  final pulumi.Input<String> managedZone;
  final pulumi.Input<String>? project;

  GetManagedZoneDnsV1Args({
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

  factory GetManagedZoneDnsV1Args.fromMap(Map<String, dynamic> map) {
    return GetManagedZoneDnsV1Args(
      clientOperationId:
          pulumi.Input.asOptionalInput<String>(map['clientOperationId']),
      managedZone: pulumi.Input.asInput<String>(map['managedZone']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
