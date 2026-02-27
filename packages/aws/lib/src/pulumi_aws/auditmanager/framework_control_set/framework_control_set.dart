// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../framework_control_set_control/framework_control_set_control.dart';

class FrameworkControlSet {
  /// Configuration block(s) for the controls within the control set. See `controls` Block below for details.
  final List<FrameworkControlSetControl>? controls;

  /// Unique identifier for the framework.
  final String? id;

  /// Name of the control set.
  final String name;

  FrameworkControlSet({
    this.controls,
    this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final controlsValue = controls;
    if (controlsValue != null) {
      map['controls'] =
          Input.encodeList<FrameworkControlSetControl, Map<String, dynamic>>(
              controlsValue, (value) => value.toMap());
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    map['name'] = name;
    return map;
  }

  factory FrameworkControlSet.fromMap(Map<String, dynamic> map) {
    return FrameworkControlSet(
      controls: map['controls'] == null
          ? null
          : Input.decodeList<FrameworkControlSetControl>(
              map['controls'],
              (value) => FrameworkControlSetControl.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] as String,
    );
  }
}
