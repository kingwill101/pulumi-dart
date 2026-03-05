// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetJobDefinitionNodePropertyNodeRangePropertyContainerVolumeHost {
  /// The path on the host container instance that's presented to the container.
  final pulumi.Input<String> sourcePath;

  /// Creates a new [GetJobDefinitionNodePropertyNodeRangePropertyContainerVolumeHost].
  /// [sourcePath] The path on the host container instance that's presented to the container.
  GetJobDefinitionNodePropertyNodeRangePropertyContainerVolumeHost({
    required this.sourcePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourcePath': sourcePath,
    };
  }

  factory GetJobDefinitionNodePropertyNodeRangePropertyContainerVolumeHost.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionNodePropertyNodeRangePropertyContainerVolumeHost(
      sourcePath: pulumi.Input.fromValue(map['sourcePath'] as String),
    );
  }
}

