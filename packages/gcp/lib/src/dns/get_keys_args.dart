// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_get_keys_get_keys_args_doc}
/// Arguments for getKeys.
/// {@endtemplate}
/// {@macro pulumi_dns_get_keys_get_keys_args_doc}
class GetKeysArgs {
  /// The name or id of the Cloud DNS managed zone.
  final pulumi.Input<String> managedZone;

  /// The ID of the project in which the resource belongs. If `project` is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetKeysArgs].
  /// [managedZone] The name or id of the Cloud DNS managed zone.
  /// [project] The ID of the project in which the resource belongs. If `project` is not provided, the provider project is used.
  GetKeysArgs({required String managedZone, String? project})
    : managedZone = pulumi.Input.asInput<String>(managedZone),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'managedZone': managedZone, 'project': ?project};
  }

  factory GetKeysArgs.fromMap(Map<String, dynamic> map) {
    return GetKeysArgs(
      managedZone: map['managedZone'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
