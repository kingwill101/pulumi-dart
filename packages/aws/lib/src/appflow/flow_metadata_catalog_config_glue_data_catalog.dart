// ignore_for_file: unused_element, unnecessary_cast

class FlowMetadataCatalogConfigGlueDataCatalog {
  /// The name of an existing Glue database to store the metadata tables that Amazon AppFlow creates.
  final String databaseName;

  /// The ARN of an IAM role that grants AppFlow the permissions it needs to create Data Catalog tables, databases, and partitions.
  final String roleArn;

  /// A naming prefix for each Data Catalog table that Amazon AppFlow creates
  final String tablePrefix;

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
      databaseName: map['databaseName'] as String,
      roleArn: map['roleArn'] as String,
      tablePrefix: map['tablePrefix'] as String,
    );
  }
}
