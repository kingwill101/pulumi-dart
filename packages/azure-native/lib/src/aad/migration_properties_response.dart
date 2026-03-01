// ignore_for_file: unused_element, unnecessary_cast

import 'migration_progress_response.dart';

/// Migration Properties
class MigrationPropertiesResponse {
  /// Migration Progress
  final MigrationProgressResponse migrationProgress;
  /// Old Subnet Id
  final String oldSubnetId;
  /// Old Vnet Site Id
  final String oldVnetSiteId;

  /// Creates a new [MigrationPropertiesResponse].
  /// [migrationProgress] Migration Progress
  /// [oldSubnetId] Old Subnet Id
  /// [oldVnetSiteId] Old Vnet Site Id
  MigrationPropertiesResponse({
    required this.migrationProgress,
    required this.oldSubnetId,
    required this.oldVnetSiteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'migrationProgress': migrationProgress.toMap(),
      'oldSubnetId': oldSubnetId,
      'oldVnetSiteId': oldVnetSiteId,
    };
  }

  factory MigrationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MigrationPropertiesResponse(
      migrationProgress: MigrationProgressResponse.fromMap((map['migrationProgress'] as Map).cast<String, dynamic>()),
      oldSubnetId: map['oldSubnetId'] as String,
      oldVnetSiteId: map['oldVnetSiteId'] as String,
    );
  }
}

