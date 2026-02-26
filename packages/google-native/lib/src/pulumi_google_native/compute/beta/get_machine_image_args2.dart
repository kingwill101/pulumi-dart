// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getMachineImage.
class GetMachineImageArgs2 {
  final Input<String> machineImage;
  final Input<String>? project;

  GetMachineImageArgs2({
    required this.machineImage,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['machineImage'] = machineImage;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetMachineImageArgs2.fromMap(Map<String, dynamic> map) {
    return GetMachineImageArgs2(
      machineImage: Input.asInput<String>(map['machineImage']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
