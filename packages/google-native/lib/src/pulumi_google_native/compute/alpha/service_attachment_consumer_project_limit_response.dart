// ignore_for_file: unused_element, unnecessary_cast

class ServiceAttachmentConsumerProjectLimitResponse {
  /// The value of the limit to set.
  final int connectionLimit;

  /// The network URL for the network to set the limit for.
  final String networkUrl;

  /// The project id or number for the project to set the limit for.
  final String projectIdOrNum;

  ServiceAttachmentConsumerProjectLimitResponse({
    required this.connectionLimit,
    required this.networkUrl,
    required this.projectIdOrNum,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectionLimit'] = connectionLimit;
    map['networkUrl'] = networkUrl;
    map['projectIdOrNum'] = projectIdOrNum;
    return map;
  }

  factory ServiceAttachmentConsumerProjectLimitResponse.fromMap(
      Map<String, dynamic> map) {
    return ServiceAttachmentConsumerProjectLimitResponse(
      connectionLimit: map['connectionLimit'] as int,
      networkUrl: map['networkUrl'] as String,
      projectIdOrNum: map['projectIdOrNum'] as String,
    );
  }
}
