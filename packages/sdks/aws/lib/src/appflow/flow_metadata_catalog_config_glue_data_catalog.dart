// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlowMetadataCatalogConfigGlueDataCatalog {
  /// The name of an existing Glue database to store the metadata tables that Amazon AppFlow creates.
  final pulumi.Input<String> databaseName;

  /// The ARN of an IAM role that grants AppFlow the permissions it needs to create Data Catalog tables, databases, and partitions.
  final pulumi.Input<String> roleArn;

  /// A naming prefix for each Data Catalog table that Amazon AppFlow creates
  final pulumi.Input<String> tablePrefix;

  /// Creates a new [FlowMetadataCatalogConfigGlueDataCatalog].
  /// [databaseName] The name of an existing Glue database to store the metadata tables that Amazon AppFlow creates.
  /// [roleArn] The ARN of an IAM role that grants AppFlow the permissions it needs to create Data Catalog tables, databases, and partitions.
  /// [tablePrefix] A naming prefix for each Data Catalog table that Amazon AppFlow creates
  FlowMetadataCatalogConfigGlueDataCatalog({
    required this.databaseName,
    required this.roleArn,
    required this.tablePrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'roleArn': roleArn,
      'tablePrefix': tablePrefix,
    };
  }

  factory FlowMetadataCatalogConfigGlueDataCatalog.fromMap(
    Map<String, dynamic> map,
  ) {
    return FlowMetadataCatalogConfigGlueDataCatalog(
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      tablePrefix: pulumi.Input.fromValue(map['tablePrefix'] as String),
    );
  }
}
