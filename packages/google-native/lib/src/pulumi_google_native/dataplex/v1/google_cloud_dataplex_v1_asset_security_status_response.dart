// ignore_for_file: unused_element, unnecessary_cast

/// Security policy status of the asset. Data security policy, i.e., readers, writers & owners, should be specified in the lake/zone/asset IAM policy.
class GoogleCloudDataplexV1AssetSecurityStatusResponse {
  /// Additional information about the current state.
  final String message;

  /// The current state of the security policy applied to the attached resource.
  final String state;

  /// Last update time of the status.
  final String updateTime;

  GoogleCloudDataplexV1AssetSecurityStatusResponse({
    required this.message,
    required this.state,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['message'] = message;
    map['state'] = state;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GoogleCloudDataplexV1AssetSecurityStatusResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1AssetSecurityStatusResponse(
      message: map['message'] as String,
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
