// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CatalogTableOptimizerConfigurationCompactionConfigurationIcebergConfiguration {
  /// Minimum number of deletes that must be present in a data file to make it eligible for compaction. Defaults to `1`.
  final pulumi.Input<int?>? deleteFileThreshold;
  /// Minimum number of data files that must be present in a partition before compaction will actually compact files. Defaults to `100`.
  final pulumi.Input<int?>? minInputFiles;
  /// Strategy to use for compaction. Valid values are `binpack`, `sort` and `z-order` Defaults to `binpack`.
  final pulumi.Input<String?>? strategy;

  /// Creates a new [CatalogTableOptimizerConfigurationCompactionConfigurationIcebergConfiguration].
  /// [deleteFileThreshold] Minimum number of deletes that must be present in a data file to make it eligible for compaction. Defaults to `1`.
  /// [minInputFiles] Minimum number of data files that must be present in a partition before compaction will actually compact files. Defaults to `100`.
  /// [strategy] Strategy to use for compaction. Valid values are `binpack`, `sort` and `z-order` Defaults to `binpack`.
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
      deleteFileThreshold: (() { final guardedValue = map['deleteFileThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      minInputFiles: (() { final guardedValue = map['minInputFiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      strategy: (() { final guardedValue = map['strategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
