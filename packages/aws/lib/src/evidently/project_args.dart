// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_data_delivery.dart';

/// {@template pulumi_evidently_project_project_args_doc}
/// The set of arguments for Project.
/// {@endtemplate}
/// {@macro pulumi_evidently_project_project_args_doc}
class ProjectArgs {
  /// A block that contains information about where Evidently is to store evaluation events for longer term storage, if you choose to do so. If you choose not to store these events, Evidently deletes them after using them to produce metrics and other experiment results that you can view. See below.
  final pulumi.Input<ProjectDataDelivery>? dataDelivery;

  /// Specifies the description of the project.
  final pulumi.Input<String>? description;

  /// A name for the project.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Tags to apply to the project. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ProjectArgs].
  /// [dataDelivery] A block that contains information about where Evidently is to store evaluation events for longer term storage, if you choose to do so. If you choose not to store these events, Evidently deletes them after using them to produce metrics and other experiment results that you can view. See below.
  /// [description] Specifies the description of the project.
  /// [name] A name for the project.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Tags to apply to the project. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ProjectArgs({
    ProjectDataDelivery? dataDelivery,
    String? description,
    String? name,
    String? region,
    Map<String, String>? tags,
  }) : dataDelivery = pulumi.Input.asOptionalInput<ProjectDataDelivery>(
         dataDelivery,
       ),
       description = pulumi.Input.asOptionalInput<String>(description),
       name = pulumi.Input.asOptionalInput<String>(name),
       region = pulumi.Input.asOptionalInput<String>(region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDelivery':
          ?pulumi.Input.mapOptionalInputValue<
            ProjectDataDelivery,
            Map<String, dynamic>
          >(dataDelivery, (value) => value.toMap()),
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory ProjectArgs.fromMap(Map<String, dynamic> map) {
    return ProjectArgs(
      dataDelivery: map['dataDelivery'] == null
          ? null
          : ProjectDataDelivery.fromMap(
              (map['dataDelivery'] as Map).cast<String, dynamic>(),
            ),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
