// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecretsManagerSecret {
  /// The JSON key whose value to extract. The secret must contain JSON when this is set.
  ///
  /// Default - The full secret contents.
  final pulumi.Input<String?>? jsonKey;
  /// The ARN of the Secrets Manager secret whose value is passed to the container.
  final pulumi.Input<String> secretArn;
  /// The unique ID of the secret version to use.
  ///
  /// Cannot be combined with `versionStage`.
  ///
  /// Default - ECS uses `AWSCURRENT` when neither version selector is set.
  final pulumi.Input<String?>? versionId;
  /// The staging label of the secret version to use, such as `AWSPREVIOUS`.
  ///
  /// Cannot be combined with `versionId`.
  ///
  /// Default - ECS uses `AWSCURRENT` when neither version selector is set.
  final pulumi.Input<String?>? versionStage;

  /// Creates a new [SecretsManagerSecret].
  /// [jsonKey] The JSON key whose value to extract. The secret must contain JSON when this is set.
  /// [secretArn] The ARN of the Secrets Manager secret whose value is passed to the container.
  /// [versionId] The unique ID of the secret version to use.
  /// [versionStage] The staging label of the secret version to use, such as `AWSPREVIOUS`.
  const SecretsManagerSecret({
    this.jsonKey,
    required this.secretArn,
    this.versionId,
    this.versionStage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jsonKey': ?jsonKey,
      'secretArn': secretArn,
      'versionId': ?versionId,
      'versionStage': ?versionStage,
    };
  }

  factory SecretsManagerSecret.fromMap(Map<String, dynamic> map) {
    return SecretsManagerSecret(
      jsonKey: (() { final guardedValue = map['jsonKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretArn: pulumi.Input.fromValue(map['secretArn'] as String),
      versionId: (() { final guardedValue = map['versionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionStage: (() { final guardedValue = map['versionStage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
