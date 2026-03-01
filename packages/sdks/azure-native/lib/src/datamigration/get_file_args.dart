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
    required pulumi.Output<String> fileName,
    required pulumi.Output<String> groupName,
    required pulumi.Output<String> projectName,
    required pulumi.Output<String> serviceName,
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
      fileName: pulumi.Output.create<String>(map['fileName'] as String),
      groupName: pulumi.Output.create<String>(map['groupName'] as String),
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

