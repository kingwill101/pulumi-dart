// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterTmpf {
  /// The absolute file path in the container where the tmpfs volume is mounted.
  final pulumi.Input<String> containerPath;

  /// The list of tmpfs volume mount options.
  final pulumi.Input<List<String>> mountOptions;

  /// The size (in MiB) of the tmpfs volume.
  final pulumi.Input<int> size;

  /// Creates a new [GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterTmpf].
  /// [containerPath] The absolute file path in the container where the tmpfs volume is mounted.
  /// [mountOptions] The list of tmpfs volume mount options.
  /// [size] The size (in MiB) of the tmpfs volume.
  GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterTmpf({
    required this.containerPath,
    required this.mountOptions,
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerPath': containerPath,
      'mountOptions': mountOptions,
      'size': size,
    };
  }

  factory GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterTmpf.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterTmpf(
      containerPath: pulumi.Input.fromValue(map['containerPath'] as String),
      mountOptions: pulumi.Input.fromValue(
        (map['mountOptions'] as List).cast<String>(),
      ),
      size: pulumi.Input.fromValue(map['size'] as int),
    );
  }
}
