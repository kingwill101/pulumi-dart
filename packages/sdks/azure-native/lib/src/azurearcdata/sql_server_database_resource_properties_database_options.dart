// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// List of features that are enabled for the database
class SqlServerDatabaseResourcePropertiesDatabaseOptions {
  final pulumi.Input<bool>? isAutoCloseOn;
  final pulumi.Input<bool>? isAutoCreateStatsOn;
  final pulumi.Input<bool>? isAutoShrinkOn;
  final pulumi.Input<bool>? isAutoUpdateStatsOn;
  final pulumi.Input<bool>? isEncrypted;
  final pulumi.Input<bool>? isMemoryOptimizationEnabled;
  final pulumi.Input<bool>? isRemoteDataArchiveEnabled;
  final pulumi.Input<bool>? isTrustworthyOn;

  /// Creates a new [SqlServerDatabaseResourcePropertiesDatabaseOptions].
  /// [isAutoCloseOn] Optional.
  /// [isAutoCreateStatsOn] Optional.
  /// [isAutoShrinkOn] Optional.
  /// [isAutoUpdateStatsOn] Optional.
  /// [isEncrypted] Optional.
  /// [isMemoryOptimizationEnabled] Optional.
  /// [isRemoteDataArchiveEnabled] Optional.
  /// [isTrustworthyOn] Optional.
  SqlServerDatabaseResourcePropertiesDatabaseOptions({
    this.isAutoCloseOn,
    this.isAutoCreateStatsOn,
    this.isAutoShrinkOn,
    this.isAutoUpdateStatsOn,
    this.isEncrypted,
    this.isMemoryOptimizationEnabled,
    this.isRemoteDataArchiveEnabled,
    this.isTrustworthyOn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isAutoCloseOn': ?isAutoCloseOn,
      'isAutoCreateStatsOn': ?isAutoCreateStatsOn,
      'isAutoShrinkOn': ?isAutoShrinkOn,
      'isAutoUpdateStatsOn': ?isAutoUpdateStatsOn,
      'isEncrypted': ?isEncrypted,
      'isMemoryOptimizationEnabled': ?isMemoryOptimizationEnabled,
      'isRemoteDataArchiveEnabled': ?isRemoteDataArchiveEnabled,
      'isTrustworthyOn': ?isTrustworthyOn,
    };
  }

  factory SqlServerDatabaseResourcePropertiesDatabaseOptions.fromMap(Map<String, dynamic> map) {
    return SqlServerDatabaseResourcePropertiesDatabaseOptions(
      isAutoCloseOn: map['isAutoCloseOn'] == null ? null : (map['isAutoCloseOn']! as bool).input(),
      isAutoCreateStatsOn: map['isAutoCreateStatsOn'] == null ? null : (map['isAutoCreateStatsOn']! as bool).input(),
      isAutoShrinkOn: map['isAutoShrinkOn'] == null ? null : (map['isAutoShrinkOn']! as bool).input(),
      isAutoUpdateStatsOn: map['isAutoUpdateStatsOn'] == null ? null : (map['isAutoUpdateStatsOn']! as bool).input(),
      isEncrypted: map['isEncrypted'] == null ? null : (map['isEncrypted']! as bool).input(),
      isMemoryOptimizationEnabled: map['isMemoryOptimizationEnabled'] == null ? null : (map['isMemoryOptimizationEnabled']! as bool).input(),
      isRemoteDataArchiveEnabled: map['isRemoteDataArchiveEnabled'] == null ? null : (map['isRemoteDataArchiveEnabled']! as bool).input(),
      isTrustworthyOn: map['isTrustworthyOn'] == null ? null : (map['isTrustworthyOn']! as bool).input(),
    );
  }
}

