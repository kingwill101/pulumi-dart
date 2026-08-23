// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCatalogTargetRedshiftCatalog {
  /// ARN of the target Redshift catalog.
  final pulumi.Input<String> catalogArn;

  /// Creates a new [GetCatalogTargetRedshiftCatalog].
  /// [catalogArn] ARN of the target Redshift catalog.
  const GetCatalogTargetRedshiftCatalog({
    required this.catalogArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogArn': catalogArn,
    };
  }

  factory GetCatalogTargetRedshiftCatalog.fromMap(Map<String, dynamic> map) {
    return GetCatalogTargetRedshiftCatalog(
      catalogArn: pulumi.Input.fromValue(map['catalogArn'] as String),
    );
  }
}
