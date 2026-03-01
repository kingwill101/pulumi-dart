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
    required String deploymentType,
    required String edgeActionName,
    required String isDefaultVersion,
    String? location,
    required String resourceGroupName,
    Map<String, String>? tags,
    String? version,
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
      deploymentType: map['deploymentType'] as String,
      edgeActionName: map['edgeActionName'] as String,
      isDefaultVersion: map['isDefaultVersion'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

