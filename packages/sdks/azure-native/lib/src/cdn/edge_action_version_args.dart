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
    required this.deploymentType,
    required this.edgeActionName,
    required this.isDefaultVersion,
    this.location,
    required this.resourceGroupName,
    this.tags,
    this.version,
  });

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
      deploymentType: (map['deploymentType'] as String).input(),
      edgeActionName: (map['edgeActionName'] as String).input(),
      isDefaultVersion: (map['isDefaultVersion'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

