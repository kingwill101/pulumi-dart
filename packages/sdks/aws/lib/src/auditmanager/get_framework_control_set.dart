// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_framework_control_set_control.dart';

class GetFrameworkControlSet {
  final pulumi.Input<List<GetFrameworkControlSetControl>> controls;
  final pulumi.Input<String> id;
  /// Name of the framework.
  final pulumi.Input<String> name;

  /// Creates a new [GetFrameworkControlSet].
  /// [controls] Required.
  /// [id] Required.
  /// [name] Name of the framework.
  const GetFrameworkControlSet({
    required this.controls,
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controls': pulumi.Input.mapInputValue<List<GetFrameworkControlSetControl>, List<Map<String, dynamic>>>(controls, (value) => pulumi.Input.encodeList<GetFrameworkControlSetControl, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
      'name': name,
    };
  }

  factory GetFrameworkControlSet.fromMap(Map<String, dynamic> map) {
    return GetFrameworkControlSet(
      controls: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFrameworkControlSetControl>(map['controls']!, (value) => GetFrameworkControlSetControl.fromMap((value as Map).cast<String, dynamic>()))),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

