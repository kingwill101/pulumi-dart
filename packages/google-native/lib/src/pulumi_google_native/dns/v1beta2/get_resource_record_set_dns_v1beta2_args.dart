// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getResourceRecordSet.
class GetResourceRecordSetDnsV1beta2Args {
  final pulumi.Input<String>? clientOperationId;
  final pulumi.Input<String> managedZone;
  final pulumi.Input<String> name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> type;

  GetResourceRecordSetDnsV1beta2Args({
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

  factory GetResourceRecordSetDnsV1beta2Args.fromMap(Map<String, dynamic> map) {
    return GetResourceRecordSetDnsV1beta2Args(
      clientOperationId:
          pulumi.Input.asOptionalInput<String>(map['clientOperationId']),
      managedZone: pulumi.Input.asInput<String>(map['managedZone']),
      name: pulumi.Input.asInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      type: pulumi.Input.asInput<String>(map['type']),
    );
  }
}
