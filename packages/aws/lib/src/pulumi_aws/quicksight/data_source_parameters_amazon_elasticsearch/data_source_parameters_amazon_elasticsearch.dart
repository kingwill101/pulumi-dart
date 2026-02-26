// ignore_for_file: unused_element, unnecessary_cast

class DataSourceParametersAmazonElasticsearch {
  /// The OpenSearch domain.
  final String domain;

  DataSourceParametersAmazonElasticsearch({
    required this.domain,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domain'] = domain;
    return map;
  }

  factory DataSourceParametersAmazonElasticsearch.fromMap(
      Map<String, dynamic> map) {
    return DataSourceParametersAmazonElasticsearch(
      domain: map['domain'] as String,
    );
  }
}
