// ignore_for_file: unused_element, unnecessary_cast


class GetAppSpecJobLogDestinationPapertrail {
  /// OpenSearch API Endpoint. Only HTTPS is supported. Format: https://<host>:<port>.
  final String endpoint;

  /// Creates a new [GetAppSpecJobLogDestinationPapertrail].
  /// [endpoint] OpenSearch API Endpoint. Only HTTPS is supported. Format: https://<host>:<port>.
  GetAppSpecJobLogDestinationPapertrail({
    required this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
    };
  }

  factory GetAppSpecJobLogDestinationPapertrail.fromMap(Map<String, dynamic> map) {
    return GetAppSpecJobLogDestinationPapertrail(
      endpoint: map['endpoint'] as String,
    );
  }
}

