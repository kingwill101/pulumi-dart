// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'label_descriptor_response3.dart';

/// An object that describes the schema of a MonitoredResource object using a type name and a set of labels. For example, the monitored resource descriptor for Google Compute Engine VM instances has a type of `"gce_instance"` and specifies the use of the labels `"instance_id"` and `"zone"` to identify particular VM instances. Different APIs can support different monitored resource types. APIs generally provide a `list` method that returns the monitored resource descriptors used by the API.
class MonitoredResourceDescriptorResponse {
  /// Optional. A detailed description of the monitored resource type that might be used in documentation.
  final String description;

  /// Optional. A concise name for the monitored resource type that might be displayed in user interfaces. It should be a Title Cased Noun Phrase, without any article or other determiners. For example, `"Google Cloud SQL Database"`.
  final String displayName;

  /// A set of labels used to describe instances of this monitored resource type. For example, an individual Google Cloud SQL database is identified by values for the labels `"database_id"` and `"zone"`.
  final List<LabelDescriptorResponse3> labels;

  /// Optional. The launch stage of the monitored resource definition.
  final String launchStage;

  /// Optional. The resource name of the monitored resource descriptor: `"projects/{project_id}/monitoredResourceDescriptors/{type}"` where {type} is the value of the `type` field in this object and {project_id} is a project ID that provides API-specific context for accessing the type. APIs that do not use project information can use the resource name format `"monitoredResourceDescriptors/{type}"`.
  final String name;

  /// The monitored resource type. For example, the type `"cloudsql_database"` represents databases in Google Cloud SQL. For a list of types, see [Monitoring resource types](https://cloud.google.com/monitoring/api/resources) and [Logging resource types](https://cloud.google.com/logging/docs/api/v2/resource-list).
  final String type;

  MonitoredResourceDescriptorResponse({
    required this.description,
    required this.displayName,
    required this.labels,
    required this.launchStage,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['displayName'] = displayName;
    map['labels'] =
        Input.encodeList<LabelDescriptorResponse3, Map<String, dynamic>>(
            labels, (value) => value.toMap());
    map['launchStage'] = launchStage;
    map['name'] = name;
    map['type'] = type;
    return map;
  }

  factory MonitoredResourceDescriptorResponse.fromMap(
      Map<String, dynamic> map) {
    return MonitoredResourceDescriptorResponse(
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      labels: Input.decodeList<LabelDescriptorResponse3>(
          map['labels'],
          (value) => LabelDescriptorResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
      launchStage: map['launchStage'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}
