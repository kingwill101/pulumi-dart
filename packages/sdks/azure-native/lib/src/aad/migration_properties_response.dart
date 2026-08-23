// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migration_progress_response.dart';

/// Migration Properties
class MigrationPropertiesResponse {
  /// Migration Progress
  final pulumi.Input<MigrationProgressResponse> migrationProgress;
  /// Old Subnet Id
  final pulumi.Input<String> oldSubnetId;
  /// Old Vnet Site Id
  final pulumi.Input<String> oldVnetSiteId;

  /// Creates a new [MigrationPropertiesResponse].
  /// [migrationProgress] Migration Progress
  /// [oldSubnetId] Old Subnet Id
  /// [oldVnetSiteId] Old Vnet Site Id
  const MigrationPropertiesResponse({
    required this.migrationProgress,
    required this.oldSubnetId,
    required this.oldVnetSiteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'migrationProgress': pulumi.Input.mapInputValue<MigrationProgressResponse, Map<String, dynamic>>(migrationProgress, (value) => value.toMap()),
      'oldSubnetId': oldSubnetId,
      'oldVnetSiteId': oldVnetSiteId,
    };
  }

  factory MigrationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MigrationPropertiesResponse(
      migrationProgress: pulumi.Input.fromValue(MigrationProgressResponse.fromMap((map['migrationProgress']! as Map).cast<String, dynamic>())),
      oldSubnetId: pulumi.Input.fromValue(map['oldSubnetId'] as String),
      oldVnetSiteId: pulumi.Input.fromValue(map['oldVnetSiteId'] as String),
    );
  }
}
