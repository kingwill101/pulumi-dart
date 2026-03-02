// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_file_properties.dart';

/// {@template pulumi_datamigration_file_args_doc}
/// The set of arguments for File.
/// {@endtemplate}
/// {@macro pulumi_datamigration_file_args_doc}
class FileArgs {
  /// Name of the File
  final pulumi.Input<String>? fileName;
  /// Name of the resource group
  final pulumi.Input<String> groupName;
  /// Name of the project
  final pulumi.Input<String> projectName;
  /// Custom file properties
  final pulumi.Input<ProjectFileProperties>? properties;
  /// Name of the service
  final pulumi.Input<String> serviceName;

  /// Creates a new [FileArgs].
  /// [fileName] Name of the File
  /// [groupName] Name of the resource group
  /// [projectName] Name of the project
  /// [properties] Custom file properties
  /// [serviceName] Name of the service
  FileArgs({
    this.fileName,
    required this.groupName,
    required this.projectName,
    this.properties,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileName': ?fileName,
      'groupName': groupName,
      'projectName': projectName,
      'properties': ?pulumi.Input.mapOptionalInputValue<ProjectFileProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'serviceName': serviceName,
    };
  }

  factory FileArgs.fromMap(Map<String, dynamic> map) {
    return FileArgs(
      fileName: map['fileName'] == null ? null : (map['fileName'] as String).input(),
      groupName: (map['groupName'] as String).input(),
      projectName: (map['projectName'] as String).input(),
      properties: map['properties'] == null ? null : (ProjectFileProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      serviceName: (map['serviceName'] as String).input(),
    );
  }
}

