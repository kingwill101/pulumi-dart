// ignore_for_file: unused_element, unnecessary_cast

class FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationSchemaConfiguration {
  /// The ID of the AWS Glue Data Catalog. If you don't supply this, the AWS account ID is used by default.
  final String? catalogId;

  /// Specifies the name of the AWS Glue database that contains the schema for the output data.
  final String databaseName;

  /// If you don't specify an AWS Region, the default is the current region.
  final String? region;

  /// The role that Kinesis Data Firehose can use to access AWS Glue. This role must be in the same account you use for Kinesis Data Firehose. Cross-account roles aren't allowed.
  final String roleArn;

  /// Specifies the AWS Glue table that contains the column information that constitutes your data schema.
  final String tableName;

  /// Specifies the table version for the output data schema. Defaults to `LATEST`.
  final String? versionId;

  FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationSchemaConfiguration({
    this.catalogId,
    required this.databaseName,
    this.region,
    required this.roleArn,
    required this.tableName,
    this.versionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final catalogIdValue = catalogId;
    if (catalogIdValue != null) {
      map['catalogId'] = catalogIdValue;
    }
    map['databaseName'] = databaseName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['roleArn'] = roleArn;
    map['tableName'] = tableName;
    final versionIdValue = versionId;
    if (versionIdValue != null) {
      map['versionId'] = versionIdValue;
    }
    return map;
  }

  factory FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationSchemaConfiguration.fromMap(
      Map<String, dynamic> map) {
    return FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationSchemaConfiguration(
      catalogId: map['catalogId'] == null ? null : map['catalogId'] as String,
      databaseName: map['databaseName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      roleArn: map['roleArn'] as String,
      tableName: map['tableName'] as String,
      versionId: map['versionId'] == null ? null : map['versionId'] as String,
    );
  }
}
