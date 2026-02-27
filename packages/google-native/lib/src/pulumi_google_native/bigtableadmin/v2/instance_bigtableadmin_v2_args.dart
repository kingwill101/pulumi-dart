// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_type.dart';

/// The set of arguments for Instance.
class InstanceBigtableadminV2Args {
  /// The clusters to be created within the instance, mapped by desired cluster ID, e.g., just `mycluster` rather than `projects/myproject/instances/myinstance/clusters/mycluster`. Fields marked `OutputOnly` must be left blank.
  final pulumi.Input<Map<String, String>> clusters;

  /// The descriptive name for this instance as it appears in UIs. Can be changed at any time, but should be kept globally unique to avoid confusion.
  final pulumi.Input<String> displayName;

  /// The ID to be used when referring to the new instance within its project, e.g., just `myinstance` rather than `projects/myproject/instances/myinstance`.
  final pulumi.Input<String> instanceId;

  /// Labels are a flexible and lightweight mechanism for organizing cloud resources into groups that reflect a customer's organizational needs and deployment strategies. They can be used to filter resources and aggregate metrics. * Label keys must be between 1 and 63 characters long and must conform to the regular expression: `\p{Ll}\p{Lo}{0,62}`. * Label values must be between 0 and 63 characters long and must conform to the regular expression: `[\p{Ll}\p{Lo}\p{N}_-]{0,63}`. * No more than 64 labels can be associated with a given resource. * Keys and values must both be under 128 bytes.
  final pulumi.Input<Map<String, String>>? labels;

  /// The unique name of the instance. Values are of the form `projects/{project}/instances/a-z+[a-z0-9]`.
  final pulumi.Input<String>? name;

  /// The unique name of the project in which to create the new instance. Values are of the form `projects/{project}`.
  final pulumi.Input<String> parent;
  final pulumi.Input<String>? project;

  /// The type of the instance. Defaults to `PRODUCTION`.
  final pulumi.Input<InstanceType>? type;

  InstanceBigtableadminV2Args({
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
      map['type'] = pulumi.Input.mapOptionalInputValue<InstanceType, String>(
          typeValue, (value) => value.value);
    }
    return map;
  }

  factory InstanceBigtableadminV2Args.fromMap(Map<String, dynamic> map) {
    return InstanceBigtableadminV2Args(
      clusters: pulumi.Input.asInput<Map<String, String>>(map['clusters']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      parent: pulumi.Input.asInput<String>(map['parent']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      type: pulumi.Input.asOptionalInput<InstanceType>(map['type']),
    );
  }
}
