// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DaemonTaskDefinitionContainerDefinitionLinuxParametersTmpf {
  /// Absolute file path where the tmpfs volume is to be mounted.
  final pulumi.Input<String> containerPath;
  /// List of tmpfs volume mount options.
  final pulumi.Input<List<String>?>? mountOptions;
  /// Maximum size (in MiB) of the tmpfs volume.
  final pulumi.Input<int> size;

  /// Creates a new [DaemonTaskDefinitionContainerDefinitionLinuxParametersTmpf].
  /// [containerPath] Absolute file path where the tmpfs volume is to be mounted.
  /// [mountOptions] List of tmpfs volume mount options.
  /// [size] Maximum size (in MiB) of the tmpfs volume.
  const DaemonTaskDefinitionContainerDefinitionLinuxParametersTmpf({
    required this.containerPath,
    this.mountOptions,
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerPath': containerPath,
      'mountOptions': ?mountOptions,
      'size': size,
    };
  }

  factory DaemonTaskDefinitionContainerDefinitionLinuxParametersTmpf.fromMap(Map<String, dynamic> map) {
    return DaemonTaskDefinitionContainerDefinitionLinuxParametersTmpf(
      containerPath: pulumi.Input.fromValue(map['containerPath'] as String),
      mountOptions: (() { final guardedValue = map['mountOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      size: pulumi.Input.fromValue((map['size'] as num).toInt()),
    );
  }
}
