// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSourceParametersAmazonElasticsearch {
  /// The OpenSearch domain.
  final pulumi.Input<String> domain;

  /// Creates a new [DataSourceParametersAmazonElasticsearch].
  /// [domain] The OpenSearch domain.
  const DataSourceParametersAmazonElasticsearch({
    required this.domain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
    };
  }

  factory DataSourceParametersAmazonElasticsearch.fromMap(Map<String, dynamic> map) {
    return DataSourceParametersAmazonElasticsearch(
      domain: pulumi.Input.fromValue(map['domain'] as String),
    );
  }
}

