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
  ImportCollectorsOperationArgs({
    String? discoverySiteId,
    String? importCollectorName,
    required String projectName,
    String? provisioningState,
    required String resourceGroupName,
  }) :
      discoverySiteId = pulumi.Input.asOptionalInput<String>(discoverySiteId),
      importCollectorName = pulumi.Input.asOptionalInput<String>(importCollectorName),
      projectName = pulumi.Input.asInput<String>(projectName),
      provisioningState = pulumi.Input.asOptionalInput<String>(provisioningState),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      discoverySiteId: map['discoverySiteId'] == null ? null : map['discoverySiteId'] as String,
      importCollectorName: map['importCollectorName'] == null ? null : map['importCollectorName'] as String,
      projectName: map['projectName'] as String,
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

