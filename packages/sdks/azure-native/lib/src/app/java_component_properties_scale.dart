// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Java component scaling configurations
class JavaComponentPropertiesScale {
  /// Optional. Maximum number of Java component replicas
  final pulumi.Input<int>? maxReplicas;
  /// Optional. Minimum number of Java component replicas. Defaults to 1 if not set
  final pulumi.Input<int>? minReplicas;

  /// Creates a new [JavaComponentPropertiesScale].
  /// [maxReplicas] Optional. Maximum number of Java component replicas
  /// [minReplicas] Optional. Minimum number of Java component replicas. Defaults to 1 if not set
  JavaComponentPropertiesScale({
    this.maxReplicas,
    this.minReplicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxReplicas': ?maxReplicas,
      'minReplicas': ?minReplicas,
    };
  }

  factory JavaComponentPropertiesScale.fromMap(Map<String, dynamic> map) {
    return JavaComponentPropertiesScale(
      maxReplicas: map['maxReplicas'] == null ? null : (map['maxReplicas']! as int).input(),
      minReplicas: map['minReplicas'] == null ? null : (map['minReplicas']! as int).input(),
    );
  }
}

