// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datamigration_get_file_args_doc}
/// Arguments for getFile.
/// {@endtemplate}
/// {@macro pulumi_datamigration_get_file_args_doc}
class GetFileArgs {
  /// Name of the File
  final pulumi.Input<String> fileName;
  /// Name of the resource group
  final pulumi.Input<String> groupName;
  /// Name of the project
  final pulumi.Input<String> projectName;
  /// Name of the service
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetFileArgs].
  /// [fileName] Name of the File
  /// [groupName] Name of the resource group
  /// [projectName] Name of the project
  /// [serviceName] Name of the service
  GetFileArgs({
    required String fileName,
    required String groupName,
    required String projectName,
    required String serviceName,
  }) :
      fileName = pulumi.Input.asInput<String>(fileName),
      groupName = pulumi.Input.asInput<String>(groupName),
      projectName = pulumi.Input.asInput<String>(projectName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileName': fileName,
      'groupName': groupName,
      'projectName': projectName,
      'serviceName': serviceName,
    };
  }

  factory GetFileArgs.fromMap(Map<String, dynamic> map) {
    return GetFileArgs(
      fileName: map['fileName'] as String,
      groupName: map['groupName'] as String,
      projectName: map['projectName'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}

