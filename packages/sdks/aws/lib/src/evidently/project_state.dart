// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_data_delivery.dart';

/// Input properties used for looking up and filtering Project resources.
class ProjectState {
  /// The number of ongoing experiments currently in the project.
  final pulumi.Input<int>? activeExperimentCount;
  /// The number of ongoing launches currently in the project.
  final pulumi.Input<int>? activeLaunchCount;
  /// The ARN of the project.
  final pulumi.Input<String>? arn;
  /// The date and time that the project is created.
  final pulumi.Input<String>? createdTime;
  /// A block that contains information about where Evidently is to store evaluation events for longer term storage, if you choose to do so. If you choose not to store these events, Evidently deletes them after using them to produce metrics and other experiment results that you can view. See below.
  final pulumi.Input<ProjectDataDelivery>? dataDelivery;
  /// Specifies the description of the project.
  final pulumi.Input<String>? description;
  /// The number of experiments currently in the project. This includes all experiments that have been created and not deleted, whether they are ongoing or not.
  final pulumi.Input<int>? experimentCount;
  /// The number of features currently in the project.
  final pulumi.Input<int>? featureCount;
  /// The date and time that the project was most recently updated.
  final pulumi.Input<String>? lastUpdatedTime;
  /// The number of launches currently in the project. This includes all launches that have been created and not deleted, whether they are ongoing or not.
  final pulumi.Input<int>? launchCount;
  /// A name for the project.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The current state of the project. Valid values are `AVAILABLE` and `UPDATING`.
  final pulumi.Input<String>? status;
  /// Tags to apply to the project. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ProjectState].
  /// [activeExperimentCount] The number of ongoing experiments currently in the project.
  /// [activeLaunchCount] The number of ongoing launches currently in the project.
  /// [arn] The ARN of the project.
  /// [createdTime] The date and time that the project is created.
  /// [dataDelivery] A block that contains information about where Evidently is to store evaluation events for longer term storage, if you choose to do so. If you choose not to store these events, Evidently deletes them after using them to produce metrics and other experiment results that you can view. See below.
  /// [description] Specifies the description of the project.
  /// [experimentCount] The number of experiments currently in the project. This includes all experiments that have been created and not deleted, whether they are ongoing or not.
  /// [featureCount] The number of features currently in the project.
  /// [lastUpdatedTime] The date and time that the project was most recently updated.
  /// [launchCount] The number of launches currently in the project. This includes all launches that have been created and not deleted, whether they are ongoing or not.
  /// [name] A name for the project.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] The current state of the project. Valid values are `AVAILABLE` and `UPDATING`.
  /// [tags] Tags to apply to the project. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ProjectState({
    this.activeExperimentCount,
    this.activeLaunchCount,
    this.arn,
    this.createdTime,
    this.dataDelivery,
    this.description,
    this.experimentCount,
    this.featureCount,
    this.lastUpdatedTime,
    this.launchCount,
    this.name,
    this.region,
    this.status,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeExperimentCount': ?activeExperimentCount,
      'activeLaunchCount': ?activeLaunchCount,
      'arn': ?arn,
      'createdTime': ?createdTime,
      'dataDelivery': ?pulumi.Input.mapOptionalInputValue<ProjectDataDelivery, Map<String, dynamic>>(dataDelivery, (value) => value.toMap()),
      'description': ?description,
      'experimentCount': ?experimentCount,
      'featureCount': ?featureCount,
      'lastUpdatedTime': ?lastUpdatedTime,
      'launchCount': ?launchCount,
      'name': ?name,
      'region': ?region,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ProjectState.fromMap(Map<String, dynamic> map) {
    return ProjectState(
      activeExperimentCount: map['activeExperimentCount'] == null ? null : (map['activeExperimentCount'] as int).input(),
      activeLaunchCount: map['activeLaunchCount'] == null ? null : (map['activeLaunchCount'] as int).input(),
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      createdTime: map['createdTime'] == null ? null : (map['createdTime'] as String).input(),
      dataDelivery: map['dataDelivery'] == null ? null : (ProjectDataDelivery.fromMap((map['dataDelivery'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      experimentCount: map['experimentCount'] == null ? null : (map['experimentCount'] as int).input(),
      featureCount: map['featureCount'] == null ? null : (map['featureCount'] as int).input(),
      lastUpdatedTime: map['lastUpdatedTime'] == null ? null : (map['lastUpdatedTime'] as String).input(),
      launchCount: map['launchCount'] == null ? null : (map['launchCount'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

