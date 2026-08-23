// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_import_collectors_operation_args_doc}
/// The set of arguments for ImportCollectorsOperation.
/// {@endtemplate}
/// {@macro pulumi_migrate_import_collectors_operation_args_doc}
class ImportCollectorsOperationArgs {
  /// Gets the discovery site id.
  final pulumi.Input<String>? discoverySiteId;
  /// Import collector ARM name
  final pulumi.Input<String>? importCollectorName;
  /// Assessment Project Name
  final pulumi.Input<String> projectName;
  /// The status of the last operation.
  final pulumi.Input<String>? provisioningState;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ImportCollectorsOperationArgs].
  /// [discoverySiteId] Gets the discovery site id.
  /// [importCollectorName] Import collector ARM name
  /// [projectName] Assessment Project Name
  /// [provisioningState] The status of the last operation.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const ImportCollectorsOperationArgs({
    this.discoverySiteId,
    this.importCollectorName,
    required this.projectName,
    this.provisioningState,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discoverySiteId': ?discoverySiteId,
      'importCollectorName': ?importCollectorName,
      'projectName': projectName,
      'provisioningState': ?provisioningState,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ImportCollectorsOperationArgs.fromMap(Map<String, dynamic> map) {
    return ImportCollectorsOperationArgs(
      discoverySiteId: (() { final guardedValue = map['discoverySiteId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      importCollectorName: (() { final guardedValue = map['importCollectorName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
