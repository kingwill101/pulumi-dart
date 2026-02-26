// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../instance_settings_metadata/instance_settings_metadata.dart';

/// The set of arguments for InstanceSettings.
class InstanceSettingsArgs {
  /// The metadata key/value pairs assigned to all the instances in the corresponding scope.
  /// Structure is documented below.
  final Input<InstanceSettingsMetadata>? metadata;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// A reference to the zone where the machine resides.
  final Input<String> zone;

  InstanceSettingsArgs({
    this.metadata,
    this.project,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = Input.mapOptionalInputValue<InstanceSettingsMetadata,
          Map<String, dynamic>>(metadataValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['zone'] = zone;
    return map;
  }

  factory InstanceSettingsArgs.fromMap(Map<String, dynamic> map) {
    return InstanceSettingsArgs(
      metadata:
          Input.asOptionalInput<InstanceSettingsMetadata>(map['metadata']),
      project: Input.asOptionalInput<String>(map['project']),
      zone: Input.asInput<String>(map['zone']),
    );
  }
}
