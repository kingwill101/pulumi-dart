// ignore_for_file: unused_element, unnecessary_cast


class SpringCloudBuildPackBindingLaunch {
  /// Specifies a map of non-sensitive properties for launchProperties.
  final Map<String, String>? properties;
  /// Specifies a map of sensitive properties for launchProperties.
  final Map<String, String>? secrets;

  /// Creates a new [SpringCloudBuildPackBindingLaunch].
  /// [properties] Specifies a map of non-sensitive properties for launchProperties.
  /// [secrets] Specifies a map of sensitive properties for launchProperties.
  SpringCloudBuildPackBindingLaunch({
    this.properties,
    this.secrets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?properties,
      'secrets': ?secrets,
    };
  }

  factory SpringCloudBuildPackBindingLaunch.fromMap(Map<String, dynamic> map) {
    return SpringCloudBuildPackBindingLaunch(
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      secrets: map['secrets'] == null ? null : (map['secrets'] as Map).cast<String, String>(),
    );
  }
}

