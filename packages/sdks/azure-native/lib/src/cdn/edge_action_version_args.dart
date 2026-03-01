// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_edge_action_version_args_doc}
/// The set of arguments for EdgeActionVersion.
/// {@endtemplate}
/// {@macro pulumi_cdn_edge_action_version_args_doc}
class EdgeActionVersionArgs {
  /// The deployment type
  final pulumi.Input<String> deploymentType;
  /// The name of the Edge Action
  final pulumi.Input<String> edgeActionName;
  /// The active state
  final pulumi.Input<String> isDefaultVersion;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the Edge Action version
  final pulumi.Input<String>? version;

  /// Creates a new [EdgeActionVersionArgs].
  /// [deploymentType] The deployment type
  /// [edgeActionName] The name of the Edge Action
  /// [isDefaultVersion] The active state
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [version] The name of the Edge Action version
  EdgeActionVersionArgs({
    required pulumi.Output<String> deploymentType,
    required pulumi.Output<String> edgeActionName,
    required pulumi.Output<String> isDefaultVersion,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? version,
  }) :
      deploymentType = pulumi.Input.asInput<String>(deploymentType),
      edgeActionName = pulumi.Input.asInput<String>(edgeActionName),
      isDefaultVersion = pulumi.Input.asInput<String>(isDefaultVersion),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentType': deploymentType,
      'edgeActionName': edgeActionName,
      'isDefaultVersion': isDefaultVersion,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'version': ?version,
    };
  }

  factory EdgeActionVersionArgs.fromMap(Map<String, dynamic> map) {
    return EdgeActionVersionArgs(
      deploymentType: pulumi.Output.create<String>(map['deploymentType'] as String),
      edgeActionName: pulumi.Output.create<String>(map['edgeActionName'] as String),
      isDefaultVersion: pulumi.Output.create<String>(map['isDefaultVersion'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

