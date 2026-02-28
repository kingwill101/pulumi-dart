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
    final map = <String, dynamic>{};
    final disableUseAsDirectQuerySourceValue = disableUseAsDirectQuerySource;
    if (disableUseAsDirectQuerySourceValue != null) {
      map['disableUseAsDirectQuerySource'] = disableUseAsDirectQuerySourceValue;
    }
    final disableUseAsImportedSourceValue = disableUseAsImportedSource;
    if (disableUseAsImportedSourceValue != null) {
      map['disableUseAsImportedSource'] = disableUseAsImportedSourceValue;
    }
    return map;
  }

  factory DataSetDataSetUsageConfiguration.fromMap(Map<String, dynamic> map) {
    return DataSetDataSetUsageConfiguration(
      disableUseAsDirectQuerySource:
          map['disableUseAsDirectQuerySource'] == null
              ? null
              : map['disableUseAsDirectQuerySource'] as bool,
      disableUseAsImportedSource: map['disableUseAsImportedSource'] == null
          ? null
          : map['disableUseAsImportedSource'] as bool,
    );
  }
}
