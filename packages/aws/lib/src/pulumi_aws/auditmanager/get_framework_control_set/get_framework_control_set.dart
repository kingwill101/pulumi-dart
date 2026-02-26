// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_framework_control_set_control/get_framework_control_set_control.dart';

class GetFrameworkControlSet {
  final List<GetFrameworkControlSetControl> controls;
  final String id;

  /// Name of the framework.
  final String name;

  GetFrameworkControlSet({
    required this.controls,
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['controls'] =
        Input.encodeList<GetFrameworkControlSetControl, Map<String, dynamic>>(
            controls, (value) => value.toMap());
    map['id'] = id;
    map['name'] = name;
    return map;
  }

  factory GetFrameworkControlSet.fromMap(Map<String, dynamic> map) {
    return GetFrameworkControlSet(
      controls: Input.decodeList<GetFrameworkControlSetControl>(
          map['controls'],
          (value) => GetFrameworkControlSetControl.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }
}
