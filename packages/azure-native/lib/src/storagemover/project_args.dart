// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagemover_project_args_doc}
/// The set of arguments for Project.
/// {@endtemplate}
/// {@macro pulumi_storagemover_project_args_doc}
class ProjectArgs {
  /// A description for the Project.
  final pulumi.Input<String>? description;
  /// The name of the Project resource.
  final pulumi.Input<String>? projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Storage Mover resource.
  final pulumi.Input<String> storageMoverName;

  /// Creates a new [ProjectArgs].
  /// [description] A description for the Project.
  /// [projectName] The name of the Project resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageMoverName] The name of the Storage Mover resource.
  ProjectArgs({
    String? description,
    String? projectName,
    required String resourceGroupName,
    required String storageMoverName,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      projectName = pulumi.Input.asOptionalInput<String>(projectName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      storageMoverName = pulumi.Input.asInput<String>(storageMoverName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'projectName': ?projectName,
      'resourceGroupName': resourceGroupName,
      'storageMoverName': storageMoverName,
    };
  }

  factory ProjectArgs.fromMap(Map<String, dynamic> map) {
    return ProjectArgs(
      description: map['description'] == null ? null : map['description'] as String,
      projectName: map['projectName'] == null ? null : map['projectName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      storageMoverName: map['storageMoverName'] as String,
    );
  }
}

