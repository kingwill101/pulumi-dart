// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkmanagement_v1beta1_get_connectivity_test_networkmanagement_v1beta1_args_doc}
/// Arguments for getConnectivityTest.
/// {@endtemplate}
/// {@macro pulumi_networkmanagement_v1beta1_get_connectivity_test_networkmanagement_v1beta1_args_doc}
class GetConnectivityTestNetworkmanagementV1beta1Args {
  final pulumi.Input<String> connectivityTestId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConnectivityTestNetworkmanagementV1beta1Args].
  /// [connectivityTestId] Required.
  /// [project] Optional.
  GetConnectivityTestNetworkmanagementV1beta1Args({
    required String connectivityTestId,
    String? project,
  })  : connectivityTestId = pulumi.Input.asInput<String>(connectivityTestId),
        project = pulumi.Input.asOptionalInput<String>(project);

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
      connectivityTestId: map['connectivityTestId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
