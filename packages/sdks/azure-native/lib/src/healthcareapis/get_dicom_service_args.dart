// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcareapis_get_dicom_service_args_doc}
/// Arguments for getDicomService.
/// {@endtemplate}
/// {@macro pulumi_healthcareapis_get_dicom_service_args_doc}
class GetDicomServiceArgs {
  /// The name of DICOM Service resource.
  final pulumi.Input<String> dicomServiceName;

  /// The name of the resource group that contains the service instance.
  final pulumi.Input<String> resourceGroupName;

  /// The name of workspace resource.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetDicomServiceArgs].
  /// [dicomServiceName] The name of DICOM Service resource.
  /// [resourceGroupName] The name of the resource group that contains the service instance.
  /// [workspaceName] The name of workspace resource.
  GetDicomServiceArgs({
    required this.dicomServiceName,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dicomServiceName': dicomServiceName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetDicomServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetDicomServiceArgs(
      dicomServiceName: pulumi.Input.fromValue(
        map['dicomServiceName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
