// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'commit_properties.dart';

/// {@template pulumi_network_commit_args_doc}
/// The set of arguments for Commit.
/// {@endtemplate}
/// {@macro pulumi_network_commit_args_doc}
class CommitArgs {
  /// The name of the commit.
  final pulumi.Input<String?>? commitName;
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// The Commit properties
  final pulumi.Input<CommitProperties?>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [CommitArgs].
  /// [commitName] The name of the commit.
  /// [networkManagerName] The name of the network manager.
  /// [properties] The Commit properties
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const CommitArgs({
    this.commitName,
    required this.networkManagerName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitName': ?commitName,
      'networkManagerName': networkManagerName,
      'properties': ?pulumi.Input.mapOptionalInputValue<CommitProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory CommitArgs.fromMap(Map<String, dynamic> map) {
    return CommitArgs(
      commitName: (() { final guardedValue = map['commitName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkManagerName: pulumi.Input.fromValue(map['networkManagerName'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CommitProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
