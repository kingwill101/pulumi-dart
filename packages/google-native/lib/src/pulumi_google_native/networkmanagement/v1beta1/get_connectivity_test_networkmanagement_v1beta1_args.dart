// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getConnectivityTest.
class GetConnectivityTestNetworkmanagementV1beta1Args {
  final pulumi.Input<String> connectivityTestId;
  final pulumi.Input<String>? project;

  GetConnectivityTestNetworkmanagementV1beta1Args({
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

  factory GetConnectivityTestNetworkmanagementV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetConnectivityTestNetworkmanagementV1beta1Args(
      connectivityTestId:
          pulumi.Input.asInput<String>(map['connectivityTestId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
