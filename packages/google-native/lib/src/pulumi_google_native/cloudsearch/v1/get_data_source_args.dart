// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDataSource.
class GetDataSourceArgs {
  final Input<String> datasourceId;
  final Input<bool>? debugOptionsEnableDebugging;

  GetDataSourceArgs({
    required this.datasourceId,
    this.debugOptionsEnableDebugging,
  });

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
      datasourceId: Input.asInput<String>(map['datasourceId']),
      debugOptionsEnableDebugging:
          Input.asOptionalInput<bool>(map['debugOptionsEnableDebugging']),
    );
  }
}
