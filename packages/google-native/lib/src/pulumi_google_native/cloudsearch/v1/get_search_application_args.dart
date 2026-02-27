// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSearchApplication.
class GetSearchApplicationArgs {
  final pulumi.Input<bool>? debugOptionsEnableDebugging;
  final pulumi.Input<String> searchapplicationId;

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
      debugOptionsEnableDebugging: pulumi.Input.asOptionalInput<bool>(
          map['debugOptionsEnableDebugging']),
      searchapplicationId:
          pulumi.Input.asInput<String>(map['searchapplicationId']),
    );
  }
}
