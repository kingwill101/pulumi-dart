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
    pulumi.Output<String>? fileName,
    required pulumi.Output<String> groupName,
    required pulumi.Output<String> projectName,
    pulumi.Output<ProjectFileProperties>? properties,
    required pulumi.Output<String> serviceName,
  }) :
      fileName = pulumi.Input.asOptionalInput<String>(fileName),
      groupName = pulumi.Input.asInput<String>(groupName),
      projectName = pulumi.Input.asInput<String>(projectName),
      properties = pulumi.Input.asOptionalInput<ProjectFileProperties>(properties),
      serviceName = pulumi.Input.asInput<String>(serviceName);

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
      fileName: map['fileName'] == null ? null : pulumi.Output.create<String>(map['fileName'] as String),
      groupName: pulumi.Output.create<String>(map['groupName'] as String),
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<ProjectFileProperties>(ProjectFileProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

