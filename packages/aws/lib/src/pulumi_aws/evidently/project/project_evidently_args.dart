// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../project_data_delivery/project_data_delivery.dart';

/// The set of arguments for Project.
class ProjectEvidentlyArgs {
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

  ProjectEvidentlyArgs({
    this.dataDelivery,
    this.description,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataDeliveryValue = dataDelivery;
    if (dataDeliveryValue != null) {
      map['dataDelivery'] = pulumi.Input.mapOptionalInputValue<
          ProjectDataDelivery,
          Map<String, dynamic>>(dataDeliveryValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ProjectEvidentlyArgs.fromMap(Map<String, dynamic> map) {
    return ProjectEvidentlyArgs(
      dataDelivery: pulumi.Input.asOptionalInput<ProjectDataDelivery>(
          map['dataDelivery']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
