// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_environment_entry_args_doc}
/// Arguments for getEnvironmentEntry.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_environment_entry_args_doc}
class GetEnvironmentEntryArgs {
  final pulumi.Input<String> entryId;
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> keyvaluemapId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetEnvironmentEntryArgs].
  /// [entryId] Required.
  /// [environmentId] Required.
  /// [keyvaluemapId] Required.
  /// [organizationId] Required.
  GetEnvironmentEntryArgs({
    required String entryId,
    required String environmentId,
    required String keyvaluemapId,
    required String organizationId,
  }) :
      entryId = pulumi.Input.asInput<String>(entryId),
      environmentId = pulumi.Input.asInput<String>(environmentId),
      keyvaluemapId = pulumi.Input.asInput<String>(keyvaluemapId),
      organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entryId': entryId,
      'environmentId': environmentId,
      'keyvaluemapId': keyvaluemapId,
      'organizationId': organizationId,
    };
  }

  factory GetEnvironmentEntryArgs.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentEntryArgs(
      entryId: map['entryId'] as String,
      environmentId: map['environmentId'] as String,
      keyvaluemapId: map['keyvaluemapId'] as String,
      organizationId: map['organizationId'] as String,
    );
  }
}

