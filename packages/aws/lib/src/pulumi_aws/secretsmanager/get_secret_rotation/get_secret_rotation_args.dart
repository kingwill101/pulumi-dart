// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getSecretRotation.
class GetSecretRotationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Specifies the secret containing the version that you want to retrieve. You can specify either the ARN or the friendly name of the secret.
  final Input<String> secretId;

  GetSecretRotationArgs({
    this.region,
    required this.secretId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['secretId'] = secretId;
    return map;
  }

  factory GetSecretRotationArgs.fromMap(Map<String, dynamic> map) {
    return GetSecretRotationArgs(
      region: Input.asOptionalInput<String>(map['region']),
      secretId: Input.asInput<String>(map['secretId']),
    );
  }
}
