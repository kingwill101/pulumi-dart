// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSetDataSetUsageConfiguration {
  /// Controls whether a child dataset of a direct query can use this dataset as a source.
  final pulumi.Input<bool>? disableUseAsDirectQuerySource;
  /// Controls whether a child dataset that's stored in QuickSight can use this dataset as a source.
  final pulumi.Input<bool>? disableUseAsImportedSource;

  /// Creates a new [DataSetDataSetUsageConfiguration].
  /// [disableUseAsDirectQuerySource] Controls whether a child dataset of a direct query can use this dataset as a source.
  /// [disableUseAsImportedSource] Controls whether a child dataset that's stored in QuickSight can use this dataset as a source.
  DataSetDataSetUsageConfiguration({
    this.disableUseAsDirectQuerySource,
    this.disableUseAsImportedSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableUseAsDirectQuerySource': ?disableUseAsDirectQuerySource,
      'disableUseAsImportedSource': ?disableUseAsImportedSource,
    };
  }

  factory DataSetDataSetUsageConfiguration.fromMap(Map<String, dynamic> map) {
    return DataSetDataSetUsageConfiguration(
      disableUseAsDirectQuerySource: (() { final guardedValue = map['disableUseAsDirectQuerySource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disableUseAsImportedSource: (() { final guardedValue = map['disableUseAsImportedSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

