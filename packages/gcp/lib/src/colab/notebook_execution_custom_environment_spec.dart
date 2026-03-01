// ignore_for_file: unused_element, unnecessary_cast

import 'notebook_execution_custom_environment_spec_machine_spec.dart';
import 'notebook_execution_custom_environment_spec_network_spec.dart';
import 'notebook_execution_custom_environment_spec_persistent_disk_spec.dart';

class NotebookExecutionCustomEnvironmentSpec {
  /// 'The machine configuration of the runtime.'
  /// Structure is documented below.
  final NotebookExecutionCustomEnvironmentSpecMachineSpec? machineSpec;

  /// The network configuration for the runtime.
  /// Structure is documented below.
  final NotebookExecutionCustomEnvironmentSpecNetworkSpec? networkSpec;

  /// The configuration for the data disk of the runtime.
  /// Structure is documented below.
  final NotebookExecutionCustomEnvironmentSpecPersistentDiskSpec?
  persistentDiskSpec;

  /// Creates a new [NotebookExecutionCustomEnvironmentSpec].
  /// [machineSpec] 'The machine configuration of the runtime.'
  /// [networkSpec] The network configuration for the runtime.
  /// [persistentDiskSpec] The configuration for the data disk of the runtime.
  NotebookExecutionCustomEnvironmentSpec({
    this.machineSpec,
    this.networkSpec,
    this.persistentDiskSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'machineSpec': ?machineSpec == null ? null : machineSpec!.toMap(),
      'networkSpec': ?networkSpec == null ? null : networkSpec!.toMap(),
      'persistentDiskSpec': ?persistentDiskSpec == null
          ? null
          : persistentDiskSpec!.toMap(),
    };
  }

  factory NotebookExecutionCustomEnvironmentSpec.fromMap(
    Map<String, dynamic> map,
  ) {
    return NotebookExecutionCustomEnvironmentSpec(
      machineSpec: map['machineSpec'] == null
          ? null
          : NotebookExecutionCustomEnvironmentSpecMachineSpec.fromMap(
              (map['machineSpec'] as Map).cast<String, dynamic>(),
            ),
      networkSpec: map['networkSpec'] == null
          ? null
          : NotebookExecutionCustomEnvironmentSpecNetworkSpec.fromMap(
              (map['networkSpec'] as Map).cast<String, dynamic>(),
            ),
      persistentDiskSpec: map['persistentDiskSpec'] == null
          ? null
          : NotebookExecutionCustomEnvironmentSpecPersistentDiskSpec.fromMap(
              (map['persistentDiskSpec'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
