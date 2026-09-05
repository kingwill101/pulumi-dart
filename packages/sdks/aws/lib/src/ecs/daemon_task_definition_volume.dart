// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'daemon_task_definition_volume_host.dart';

class DaemonTaskDefinitionVolume {
  /// Configuration for a host volume. Detailed below.
  final pulumi.Input<List<DaemonTaskDefinitionVolumeHost>?>? hosts;
  /// Name of the volume. This name is referenced in the `sourceVolume` parameter of container definition in the `mountPoints` section.
  final pulumi.Input<String> name;

  /// Creates a new [DaemonTaskDefinitionVolume].
  /// [hosts] Configuration for a host volume. Detailed below.
  /// [name] Name of the volume. This name is referenced in the `sourceVolume` parameter of container definition in the `mountPoints` section.
  const DaemonTaskDefinitionVolume({
    this.hosts,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hosts': ?pulumi.Input.mapOptionalInputValue<List<DaemonTaskDefinitionVolumeHost>, List<Map<String, dynamic>>>(hosts, (value) => pulumi.Input.encodeList<DaemonTaskDefinitionVolumeHost, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
    };
  }

  factory DaemonTaskDefinitionVolume.fromMap(Map<String, dynamic> map) {
    return DaemonTaskDefinitionVolume(
      hosts: (() { final guardedValue = map['hosts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DaemonTaskDefinitionVolumeHost>(guardedValue, (value) => DaemonTaskDefinitionVolumeHost.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
