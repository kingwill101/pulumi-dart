// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_framework_control_set_control.dart';

class GetFrameworkControlSet {
  final List<GetFrameworkControlSetControl> controls;
  final String id;
  /// Name of the framework.
  final String name;

  /// Creates a new [GetFrameworkControlSet].
  /// [controls] Required.
  /// [id] Required.
  /// [name] Name of the framework.
  GetFrameworkControlSet({
    required this.controls,
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controls': pulumi.Input.encodeList<GetFrameworkControlSetControl, Map<String, dynamic>>(controls, (value) => value.toMap()),
      'id': id,
      'name': name,
    };
  }

  factory GetFrameworkControlSet.fromMap(Map<String, dynamic> map) {
    return GetFrameworkControlSet(
      controls: pulumi.Input.decodeList<GetFrameworkControlSetControl>(map['controls'], (value) => GetFrameworkControlSetControl.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }
}

