// ignore_for_file: unused_element, unnecessary_cast

import 'instance_group_manager_version_target_size.dart';

class InstanceGroupManagerVersion {
  /// The full URL to an instance template from which all new instances of this version will be created. It is recommended to reference instance templates through their unique id (`self_link_unique` attribute).
  final String instanceTemplate;

  /// Version name.
  final String? name;

  /// The number of instances calculated as a fixed number or a percentage depending on the settings. Structure is documented below.
  ///
  /// > Exactly one `version` you specify must not have a `target_size` specified. During a rolling update, the instance group manager will fulfill the `target_size`
  /// constraints of every other `version`, and any remaining instances will be provisioned with the version where `target_size` is unset.
  final InstanceGroupManagerVersionTargetSize? targetSize;

  /// Creates a new [InstanceGroupManagerVersion].
  /// [instanceTemplate] The full URL to an instance template from which all new instances of this version will be created. It is recommended to reference instance templates through their unique id (`self_link_unique` attribute).
  /// [name] Version name.
  /// [targetSize] The number of instances calculated as a fixed number or a percentage depending on the settings. Structure is documented below.
  InstanceGroupManagerVersion({
    required this.instanceTemplate,
    this.name,
    this.targetSize,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceTemplate'] = instanceTemplate;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final targetSizeValue = targetSize;
    if (targetSizeValue != null) {
      map['targetSize'] = targetSizeValue.toMap();
    }
    return map;
  }

  factory InstanceGroupManagerVersion.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerVersion(
      instanceTemplate: map['instanceTemplate'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      targetSize: map['targetSize'] == null
          ? null
          : InstanceGroupManagerVersionTargetSize.fromMap(
              (map['targetSize'] as Map).cast<String, dynamic>()),
    );
  }
}
