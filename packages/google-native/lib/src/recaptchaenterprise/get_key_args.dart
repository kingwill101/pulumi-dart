// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_recaptchaenterprise_v1_get_key_args_doc}
/// Arguments for getKey.
/// {@endtemplate}
/// {@macro pulumi_recaptchaenterprise_v1_get_key_args_doc}
class GetKeyArgs {
  final pulumi.Input<String> keyId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetKeyArgs].
  /// [keyId] Required.
  /// [project] Optional.
  GetKeyArgs({
    required String keyId,
    String? project,
  }) :
      keyId = pulumi.Input.asInput<String>(keyId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyId': keyId,
      'project': ?project,
    };
  }

  factory GetKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetKeyArgs(
      keyId: map['keyId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

