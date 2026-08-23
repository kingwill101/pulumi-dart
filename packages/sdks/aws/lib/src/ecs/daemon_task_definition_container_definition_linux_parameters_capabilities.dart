// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DaemonTaskDefinitionContainerDefinitionLinuxParametersCapabilities {
  /// Linux capabilities for the container that have been added to the default configuration provided by Docker.
  final pulumi.Input<List<String>>? adds;
  /// Linux capabilities for the container that have been removed from the default configuration provided by Docker.
  final pulumi.Input<List<String>>? drops;

  /// Creates a new [DaemonTaskDefinitionContainerDefinitionLinuxParametersCapabilities].
  /// [adds] Linux capabilities for the container that have been added to the default configuration provided by Docker.
  /// [drops] Linux capabilities for the container that have been removed from the default configuration provided by Docker.
  const DaemonTaskDefinitionContainerDefinitionLinuxParametersCapabilities({
    this.adds,
    this.drops,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adds': ?adds,
      'drops': ?drops,
    };
  }

  factory DaemonTaskDefinitionContainerDefinitionLinuxParametersCapabilities.fromMap(Map<String, dynamic> map) {
    return DaemonTaskDefinitionContainerDefinitionLinuxParametersCapabilities(
      adds: (() { final guardedValue = map['adds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      drops: (() { final guardedValue = map['drops']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
