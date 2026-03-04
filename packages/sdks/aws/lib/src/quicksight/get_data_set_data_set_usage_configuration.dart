// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataSetDataSetUsageConfiguration {
  final pulumi.Input<bool> disableUseAsDirectQuerySource;
  final pulumi.Input<bool> disableUseAsImportedSource;

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

  factory GetDataSetDataSetUsageConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDataSetDataSetUsageConfiguration(
      disableUseAsDirectQuerySource: pulumi.Input.fromValue(
        map['disableUseAsDirectQuerySource'] as bool,
      ),
      disableUseAsImportedSource: pulumi.Input.fromValue(
        map['disableUseAsImportedSource'] as bool,
      ),
    );
  }
}
