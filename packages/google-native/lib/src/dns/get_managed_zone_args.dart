// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_v1_get_managed_zone_args_doc}
/// Arguments for getManagedZone.
/// {@endtemplate}
/// {@macro pulumi_dns_v1_get_managed_zone_args_doc}
class GetManagedZoneArgs {
  final pulumi.Input<String>? clientOperationId;
  final pulumi.Input<String> managedZone;
  final pulumi.Input<String>? project;

  /// Creates a new [GetManagedZoneArgs].
  /// [clientOperationId] Optional.
  /// [managedZone] Required.
  /// [project] Optional.
  GetManagedZoneArgs({
    String? clientOperationId,
    required String managedZone,
    String? project,
  })  : clientOperationId =
            pulumi.Input.asOptionalInput<String>(clientOperationId),
        managedZone = pulumi.Input.asInput<String>(managedZone),
        project = pulumi.Input.asOptionalInput<String>(project);

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

  factory GetManagedZoneArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedZoneArgs(
      clientOperationId: map['clientOperationId'] == null
          ? null
          : map['clientOperationId'] as String,
      managedZone: map['managedZone'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
