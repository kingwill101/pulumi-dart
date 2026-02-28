// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_keystore_args_doc}
/// Arguments for getKeystore.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_keystore_args_doc}
class GetKeystoreArgs {
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> keystoreId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetKeystoreArgs].
  /// [environmentId] Required.
  /// [keystoreId] Required.
  /// [organizationId] Required.
  GetKeystoreArgs({
    required String environmentId,
    required String keystoreId,
    required String organizationId,
  })  : environmentId = pulumi.Input.asInput<String>(environmentId),
        keystoreId = pulumi.Input.asInput<String>(keystoreId),
        organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['environmentId'] = environmentId;
    map['keystoreId'] = keystoreId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetKeystoreArgs.fromMap(Map<String, dynamic> map) {
    return GetKeystoreArgs(
      environmentId: map['environmentId'] as String,
      keystoreId: map['keystoreId'] as String,
      organizationId: map['organizationId'] as String,
    );
  }
}
