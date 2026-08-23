// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// List of features that are enabled for the database
class SqlServerDatabaseResourcePropertiesResponseDatabaseOptions {
  final pulumi.Input<bool>? isAutoCloseOn;
  final pulumi.Input<bool>? isAutoCreateStatsOn;
  final pulumi.Input<bool>? isAutoShrinkOn;
  final pulumi.Input<bool>? isAutoUpdateStatsOn;
  final pulumi.Input<bool>? isEncrypted;
  final pulumi.Input<bool>? isMemoryOptimizationEnabled;
  final pulumi.Input<bool>? isRemoteDataArchiveEnabled;
  final pulumi.Input<bool>? isTrustworthyOn;

  /// Creates a new [SqlServerDatabaseResourcePropertiesResponseDatabaseOptions].
  /// [isAutoCloseOn] Optional.
  /// [isAutoCreateStatsOn] Optional.
  /// [isAutoShrinkOn] Optional.
  /// [isAutoUpdateStatsOn] Optional.
  /// [isEncrypted] Optional.
  /// [isMemoryOptimizationEnabled] Optional.
  /// [isRemoteDataArchiveEnabled] Optional.
  /// [isTrustworthyOn] Optional.
  const SqlServerDatabaseResourcePropertiesResponseDatabaseOptions({
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

  factory SqlServerDatabaseResourcePropertiesResponseDatabaseOptions.fromMap(Map<String, dynamic> map) {
    return SqlServerDatabaseResourcePropertiesResponseDatabaseOptions(
      isAutoCloseOn: (() { final guardedValue = map['isAutoCloseOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isAutoCreateStatsOn: (() { final guardedValue = map['isAutoCreateStatsOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isAutoShrinkOn: (() { final guardedValue = map['isAutoShrinkOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isAutoUpdateStatsOn: (() { final guardedValue = map['isAutoUpdateStatsOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isEncrypted: (() { final guardedValue = map['isEncrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isMemoryOptimizationEnabled: (() { final guardedValue = map['isMemoryOptimizationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isRemoteDataArchiveEnabled: (() { final guardedValue = map['isRemoteDataArchiveEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isTrustworthyOn: (() { final guardedValue = map['isTrustworthyOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
