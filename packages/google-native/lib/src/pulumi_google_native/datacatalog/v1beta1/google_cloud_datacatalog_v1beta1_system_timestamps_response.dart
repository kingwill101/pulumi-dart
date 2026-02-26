// ignore_for_file: unused_element, unnecessary_cast

/// Timestamps about this resource according to a particular system.
class GoogleCloudDatacatalogV1beta1SystemTimestampsResponse {
  /// The creation time of the resource within the given system.
  final String createTime;

  /// The expiration time of the resource within the given system. Currently only apllicable to BigQuery resources.
  final String expireTime;

  /// The last-modified time of the resource within the given system.
  final String updateTime;

  GoogleCloudDatacatalogV1beta1SystemTimestampsResponse({
    required this.createTime,
    required this.expireTime,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['expireTime'] = expireTime;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GoogleCloudDatacatalogV1beta1SystemTimestampsResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1beta1SystemTimestampsResponse(
      createTime: map['createTime'] as String,
      expireTime: map['expireTime'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
