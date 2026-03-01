// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_get_dicom_service_get_dicom_service_args_doc}
/// Arguments for getDicomService.
/// {@endtemplate}
/// {@macro pulumi_healthcare_get_dicom_service_get_dicom_service_args_doc}
class GetDicomServiceArgs {
  /// The name of the Healthcare DICOM Service
  final pulumi.Input<String> name;
  /// The ID of the Healthcare Workspace in which the Healthcare DICOM Service exists.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [GetDicomServiceArgs].
  /// [name] The name of the Healthcare DICOM Service
  /// [workspaceId] The ID of the Healthcare Workspace in which the Healthcare DICOM Service exists.
  GetDicomServiceArgs({
    required String name,
    required String workspaceId,
  }) :
      name = pulumi.Input.asInput<String>(name),
      workspaceId = pulumi.Input.asInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'workspaceId': workspaceId,
    };
  }

  factory GetDicomServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetDicomServiceArgs(
      name: map['name'] as String,
      workspaceId: map['workspaceId'] as String,
    );
  }
}

