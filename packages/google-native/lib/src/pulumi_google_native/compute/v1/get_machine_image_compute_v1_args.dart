// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getMachineImage.
class GetMachineImageComputeV1Args {
  final pulumi.Input<String> machineImage;
  final pulumi.Input<String>? project;

  GetMachineImageComputeV1Args({
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

  factory GetMachineImageComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetMachineImageComputeV1Args(
      machineImage: pulumi.Input.asInput<String>(map['machineImage']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
