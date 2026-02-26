// ignore_for_file: unused_element, unnecessary_cast

/// Status of the resource referenced by an asset.
class GoogleCloudDataplexV1AssetResourceStatusResponse {
  /// Service account associated with the BigQuery Connection.
  final String managedAccessIdentity;

  /// Additional information about the current state.
  final String message;

  /// The current state of the managed resource.
  final String state;

  /// Last update time of the status.
  final String updateTime;

  GoogleCloudDataplexV1AssetResourceStatusResponse({
    required this.managedAccessIdentity,
    required this.message,
    required this.state,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['managedAccessIdentity'] = managedAccessIdentity;
    map['message'] = message;
    map['state'] = state;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GoogleCloudDataplexV1AssetResourceStatusResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1AssetResourceStatusResponse(
      managedAccessIdentity: map['managedAccessIdentity'] as String,
      message: map['message'] as String,
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
