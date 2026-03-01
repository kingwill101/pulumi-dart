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
    required String dicomServiceName,
    required String resourceGroupName,
    required String workspaceName,
  }) :
      dicomServiceName = pulumi.Input.asInput<String>(dicomServiceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dicomServiceName': dicomServiceName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetDicomServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetDicomServiceArgs(
      dicomServiceName: map['dicomServiceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

