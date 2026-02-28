// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_type.dart';

/// {@template pulumi_bigtableadmin_v2_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_bigtableadmin_v2_instance_args_doc}
class InstanceArgs {
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

  /// Creates a new [InstanceArgs].
  /// [clusters] The clusters to be created within the instance, mapped by desired cluster ID, e.g., just `mycluster` rather than `projects/myproject/instances/myinstance/clusters/mycluster`. Fields marked `OutputOnly` must be left blank.
  /// [displayName] The descriptive name for this instance as it appears in UIs. Can be changed at any time, but should be kept globally unique to avoid confusion.
  /// [instanceId] The ID to be used when referring to the new instance within its project, e.g., just `myinstance` rather than `projects/myproject/instances/myinstance`.
  /// [labels] Labels are a flexible and lightweight mechanism for organizing cloud resources into groups that reflect a customer's organizational needs and deployment strategies. They can be used to filter resources and aggregate metrics. * Label keys must be between 1 and 63 characters long and must conform to the regular expression: `\p{Ll}\p{Lo}{0,62}`. * Label values must be between 0 and 63 characters long and must conform to the regular expression: `[\p{Ll}\p{Lo}\p{N}_-]{0,63}`. * No more than 64 labels can be associated with a given resource. * Keys and values must both be under 128 bytes.
  /// [name] The unique name of the instance. Values are of the form `projects/{project}/instances/a-z+[a-z0-9]`.
  /// [parent] The unique name of the project in which to create the new instance. Values are of the form `projects/{project}`.
  /// [project] Optional.
  /// [type] The type of the instance. Defaults to `PRODUCTION`.
  InstanceArgs({
    required Map<String, String> clusters,
    required String displayName,
    required String instanceId,
    Map<String, String>? labels,
    String? name,
    required String parent,
    String? project,
    InstanceType? type,
  }) :
      clusters = pulumi.Input.asInput<Map<String, String>>(clusters),
      displayName = pulumi.Input.asInput<String>(displayName),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      parent = pulumi.Input.asInput<String>(parent),
      project = pulumi.Input.asOptionalInput<String>(project),
      type = pulumi.Input.asOptionalInput<InstanceType>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusters': clusters,
      'displayName': displayName,
      'instanceId': instanceId,
      'labels': ?labels,
      'name': ?name,
      'parent': parent,
      'project': ?project,
      'type': ?pulumi.Input.mapOptionalInputValue<InstanceType, String>(type, (value) => value.value),
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      clusters: (map['clusters'] as Map).cast<String, String>(),
      displayName: map['displayName'] as String,
      instanceId: map['instanceId'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      parent: map['parent'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      type: map['type'] == null ? null : InstanceType.fromValue(map['type'] as String),
    );
  }
}

