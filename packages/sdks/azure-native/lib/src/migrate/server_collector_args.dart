// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'collector_properties.dart';

/// {@template pulumi_migrate_server_collector_args_doc}
/// The set of arguments for ServerCollector.
/// {@endtemplate}
/// {@macro pulumi_migrate_server_collector_args_doc}
class ServerCollectorArgs {
  final pulumi.Input<String>? eTag;
  /// Name of the Azure Migrate project.
  final pulumi.Input<String> projectName;
  final pulumi.Input<CollectorProperties>? properties;
  /// Name of the Azure Resource Group that project is part of.
  final pulumi.Input<String> resourceGroupName;
  /// Unique name of a Server collector within a project.
  final pulumi.Input<String>? serverCollectorName;

  /// Creates a new [ServerCollectorArgs].
  /// [eTag] Optional.
  /// [projectName] Name of the Azure Migrate project.
  /// [properties] Optional.
  /// [resourceGroupName] Name of the Azure Resource Group that project is part of.
  /// [serverCollectorName] Unique name of a Server collector within a project.
  ServerCollectorArgs({
    pulumi.Output<String>? eTag,
    required pulumi.Output<String> projectName,
    pulumi.Output<CollectorProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? serverCollectorName,
  }) :
      eTag = pulumi.Input.asOptionalInput<String>(eTag),
      projectName = pulumi.Input.asInput<String>(projectName),
      properties = pulumi.Input.asOptionalInput<CollectorProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverCollectorName = pulumi.Input.asOptionalInput<String>(serverCollectorName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eTag': ?eTag,
      'projectName': projectName,
      'properties': ?pulumi.Input.mapOptionalInputValue<CollectorProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serverCollectorName': ?serverCollectorName,
    };
  }

  factory ServerCollectorArgs.fromMap(Map<String, dynamic> map) {
    return ServerCollectorArgs(
      eTag: map['eTag'] == null ? null : pulumi.Output.create<String>(map['eTag'] as String),
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<CollectorProperties>(CollectorProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverCollectorName: map['serverCollectorName'] == null ? null : pulumi.Output.create<String>(map['serverCollectorName'] as String),
    );
  }
}

