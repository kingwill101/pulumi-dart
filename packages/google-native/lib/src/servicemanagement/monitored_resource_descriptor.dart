// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'label_descriptor.dart';
import 'monitored_resource_descriptor_launch_stage.dart';

/// An object that describes the schema of a MonitoredResource object using a type name and a set of labels. For example, the monitored resource descriptor for Google Compute Engine VM instances has a type of `"gce_instance"` and specifies the use of the labels `"instance_id"` and `"zone"` to identify particular VM instances. Different APIs can support different monitored resource types. APIs generally provide a `list` method that returns the monitored resource descriptors used by the API.
class MonitoredResourceDescriptor {
  /// Optional. A detailed description of the monitored resource type that might be used in documentation.
  final String? description;

  /// Optional. A concise name for the monitored resource type that might be displayed in user interfaces. It should be a Title Cased Noun Phrase, without any article or other determiners. For example, `"Google Cloud SQL Database"`.
  final String? displayName;

  /// A set of labels used to describe instances of this monitored resource type. For example, an individual Google Cloud SQL database is identified by values for the labels `"database_id"` and `"zone"`.
  final List<LabelDescriptor> labels;

  /// Optional. The launch stage of the monitored resource definition.
  final MonitoredResourceDescriptorLaunchStage? launchStage;

  /// Optional. The resource name of the monitored resource descriptor: `"projects/{project_id}/monitoredResourceDescriptors/{type}"` where {type} is the value of the `type` field in this object and {project_id} is a project ID that provides API-specific context for accessing the type. APIs that do not use project information can use the resource name format `"monitoredResourceDescriptors/{type}"`.
  final String? name;

  /// The monitored resource type. For example, the type `"cloudsql_database"` represents databases in Google Cloud SQL. For a list of types, see [Monitoring resource types](https://cloud.google.com/monitoring/api/resources) and [Logging resource types](https://cloud.google.com/logging/docs/api/v2/resource-list).
  final String type;

  /// Creates a new [MonitoredResourceDescriptor].
  /// [description] Optional. A detailed description of the monitored resource type that might be used in documentation.
  /// [displayName] Optional. A concise name for the monitored resource type that might be displayed in user interfaces. It should be a Title Cased Noun Phrase, without any article or other determiners. For example, `"Google Cloud SQL Database"`.
  /// [labels] A set of labels used to describe instances of this monitored resource type. For example, an individual Google Cloud SQL database is identified by values for the labels `"database_id"` and `"zone"`.
  /// [launchStage] Optional. The launch stage of the monitored resource definition.
  /// [name] Optional. The resource name of the monitored resource descriptor: `"projects/{project_id}/monitoredResourceDescriptors/{type}"` where {type} is the value of the `type` field in this object and {project_id} is a project ID that provides API-specific context for accessing the type. APIs that do not use project information can use the resource name format `"monitoredResourceDescriptors/{type}"`.
  /// [type] The monitored resource type. For example, the type `"cloudsql_database"` represents databases in Google Cloud SQL. For a list of types, see [Monitoring resource types](https://cloud.google.com/monitoring/api/resources) and [Logging resource types](https://cloud.google.com/logging/docs/api/v2/resource-list).
  MonitoredResourceDescriptor({
    this.description,
    this.displayName,
    required this.labels,
    this.launchStage,
    this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['labels'] =
        pulumi.Input.encodeList<LabelDescriptor, Map<String, dynamic>>(
            labels, (value) => value.toMap());
    final launchStageValue = launchStage;
    if (launchStageValue != null) {
      map['launchStage'] = launchStageValue.value;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['type'] = type;
    return map;
  }

  factory MonitoredResourceDescriptor.fromMap(Map<String, dynamic> map) {
    return MonitoredResourceDescriptor(
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      labels: pulumi.Input.decodeList<LabelDescriptor>(
          map['labels'],
          (value) =>
              LabelDescriptor.fromMap((value as Map).cast<String, dynamic>())),
      launchStage: map['launchStage'] == null
          ? null
          : MonitoredResourceDescriptorLaunchStage.fromValue(
              map['launchStage'] as String),
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] as String,
    );
  }
}
