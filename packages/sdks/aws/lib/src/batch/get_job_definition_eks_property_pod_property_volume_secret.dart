// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetJobDefinitionEksPropertyPodPropertyVolumeSecret {
  /// Specifies whether the secret or the secret's keys must be defined.
  final pulumi.Input<bool> optional;
  /// The name of the secret. The name must be allowed as a DNS subdomain name
  final pulumi.Input<String> secretName;

  /// Creates a new [GetJobDefinitionEksPropertyPodPropertyVolumeSecret].
  /// [optional] Specifies whether the secret or the secret's keys must be defined.
  /// [secretName] The name of the secret. The name must be allowed as a DNS subdomain name
  GetJobDefinitionEksPropertyPodPropertyVolumeSecret({
    required this.optional,
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optional': optional,
      'secretName': secretName,
    };
  }

  factory GetJobDefinitionEksPropertyPodPropertyVolumeSecret.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionEksPropertyPodPropertyVolumeSecret(
      optional: (map['optional'] as bool).input(),
      secretName: (map['secretName'] as String).input(),
    );
  }
}

