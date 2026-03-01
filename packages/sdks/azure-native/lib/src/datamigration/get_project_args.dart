// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datamigration_get_project_args_doc}
/// Arguments for getProject.
/// {@endtemplate}
/// {@macro pulumi_datamigration_get_project_args_doc}
class GetProjectArgs {
  /// Name of the resource group
  final pulumi.Input<String> groupName;
  /// Name of the project
  final pulumi.Input<String> projectName;
  /// Name of the service
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetProjectArgs].
  /// [groupName] Name of the resource group
  /// [projectName] Name of the project
  /// [serviceName] Name of the service
  GetProjectArgs({
    required pulumi.Output<String> groupName,
    required pulumi.Output<String> projectName,
    required pulumi.Output<String> serviceName,
  }) :
      groupName = pulumi.Input.asInput<String>(groupName),
      projectName = pulumi.Input.asInput<String>(projectName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupName': groupName,
      'projectName': projectName,
      'serviceName': serviceName,
    };
  }

  factory GetProjectArgs.fromMap(Map<String, dynamic> map) {
    return GetProjectArgs(
      groupName: pulumi.Output.create<String>(map['groupName'] as String),
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

