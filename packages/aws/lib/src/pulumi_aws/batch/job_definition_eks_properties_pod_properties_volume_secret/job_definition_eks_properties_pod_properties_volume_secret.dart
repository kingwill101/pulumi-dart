// ignore_for_file: unused_element, unnecessary_cast

class JobDefinitionEksPropertiesPodPropertiesVolumeSecret {
  /// Whether the secret or the secret's keys must be defined.
  final bool? optional;

  /// Name of the secret. The name must be allowed as a DNS subdomain name.
  final String secretName;

  JobDefinitionEksPropertiesPodPropertiesVolumeSecret({
    this.optional,
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final optionalValue = optional;
    if (optionalValue != null) {
      map['optional'] = optionalValue;
    }
    map['secretName'] = secretName;
    return map;
  }

  factory JobDefinitionEksPropertiesPodPropertiesVolumeSecret.fromMap(
      Map<String, dynamic> map) {
    return JobDefinitionEksPropertiesPodPropertiesVolumeSecret(
      optional: map['optional'] == null ? null : map['optional'] as bool,
      secretName: map['secretName'] as String,
    );
  }
}
