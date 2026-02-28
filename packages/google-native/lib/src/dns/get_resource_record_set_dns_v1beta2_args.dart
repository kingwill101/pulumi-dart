// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_v1beta2_get_resource_record_set_dns_v1beta2_args_doc}
/// Arguments for getResourceRecordSet.
/// {@endtemplate}
/// {@macro pulumi_dns_v1beta2_get_resource_record_set_dns_v1beta2_args_doc}
class GetResourceRecordSetDnsV1beta2Args {
  final pulumi.Input<String>? clientOperationId;
  final pulumi.Input<String> managedZone;
  final pulumi.Input<String> name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> type;

  /// Creates a new [GetResourceRecordSetDnsV1beta2Args].
  /// [clientOperationId] Optional.
  /// [managedZone] Required.
  /// [name] Required.
  /// [project] Optional.
  /// [type] Required.
  GetResourceRecordSetDnsV1beta2Args({
    String? clientOperationId,
    required String managedZone,
    required String name,
    String? project,
    required String type,
  })  : clientOperationId =
            pulumi.Input.asOptionalInput<String>(clientOperationId),
        managedZone = pulumi.Input.asInput<String>(managedZone),
        name = pulumi.Input.asInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        type = pulumi.Input.asInput<String>(type);

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
      clientOperationId: map['clientOperationId'] == null
          ? null
          : map['clientOperationId'] as String,
      managedZone: map['managedZone'] as String,
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      type: map['type'] as String,
    );
  }
}
