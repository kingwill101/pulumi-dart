// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CatalogTargetRedshiftCatalog {
  /// ARN of the target Redshift catalog.
  final pulumi.Input<String> catalogArn;

  /// Creates a new [CatalogTargetRedshiftCatalog].
  /// [catalogArn] ARN of the target Redshift catalog.
  const CatalogTargetRedshiftCatalog({
    required this.catalogArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogArn': catalogArn,
    };
  }

  factory CatalogTargetRedshiftCatalog.fromMap(Map<String, dynamic> map) {
    return CatalogTargetRedshiftCatalog(
      catalogArn: pulumi.Input.fromValue(map['catalogArn'] as String),
    );
  }
}
