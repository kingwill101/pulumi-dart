// ignore_for_file: unused_element, unnecessary_cast

class GetDataSetDataSetUsageConfiguration {
  final bool disableUseAsDirectQuerySource;
  final bool disableUseAsImportedSource;

  GetDataSetDataSetUsageConfiguration({
    required this.disableUseAsDirectQuerySource,
    required this.disableUseAsImportedSource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disableUseAsDirectQuerySource'] = disableUseAsDirectQuerySource;
    map['disableUseAsImportedSource'] = disableUseAsImportedSource;
    return map;
  }

  factory GetDataSetDataSetUsageConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetDataSetDataSetUsageConfiguration(
      disableUseAsDirectQuerySource:
          map['disableUseAsDirectQuerySource'] as bool,
      disableUseAsImportedSource: map['disableUseAsImportedSource'] as bool,
    );
  }
}
