// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterTmpf {
  /// Path on the container where the host volume is mounted.
  final pulumi.Input<String> containerPath;
  /// List of tmpfs volume mount options.
  final pulumi.Input<List<String>> mountOptions;
  /// Size (in MiB) of the tmpfs volume.
  final pulumi.Input<int> size;

  /// Creates a new [GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterTmpf].
  /// [containerPath] Path on the container where the host volume is mounted.
  /// [mountOptions] List of tmpfs volume mount options.
  /// [size] Size (in MiB) of the tmpfs volume.
  const GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterTmpf({
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

  factory GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterTmpf.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionNodePropertyNodeRangePropertyContainerLinuxParameterTmpf(
      containerPath: pulumi.Input.fromValue(map['containerPath'] as String),
      mountOptions: pulumi.Input.fromValue((map['mountOptions'] as List).cast<String>()),
      size: pulumi.Input.fromValue(map['size'] as int),
    );
  }
}
