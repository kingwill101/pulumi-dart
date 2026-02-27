// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInternalRange.
class GetInternalRangeNetworkconnectivityV1alpha1Args {
  final pulumi.Input<String> internalRangeId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetInternalRangeNetworkconnectivityV1alpha1Args({
    required this.internalRangeId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['internalRangeId'] = internalRangeId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetInternalRangeNetworkconnectivityV1alpha1Args.fromMap(
      Map<String, dynamic> map) {
    return GetInternalRangeNetworkconnectivityV1alpha1Args(
      internalRangeId: pulumi.Input.asInput<String>(map['internalRangeId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
