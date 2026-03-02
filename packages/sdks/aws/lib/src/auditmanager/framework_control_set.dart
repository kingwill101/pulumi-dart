// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'framework_control_set_control.dart';

class FrameworkControlSet {
  /// Configuration block(s) for the controls within the control set. See `controls` Block below for details.
  final pulumi.Input<List<FrameworkControlSetControl>>? controls;
  /// Unique identifier for the framework.
  final pulumi.Input<String>? id;
  /// Name of the control set.
  final pulumi.Input<String> name;

  /// Creates a new [FrameworkControlSet].
  /// [controls] Configuration block(s) for the controls within the control set. See `controls` Block below for details.
  /// [id] Unique identifier for the framework.
  /// [name] Name of the control set.
  FrameworkControlSet({
    this.controls,
    this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controls': ?pulumi.Input.mapOptionalInputValue<List<FrameworkControlSetControl>, List<Map<String, dynamic>>>(controls, (value) => pulumi.Input.encodeList<FrameworkControlSetControl, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'name': name,
    };
  }

  factory FrameworkControlSet.fromMap(Map<String, dynamic> map) {
    return FrameworkControlSet(
      controls: map['controls'] == null ? null : (pulumi.Input.decodeList<FrameworkControlSetControl>(map['controls'], (value) => FrameworkControlSetControl.fromMap((value as Map).cast<String, dynamic>()))).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

