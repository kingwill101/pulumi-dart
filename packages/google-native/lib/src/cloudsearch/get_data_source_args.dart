// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudsearch_v1_get_data_source_args_doc}
/// Arguments for getDataSource.
/// {@endtemplate}
/// {@macro pulumi_cloudsearch_v1_get_data_source_args_doc}
class GetDataSourceArgs {
  final pulumi.Input<String> datasourceId;
  final pulumi.Input<bool>? debugOptionsEnableDebugging;

  /// Creates a new [GetDataSourceArgs].
  /// [datasourceId] Required.
  /// [debugOptionsEnableDebugging] Optional.
  GetDataSourceArgs({
    required String datasourceId,
    bool? debugOptionsEnableDebugging,
  })  : datasourceId = pulumi.Input.asInput<String>(datasourceId),
        debugOptionsEnableDebugging =
            pulumi.Input.asOptionalInput<bool>(debugOptionsEnableDebugging);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasourceId'] = datasourceId;
    final debugOptionsEnableDebuggingValue = debugOptionsEnableDebugging;
    if (debugOptionsEnableDebuggingValue != null) {
      map['debugOptionsEnableDebugging'] = debugOptionsEnableDebuggingValue;
    }
    return map;
  }

  factory GetDataSourceArgs.fromMap(Map<String, dynamic> map) {
    return GetDataSourceArgs(
      datasourceId: map['datasourceId'] as String,
      debugOptionsEnableDebugging: map['debugOptionsEnableDebugging'] == null
          ? null
          : map['debugOptionsEnableDebugging'] as bool,
    );
  }
}
