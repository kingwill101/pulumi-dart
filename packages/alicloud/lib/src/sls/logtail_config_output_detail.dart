// ignore_for_file: unused_element, unnecessary_cast


class LogtailConfigOutputDetail {
  /// The endpoint of the log project.
  final String? endpoint;
  /// The name of the output target logstore.
  final String? logstoreName;
  /// Region
  final String? region;

  /// Creates a new [LogtailConfigOutputDetail].
  /// [endpoint] The endpoint of the log project.
  /// [logstoreName] The name of the output target logstore.
  /// [region] Region
  LogtailConfigOutputDetail({
    this.endpoint,
    this.logstoreName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': ?endpoint,
      'logstoreName': ?logstoreName,
      'region': ?region,
    };
  }

  factory LogtailConfigOutputDetail.fromMap(Map<String, dynamic> map) {
    return LogtailConfigOutputDetail(
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
      logstoreName: map['logstoreName'] == null ? null : map['logstoreName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

