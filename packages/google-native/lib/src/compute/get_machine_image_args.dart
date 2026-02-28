// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_machine_image_args_doc}
/// Arguments for getMachineImage.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_machine_image_args_doc}
class GetMachineImageArgs {
  final pulumi.Input<String> machineImage;
  final pulumi.Input<String>? project;

  /// Creates a new [GetMachineImageArgs].
  /// [machineImage] Required.
  /// [project] Optional.
  GetMachineImageArgs({
    required String machineImage,
    String? project,
  })  : machineImage = pulumi.Input.asInput<String>(machineImage),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['machineImage'] = machineImage;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetMachineImageArgs.fromMap(Map<String, dynamic> map) {
    return GetMachineImageArgs(
      machineImage: map['machineImage'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
