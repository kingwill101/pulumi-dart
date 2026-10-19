// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSetDataSetUsageConfiguration {
  /// Whether to prevent a child dataset of a direct query from using this dataset as a source.
  final pulumi.Input<bool?>? disableUseAsDirectQuerySource;
  /// Whether to prevent a child dataset that's stored in QuickSight from using this dataset as a source.
  final pulumi.Input<bool?>? disableUseAsImportedSource;

  /// Creates a new [DataSetDataSetUsageConfiguration].
  /// [disableUseAsDirectQuerySource] Whether to prevent a child dataset of a direct query from using this dataset as a source.
  /// [disableUseAsImportedSource] Whether to prevent a child dataset that's stored in QuickSight from using this dataset as a source.
  const DataSetDataSetUsageConfiguration({
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
