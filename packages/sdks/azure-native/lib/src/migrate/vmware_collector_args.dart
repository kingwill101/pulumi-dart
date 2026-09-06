// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'collector_properties.dart';

/// {@template pulumi_migrate_vmware_collector_args_doc}
/// The set of arguments for VMwareCollector.
/// {@endtemplate}
/// {@macro pulumi_migrate_vmware_collector_args_doc}
class VMwareCollectorArgs {
  final pulumi.Input<String?>? eTag;
  /// Name of the Azure Migrate project.
  final pulumi.Input<String> projectName;
  final pulumi.Input<CollectorProperties?>? properties;
  /// Name of the Azure Resource Group that project is part of.
  final pulumi.Input<String> resourceGroupName;
  /// Unique name of a VMware collector within a project.
  final pulumi.Input<String?>? vmWareCollectorName;

  /// Creates a new [VMwareCollectorArgs].
  /// [eTag] Optional.
  /// [projectName] Name of the Azure Migrate project.
  /// [properties] Optional.
  /// [resourceGroupName] Name of the Azure Resource Group that project is part of.
  /// [vmWareCollectorName] Unique name of a VMware collector within a project.
  const VMwareCollectorArgs({
    this.eTag,
    required this.projectName,
    this.properties,
    required this.resourceGroupName,
    this.vmWareCollectorName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eTag': ?eTag,
      'projectName': projectName,
      'properties': ?pulumi.Input.mapOptionalInputValue<CollectorProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'vmWareCollectorName': ?vmWareCollectorName,
    };
  }

  factory VMwareCollectorArgs.fromMap(Map<String, dynamic> map) {
    return VMwareCollectorArgs(
      eTag: (() { final guardedValue = map['eTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CollectorProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      vmWareCollectorName: (() { final guardedValue = map['vmWareCollectorName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
