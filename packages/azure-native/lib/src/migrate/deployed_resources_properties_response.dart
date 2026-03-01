// ignore_for_file: unused_element, unnecessary_cast


/// Class for deployed resource properties.
class DeployedResourcesPropertiesResponse {
  /// Gets or sets the context of deployed resources.
  final String context;
  /// Gets or sets the deployed resource id.
  final String deployedResourceId;
  /// Gets or sets the deployment timestamp.
  final String deploymentTimestamp;
  /// Gets or sets the name of deployed resources.
  final String displayName;
  /// Gets or sets the ID.
  final String id;
  /// Gets or sets a value indicating whether resources are cleaned up from target.
  final bool isCleanUpDone;
  /// Gets or sets a value indicating whether scenario is test migration.
  final bool isTestMigration;
  /// Gets or sets the status of deployed resources.
  final String status;
  /// Gets or sets the type of deployed resources.
  final String type;

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
      context: map['context'] as String,
      deployedResourceId: map['deployedResourceId'] as String,
      deploymentTimestamp: map['deploymentTimestamp'] as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      isCleanUpDone: map['isCleanUpDone'] as bool,
      isTestMigration: map['isTestMigration'] as bool,
      status: map['status'] as String,
      type: map['type'] as String,
    );
  }
}

