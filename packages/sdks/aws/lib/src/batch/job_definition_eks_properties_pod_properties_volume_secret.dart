// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobDefinitionEksPropertiesPodPropertiesVolumeSecret {
  /// Whether the secret or the secret's keys must be defined.
  final pulumi.Input<bool>? optional;
  /// Name of the secret. The name must be allowed as a DNS subdomain name.
  final pulumi.Input<String> secretName;

  /// Creates a new [JobDefinitionEksPropertiesPodPropertiesVolumeSecret].
  /// [optional] Whether the secret or the secret's keys must be defined.
  /// [secretName] Name of the secret. The name must be allowed as a DNS subdomain name.
  JobDefinitionEksPropertiesPodPropertiesVolumeSecret({
    this.optional,
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optional': ?optional,
      'secretName': secretName,
    };
  }

  factory JobDefinitionEksPropertiesPodPropertiesVolumeSecret.fromMap(Map<String, dynamic> map) {
    return JobDefinitionEksPropertiesPodPropertiesVolumeSecret(
      optional: (() { final guardedValue = map['optional']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      secretName: pulumi.Input.fromValue(map['secretName'] as String),
    );
  }
}

