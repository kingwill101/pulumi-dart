// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DaemonTaskDefinitionContainerDefinitionDependsOn {
  /// Dependency condition of the container. Valid values: `START`, `COMPLETE`, `SUCCESS`, `HEALTHY`.
  final pulumi.Input<String> condition;
  /// Name of a container.
  final pulumi.Input<String> containerName;

  /// Creates a new [DaemonTaskDefinitionContainerDefinitionDependsOn].
  /// [condition] Dependency condition of the container. Valid values: `START`, `COMPLETE`, `SUCCESS`, `HEALTHY`.
  /// [containerName] Name of a container.
  const DaemonTaskDefinitionContainerDefinitionDependsOn({
    required this.condition,
    required this.containerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': condition,
      'containerName': containerName,
    };
  }

  factory DaemonTaskDefinitionContainerDefinitionDependsOn.fromMap(Map<String, dynamic> map) {
    return DaemonTaskDefinitionContainerDefinitionDependsOn(
      condition: pulumi.Input.fromValue(map['condition'] as String),
      containerName: pulumi.Input.fromValue(map['containerName'] as String),
    );
  }
}
