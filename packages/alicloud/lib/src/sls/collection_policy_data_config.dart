// ignore_for_file: unused_element, unnecessary_cast


class CollectionPolicyDataConfig {
  /// This setting is valid only when the log type is a global log type—for example, when productCode is sls.
  final String? dataProject;
  /// This parameter can be configured only when the log type is a global log type—for example, when productCode is sls. It indicates that global logs will be collected to the specified region upon initial configuration.
  final String? dataRegion;

  /// Creates a new [CollectionPolicyDataConfig].
  /// [dataProject] This setting is valid only when the log type is a global log type—for example, when productCode is sls.
  /// [dataRegion] This parameter can be configured only when the log type is a global log type—for example, when productCode is sls. It indicates that global logs will be collected to the specified region upon initial configuration.
  CollectionPolicyDataConfig({
    this.dataProject,
    this.dataRegion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataProject': ?dataProject,
      'dataRegion': ?dataRegion,
    };
  }

  factory CollectionPolicyDataConfig.fromMap(Map<String, dynamic> map) {
    return CollectionPolicyDataConfig(
      dataProject: map['dataProject'] == null ? null : map['dataProject'] as String,
      dataRegion: map['dataRegion'] == null ? null : map['dataRegion'] as String,
    );
  }
}

