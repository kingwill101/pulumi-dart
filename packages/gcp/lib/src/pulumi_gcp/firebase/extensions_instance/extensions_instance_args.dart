// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../extensions_instance_config/extensions_instance_config.dart';

/// The set of arguments for ExtensionsInstance.
class ExtensionsInstanceArgs {
  /// The current Config of the Extension Instance.
  /// Structure is documented below.
  final pulumi.Input<ExtensionsInstanceConfig> config;

  /// The ID to use for the Extension Instance, which will become the final
  /// component of the instance's name.
  final pulumi.Input<String> instanceId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  ExtensionsInstanceArgs({
    required this.config,
    required this.instanceId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['config'] = pulumi.Input.mapInputValue<ExtensionsInstanceConfig,
        Map<String, dynamic>>(config, (value) => value.toMap());
    map['instanceId'] = instanceId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory ExtensionsInstanceArgs.fromMap(Map<String, dynamic> map) {
    return ExtensionsInstanceArgs(
      config: pulumi.Input.asInput<ExtensionsInstanceConfig>(map['config']),
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
