// ignore_for_file: unused_element, unnecessary_cast


class DataSetDataSetUsageConfiguration {
  /// Controls whether a child dataset of a direct query can use this dataset as a source.
  final bool? disableUseAsDirectQuerySource;
  /// Controls whether a child dataset that's stored in QuickSight can use this dataset as a source.
  final bool? disableUseAsImportedSource;

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
      disableUseAsDirectQuerySource: map['disableUseAsDirectQuerySource'] == null ? null : map['disableUseAsDirectQuerySource'] as bool,
      disableUseAsImportedSource: map['disableUseAsImportedSource'] == null ? null : map['disableUseAsImportedSource'] as bool,
    );
  }
}

