// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getSearchApplication.
class GetSearchApplicationArgs {
  final Input<bool>? debugOptionsEnableDebugging;
  final Input<String> searchapplicationId;

  GetSearchApplicationArgs({
    this.debugOptionsEnableDebugging,
    required this.searchapplicationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final debugOptionsEnableDebuggingValue = debugOptionsEnableDebugging;
    if (debugOptionsEnableDebuggingValue != null) {
      map['debugOptionsEnableDebugging'] = debugOptionsEnableDebuggingValue;
    }
    map['searchapplicationId'] = searchapplicationId;
    return map;
  }

  factory GetSearchApplicationArgs.fromMap(Map<String, dynamic> map) {
    return GetSearchApplicationArgs(
      debugOptionsEnableDebugging:
          Input.asOptionalInput<bool>(map['debugOptionsEnableDebugging']),
      searchapplicationId: Input.asInput<String>(map['searchapplicationId']),
    );
  }
}
