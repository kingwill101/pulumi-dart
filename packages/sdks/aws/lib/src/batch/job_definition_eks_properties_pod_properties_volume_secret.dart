// ignore_for_file: unused_element, unnecessary_cast


class JobDefinitionEksPropertiesPodPropertiesVolumeSecret {
  /// Whether the secret or the secret's keys must be defined.
  final bool? optional;
  /// Name of the secret. The name must be allowed as a DNS subdomain name.
  final String secretName;

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
      optional: map['optional'] == null ? null : map['optional'] as bool,
      secretName: map['secretName'] as String,
    );
  }
}

