// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devtestlab_get_artifact_source_args_doc}
/// Arguments for getArtifactSource.
/// {@endtemplate}
/// {@macro pulumi_devtestlab_get_artifact_source_args_doc}
class GetArtifactSourceArgs {
  /// Specify the $expand query. Example: 'properties($select=displayName)'
  final pulumi.Input<String>? expand;
  /// The name of the lab.
  final pulumi.Input<String> labName;
  /// The name of the ArtifactSource
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetArtifactSourceArgs].
  /// [expand] Specify the $expand query. Example: 'properties($select=displayName)'
  /// [labName] The name of the lab.
  /// [name] The name of the ArtifactSource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetArtifactSourceArgs({
    pulumi.Output<String>? expand,
    required pulumi.Output<String> labName,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      expand = pulumi.Input.asOptionalInput<String>(expand),
      labName = pulumi.Input.asInput<String>(labName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'labName': labName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetArtifactSourceArgs.fromMap(Map<String, dynamic> map) {
    return GetArtifactSourceArgs(
      expand: map['expand'] == null ? null : pulumi.Output.create<String>(map['expand'] as String),
      labName: pulumi.Output.create<String>(map['labName'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

