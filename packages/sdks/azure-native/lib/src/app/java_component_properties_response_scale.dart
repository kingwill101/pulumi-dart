// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Java component scaling configurations
class JavaComponentPropertiesResponseScale {
  /// Optional. Maximum number of Java component replicas
  final pulumi.Input<int>? maxReplicas;
  /// Optional. Minimum number of Java component replicas. Defaults to 1 if not set
  final pulumi.Input<int>? minReplicas;

  /// Creates a new [JavaComponentPropertiesResponseScale].
  /// [maxReplicas] Optional. Maximum number of Java component replicas
  /// [minReplicas] Optional. Minimum number of Java component replicas. Defaults to 1 if not set
  JavaComponentPropertiesResponseScale({
    this.maxReplicas,
    this.minReplicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxReplicas': ?maxReplicas,
      'minReplicas': ?minReplicas,
    };
  }

  factory JavaComponentPropertiesResponseScale.fromMap(Map<String, dynamic> map) {
    return JavaComponentPropertiesResponseScale(
      maxReplicas: map['maxReplicas'] == null ? null : (map['maxReplicas'] as int).input(),
      minReplicas: map['minReplicas'] == null ? null : (map['minReplicas'] as int).input(),
    );
  }
}

