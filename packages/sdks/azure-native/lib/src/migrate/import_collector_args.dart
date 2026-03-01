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
    pulumi.Output<String>? eTag,
    pulumi.Output<String>? importCollectorName,
    required pulumi.Output<String> projectName,
    pulumi.Output<ImportCollectorProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
  }) :
      eTag = pulumi.Input.asOptionalInput<String>(eTag),
      importCollectorName = pulumi.Input.asOptionalInput<String>(importCollectorName),
      projectName = pulumi.Input.asInput<String>(projectName),
      properties = pulumi.Input.asOptionalInput<ImportCollectorProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      eTag: map['eTag'] == null ? null : pulumi.Output.create<String>(map['eTag'] as String),
      importCollectorName: map['importCollectorName'] == null ? null : pulumi.Output.create<String>(map['importCollectorName'] as String),
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<ImportCollectorProperties>(ImportCollectorProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

