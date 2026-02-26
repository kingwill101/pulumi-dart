// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'instance_type.dart';

/// The set of arguments for Instance.
class InstanceArgs6 {
  /// The clusters to be created within the instance, mapped by desired cluster ID, e.g., just `mycluster` rather than `projects/myproject/instances/myinstance/clusters/mycluster`. Fields marked `OutputOnly` must be left blank.
  final Input<Map<String, String>> clusters;

  /// The descriptive name for this instance as it appears in UIs. Can be changed at any time, but should be kept globally unique to avoid confusion.
  final Input<String> displayName;

  /// The ID to be used when referring to the new instance within its project, e.g., just `myinstance` rather than `projects/myproject/instances/myinstance`.
  final Input<String> instanceId;

  /// Labels are a flexible and lightweight mechanism for organizing cloud resources into groups that reflect a customer's organizational needs and deployment strategies. They can be used to filter resources and aggregate metrics. * Label keys must be between 1 and 63 characters long and must conform to the regular expression: `\p{Ll}\p{Lo}{0,62}`. * Label values must be between 0 and 63 characters long and must conform to the regular expression: `[\p{Ll}\p{Lo}\p{N}_-]{0,63}`. * No more than 64 labels can be associated with a given resource. * Keys and values must both be under 128 bytes.
  final Input<Map<String, String>>? labels;

  /// The unique name of the instance. Values are of the form `projects/{project}/instances/a-z+[a-z0-9]`.
  final Input<String>? name;

  /// The unique name of the project in which to create the new instance. Values are of the form `projects/{project}`.
  final Input<String> parent;
  final Input<String>? project;

  /// The type of the instance. Defaults to `PRODUCTION`.
  final Input<InstanceType>? type;

  InstanceArgs6({
    required this.clusters,
    required this.displayName,
    required this.instanceId,
    this.labels,
    this.name,
    required this.parent,
    this.project,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusters'] = clusters;
    map['displayName'] = displayName;
    map['instanceId'] = instanceId;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['parent'] = parent;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = Input.mapOptionalInputValue<InstanceType, String>(
          typeValue, (value) => value.value);
    }
    return map;
  }

  factory InstanceArgs6.fromMap(Map<String, dynamic> map) {
    return InstanceArgs6(
      clusters: Input.asInput<Map<String, String>>(map['clusters']),
      displayName: Input.asInput<String>(map['displayName']),
      instanceId: Input.asInput<String>(map['instanceId']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: Input.asOptionalInput<String>(map['name']),
      parent: Input.asInput<String>(map['parent']),
      project: Input.asOptionalInput<String>(map['project']),
      type: Input.asOptionalInput<InstanceType>(map['type']),
    );
  }
}
