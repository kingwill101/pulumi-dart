// ignore_for_file: unused_element, unnecessary_cast


class DataSourceParametersAmazonElasticsearch {
  /// The OpenSearch domain.
  final String domain;

  /// Creates a new [DataSourceParametersAmazonElasticsearch].
  /// [domain] The OpenSearch domain.
  DataSourceParametersAmazonElasticsearch({
    required this.domain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
    };
  }

  factory DataSourceParametersAmazonElasticsearch.fromMap(Map<String, dynamic> map) {
    return DataSourceParametersAmazonElasticsearch(
      domain: map['domain'] as String,
    );
  }
}

