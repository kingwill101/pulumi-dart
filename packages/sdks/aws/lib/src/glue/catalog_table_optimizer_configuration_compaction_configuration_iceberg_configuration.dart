// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CatalogTableOptimizerConfigurationCompactionConfigurationIcebergConfiguration {
  /// The minimum number of deletes that must be present in a data file to make it eligible for compaction. Defaults to `1`.
  final pulumi.Input<int>? deleteFileThreshold;
  /// The minimum number of data files that must be present in a partition before compaction will actually compact files. Defaults to `100`.
  final pulumi.Input<int>? minInputFiles;
  /// The strategy to use for compaction. Valid values are `binpack`, `sort` and `z-order` Defaults to `binpack`.
  final pulumi.Input<String>? strategy;

  /// Creates a new [CatalogTableOptimizerConfigurationCompactionConfigurationIcebergConfiguration].
  /// [deleteFileThreshold] The minimum number of deletes that must be present in a data file to make it eligible for compaction. Defaults to `1`.
  /// [minInputFiles] The minimum number of data files that must be present in a partition before compaction will actually compact files. Defaults to `100`.
  /// [strategy] The strategy to use for compaction. Valid values are `binpack`, `sort` and `z-order` Defaults to `binpack`.
  const CatalogTableOptimizerConfigurationCompactionConfigurationIcebergConfiguration({
    this.deleteFileThreshold,
    this.minInputFiles,
    this.strategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteFileThreshold': ?deleteFileThreshold,
      'minInputFiles': ?minInputFiles,
      'strategy': ?strategy,
    };
  }

  factory CatalogTableOptimizerConfigurationCompactionConfigurationIcebergConfiguration.fromMap(Map<String, dynamic> map) {
    return CatalogTableOptimizerConfigurationCompactionConfigurationIcebergConfiguration(
      deleteFileThreshold: (() { final guardedValue = map['deleteFileThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minInputFiles: (() { final guardedValue = map['minInputFiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      strategy: (() { final guardedValue = map['strategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
