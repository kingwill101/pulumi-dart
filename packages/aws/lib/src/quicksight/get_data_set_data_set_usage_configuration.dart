// ignore_for_file: unused_element, unnecessary_cast


class GetDataSetDataSetUsageConfiguration {
  final bool disableUseAsDirectQuerySource;
  final bool disableUseAsImportedSource;

  /// Creates a new [GetDataSetDataSetUsageConfiguration].
  /// [disableUseAsDirectQuerySource] Required.
  /// [disableUseAsImportedSource] Required.
  GetDataSetDataSetUsageConfiguration({
    required this.disableUseAsDirectQuerySource,
    required this.disableUseAsImportedSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableUseAsDirectQuerySource': disableUseAsDirectQuerySource,
      'disableUseAsImportedSource': disableUseAsImportedSource,
    };
  }

  factory GetDataSetDataSetUsageConfiguration.fromMap(Map<String, dynamic> map) {
    return GetDataSetDataSetUsageConfiguration(
      disableUseAsDirectQuerySource: map['disableUseAsDirectQuerySource'] as bool,
      disableUseAsImportedSource: map['disableUseAsImportedSource'] as bool,
    );
  }
}

