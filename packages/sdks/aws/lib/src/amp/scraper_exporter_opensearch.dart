// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScraperExporterOpensearch {
  /// ARN of the OpenSearch domain.
  final pulumi.Input<String> domainArn;

  /// Creates a new [ScraperExporterOpensearch].
  /// [domainArn] ARN of the OpenSearch domain.
  const ScraperExporterOpensearch({
    required this.domainArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainArn': domainArn,
    };
  }

  factory ScraperExporterOpensearch.fromMap(Map<String, dynamic> map) {
    return ScraperExporterOpensearch(
      domainArn: pulumi.Input.fromValue(map['domainArn'] as String),
    );
  }
}
