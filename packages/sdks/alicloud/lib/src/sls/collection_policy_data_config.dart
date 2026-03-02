// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CollectionPolicyDataConfig {
  /// This setting is valid only when the log type is a global log type—for example, when productCode is sls.
  final pulumi.Input<String>? dataProject;
  /// This parameter can be configured only when the log type is a global log type—for example, when productCode is sls. It indicates that global logs will be collected to the specified region upon initial configuration.
  final pulumi.Input<String>? dataRegion;

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
      dataProject: map['dataProject'] == null ? null : (map['dataProject']! as String).input(),
      dataRegion: map['dataRegion'] == null ? null : (map['dataRegion']! as String).input(),
    );
  }
}

