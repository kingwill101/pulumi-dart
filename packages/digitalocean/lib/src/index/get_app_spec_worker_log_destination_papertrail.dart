// ignore_for_file: unused_element, unnecessary_cast


class GetAppSpecWorkerLogDestinationPapertrail {
  /// OpenSearch API Endpoint. Only HTTPS is supported. Format: https://<host>:<port>.
  final String endpoint;

  /// Creates a new [GetAppSpecWorkerLogDestinationPapertrail].
  /// [endpoint] OpenSearch API Endpoint. Only HTTPS is supported. Format: https://<host>:<port>.
  GetAppSpecWorkerLogDestinationPapertrail({
    required this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
    };
  }

  factory GetAppSpecWorkerLogDestinationPapertrail.fromMap(Map<String, dynamic> map) {
    return GetAppSpecWorkerLogDestinationPapertrail(
      endpoint: map['endpoint'] as String,
    );
  }
}

