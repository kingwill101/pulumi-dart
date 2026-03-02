// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datahub_project_project_args_doc}
/// The set of arguments for Project.
/// {@endtemplate}
/// {@macro pulumi_datahub_project_project_args_doc}
class ProjectArgs {
  /// Comment of the datahub project. It cannot be longer than 255 characters.
  final pulumi.Input<String>? comment;
  /// The name of the datahub project. Its length is limited to 3-32 and only characters such as letters, digits and '_' are allowed. It is case-insensitive.
  final pulumi.Input<String>? name;

  /// Creates a new [ProjectArgs].
  /// [comment] Comment of the datahub project. It cannot be longer than 255 characters.
  /// [name] The name of the datahub project. Its length is limited to 3-32 and only characters such as letters, digits and '_' are allowed. It is case-insensitive.
  ProjectArgs({
    this.comment,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'name': ?name,
    };
  }

  factory ProjectArgs.fromMap(Map<String, dynamic> map) {
    return ProjectArgs(
      comment: map['comment'] == null ? null : (map['comment'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

