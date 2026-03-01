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
    String? eTag,
    required String projectName,
    CollectorProperties? properties,
    required String resourceGroupName,
    String? serverCollectorName,
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
      eTag: map['eTag'] == null ? null : map['eTag'] as String,
      projectName: map['projectName'] as String,
      properties: map['properties'] == null ? null : CollectorProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      serverCollectorName: map['serverCollectorName'] == null ? null : map['serverCollectorName'] as String,
    );
  }
}

