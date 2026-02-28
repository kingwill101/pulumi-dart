// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_v1_get_key_args_doc}
/// Arguments for getKey.
/// {@endtemplate}
/// {@macro pulumi_iam_v1_get_key_args_doc}
class GetKeyArgs {
  final pulumi.Input<String> keyId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? publicKeyType;
  final pulumi.Input<String> serviceAccountId;

  /// Creates a new [GetKeyArgs].
  /// [keyId] Required.
  /// [project] Optional.
  /// [publicKeyType] Optional.
  /// [serviceAccountId] Required.
  GetKeyArgs({
    required String keyId,
    String? project,
    String? publicKeyType,
    required String serviceAccountId,
  })  : keyId = pulumi.Input.asInput<String>(keyId),
        project = pulumi.Input.asOptionalInput<String>(project),
        publicKeyType = pulumi.Input.asOptionalInput<String>(publicKeyType),
        serviceAccountId = pulumi.Input.asInput<String>(serviceAccountId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['keyId'] = keyId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final publicKeyTypeValue = publicKeyType;
    if (publicKeyTypeValue != null) {
      map['publicKeyType'] = publicKeyTypeValue;
    }
    map['serviceAccountId'] = serviceAccountId;
    return map;
  }

  factory GetKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetKeyArgs(
      keyId: map['keyId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      publicKeyType:
          map['publicKeyType'] == null ? null : map['publicKeyType'] as String,
      serviceAccountId: map['serviceAccountId'] as String,
    );
  }
}
