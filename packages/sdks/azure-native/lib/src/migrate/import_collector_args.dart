// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'import_collector_properties.dart';

/// {@template pulumi_migrate_import_collector_args_doc}
/// The set of arguments for ImportCollector.
/// {@endtemplate}
/// {@macro pulumi_migrate_import_collector_args_doc}
class ImportCollectorArgs {
  final pulumi.Input<String>? eTag;
  /// Unique name of a Import collector within a project.
  final pulumi.Input<String>? importCollectorName;
  /// Name of the Azure Migrate project.
  final pulumi.Input<String> projectName;
  final pulumi.Input<ImportCollectorProperties>? properties;
  /// Name of the Azure Resource Group that project is part of.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ImportCollectorArgs].
  /// [eTag] Optional.
  /// [importCollectorName] Unique name of a Import collector within a project.
  /// [projectName] Name of the Azure Migrate project.
  /// [properties] Optional.
  /// [resourceGroupName] Name of the Azure Resource Group that project is part of.
  ImportCollectorArgs({
    this.eTag,
    this.importCollectorName,
    required this.projectName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eTag': ?eTag,
      'importCollectorName': ?importCollectorName,
      'projectName': projectName,
      'properties': ?pulumi.Input.mapOptionalInputValue<ImportCollectorProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ImportCollectorArgs.fromMap(Map<String, dynamic> map) {
    return ImportCollectorArgs(
      eTag: map['eTag'] == null ? null : (map['eTag'] as String).input(),
      importCollectorName: map['importCollectorName'] == null ? null : (map['importCollectorName'] as String).input(),
      projectName: (map['projectName'] as String).input(),
      properties: map['properties'] == null ? null : (ImportCollectorProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

