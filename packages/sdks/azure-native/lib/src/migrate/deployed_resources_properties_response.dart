// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Class for deployed resource properties.
class DeployedResourcesPropertiesResponse {
  /// Gets or sets the context of deployed resources.
  final pulumi.Input<String> context;
  /// Gets or sets the deployed resource id.
  final pulumi.Input<String> deployedResourceId;
  /// Gets or sets the deployment timestamp.
  final pulumi.Input<String> deploymentTimestamp;
  /// Gets or sets the name of deployed resources.
  final pulumi.Input<String> displayName;
  /// Gets or sets the ID.
  final pulumi.Input<String> id;
  /// Gets or sets a value indicating whether resources are cleaned up from target.
  final pulumi.Input<bool> isCleanUpDone;
  /// Gets or sets a value indicating whether scenario is test migration.
  final pulumi.Input<bool> isTestMigration;
  /// Gets or sets the status of deployed resources.
  final pulumi.Input<String> status;
  /// Gets or sets the type of deployed resources.
  final pulumi.Input<String> type;

  /// Creates a new [DeployedResourcesPropertiesResponse].
  /// [context] Gets or sets the context of deployed resources.
  /// [deployedResourceId] Gets or sets the deployed resource id.
  /// [deploymentTimestamp] Gets or sets the deployment timestamp.
  /// [displayName] Gets or sets the name of deployed resources.
  /// [id] Gets or sets the ID.
  /// [isCleanUpDone] Gets or sets a value indicating whether resources are cleaned up from target.
  /// [isTestMigration] Gets or sets a value indicating whether scenario is test migration.
  /// [status] Gets or sets the status of deployed resources.
  /// [type] Gets or sets the type of deployed resources.
  DeployedResourcesPropertiesResponse({
    required this.context,
    required this.deployedResourceId,
    required this.deploymentTimestamp,
    required this.displayName,
    required this.id,
    required this.isCleanUpDone,
    required this.isTestMigration,
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'context': context,
      'deployedResourceId': deployedResourceId,
      'deploymentTimestamp': deploymentTimestamp,
      'displayName': displayName,
      'id': id,
      'isCleanUpDone': isCleanUpDone,
      'isTestMigration': isTestMigration,
      'status': status,
      'type': type,
    };
  }

  factory DeployedResourcesPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DeployedResourcesPropertiesResponse(
      context: (map['context'] as String).input(),
      deployedResourceId: (map['deployedResourceId'] as String).input(),
      deploymentTimestamp: (map['deploymentTimestamp'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      id: (map['id'] as String).input(),
      isCleanUpDone: (map['isCleanUpDone'] as bool).input(),
      isTestMigration: (map['isTestMigration'] as bool).input(),
      status: (map['status'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

