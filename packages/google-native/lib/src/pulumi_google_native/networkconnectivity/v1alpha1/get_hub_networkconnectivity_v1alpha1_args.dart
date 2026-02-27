// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getHub.
class GetHubNetworkconnectivityV1alpha1Args {
  final pulumi.Input<String> hubId;
  final pulumi.Input<String>? project;

  GetHubNetworkconnectivityV1alpha1Args({
    required this.hubId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hubId'] = hubId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetHubNetworkconnectivityV1alpha1Args.fromMap(
      Map<String, dynamic> map) {
    return GetHubNetworkconnectivityV1alpha1Args(
      hubId: pulumi.Input.asInput<String>(map['hubId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
