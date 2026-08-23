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
  /// Tags to apply to the project. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
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
  /// [tags] Tags to apply to the project. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const ProjectState({
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
      activeExperimentCount: (() { final guardedValue = map['activeExperimentCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      activeLaunchCount: (() { final guardedValue = map['activeLaunchCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdTime: (() { final guardedValue = map['createdTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataDelivery: (() { final guardedValue = map['dataDelivery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectDataDelivery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      experimentCount: (() { final guardedValue = map['experimentCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      featureCount: (() { final guardedValue = map['featureCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      lastUpdatedTime: (() { final guardedValue = map['lastUpdatedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      launchCount: (() { final guardedValue = map['launchCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
