// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_v1_get_source_args_doc}
/// Arguments for getSource.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_v1_get_source_args_doc}
class GetSourceArgs {
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> sourceId;

  /// Creates a new [GetSourceArgs].
  /// [organizationId] Required.
  /// [sourceId] Required.
  GetSourceArgs({
    required String organizationId,
    required String sourceId,
  })  : organizationId = pulumi.Input.asInput<String>(organizationId),
        sourceId = pulumi.Input.asInput<String>(sourceId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['organizationId'] = organizationId;
    map['sourceId'] = sourceId;
    return map;
  }

  factory GetSourceArgs.fromMap(Map<String, dynamic> map) {
    return GetSourceArgs(
      organizationId: map['organizationId'] as String,
      sourceId: map['sourceId'] as String,
    );
  }
}
