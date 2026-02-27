// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getConnectivityTest.
class GetConnectivityTestArgs {
  final Input<String> connectivityTestId;
  final Input<String>? project;

  GetConnectivityTestArgs({
    required this.connectivityTestId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectivityTestId'] = connectivityTestId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetConnectivityTestArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectivityTestArgs(
      connectivityTestId: Input.asInput<String>(map['connectivityTestId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
