// ignore_for_file: unused_element, unnecessary_cast

/// Policy that dictates the behavior for the task after it completes successfully.
class GoogleCloudIntegrationsV1alphaSuccessPolicyResponse {
  /// State to which the execution snapshot status will be set if the task succeeds.
  final String finalState;

  GoogleCloudIntegrationsV1alphaSuccessPolicyResponse({
    required this.finalState,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['finalState'] = finalState;
    return map;
  }

  factory GoogleCloudIntegrationsV1alphaSuccessPolicyResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaSuccessPolicyResponse(
      finalState: map['finalState'] as String,
    );
  }
}
