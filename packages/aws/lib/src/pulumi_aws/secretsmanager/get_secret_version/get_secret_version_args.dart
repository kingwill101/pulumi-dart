// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSecretVersion.
class GetSecretVersionArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Specifies the secret containing the version that you want to retrieve. You can specify either the ARN or the friendly name of the secret.
  final pulumi.Input<String> secretId;

  /// Specifies the unique identifier of the version of the secret that you want to retrieve. Overrides `version_stage`.
  final pulumi.Input<String>? versionId;

  /// Specifies the secret version that you want to retrieve by the staging label attached to the version. Defaults to `AWSCURRENT`.
  final pulumi.Input<String>? versionStage;

  GetSecretVersionArgs({
    this.region,
    required this.secretId,
    this.versionId,
    this.versionStage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['secretId'] = secretId;
    final versionIdValue = versionId;
    if (versionIdValue != null) {
      map['versionId'] = versionIdValue;
    }
    final versionStageValue = versionStage;
    if (versionStageValue != null) {
      map['versionStage'] = versionStageValue;
    }
    return map;
  }

  factory GetSecretVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetSecretVersionArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      secretId: pulumi.Input.asInput<String>(map['secretId']),
      versionId: pulumi.Input.asOptionalInput<String>(map['versionId']),
      versionStage: pulumi.Input.asOptionalInput<String>(map['versionStage']),
    );
  }
}
