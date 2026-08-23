// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scraper_exporter_opensearch.dart';

class ScraperExporter {
  /// Configuration block for an OpenSearch exporter. See `opensearch` Block for details.
  final pulumi.Input<ScraperExporterOpensearch> opensearch;

  /// Creates a new [ScraperExporter].
  /// [opensearch] Configuration block for an OpenSearch exporter. See `opensearch` Block for details.
  const ScraperExporter({
    required this.opensearch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'opensearch': pulumi.Input.mapInputValue<ScraperExporterOpensearch, Map<String, dynamic>>(opensearch, (value) => value.toMap()),
    };
  }

  factory ScraperExporter.fromMap(Map<String, dynamic> map) {
    return ScraperExporter(
      opensearch: pulumi.Input.fromValue(ScraperExporterOpensearch.fromMap((map['opensearch']! as Map).cast<String, dynamic>())),
    );
  }
}
