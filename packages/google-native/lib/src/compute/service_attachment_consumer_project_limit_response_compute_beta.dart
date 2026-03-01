// ignore_for_file: unused_element, unnecessary_cast

class ServiceAttachmentConsumerProjectLimitResponseComputeBeta {
  /// The value of the limit to set.
  final int connectionLimit;

  /// The network URL for the network to set the limit for.
  final String networkUrl;

  /// The project id or number for the project to set the limit for.
  final String projectIdOrNum;

  /// Creates a new [ServiceAttachmentConsumerProjectLimitResponseComputeBeta].
  /// [connectionLimit] The value of the limit to set.
  /// [networkUrl] The network URL for the network to set the limit for.
  /// [projectIdOrNum] The project id or number for the project to set the limit for.
  ServiceAttachmentConsumerProjectLimitResponseComputeBeta({
    required this.connectionLimit,
    required this.networkUrl,
    required this.projectIdOrNum,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionLimit': connectionLimit,
      'networkUrl': networkUrl,
      'projectIdOrNum': projectIdOrNum,
    };
  }

  factory ServiceAttachmentConsumerProjectLimitResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceAttachmentConsumerProjectLimitResponseComputeBeta(
      connectionLimit: map['connectionLimit'] as int,
      networkUrl: map['networkUrl'] as String,
      projectIdOrNum: map['projectIdOrNum'] as String,
    );
  }
}
