// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationSchemaConfiguration {
  /// The ID of the AWS Glue Data Catalog. If you don't supply this, the AWS account ID is used by default.
  final pulumi.Input<String?>? catalogId;
  /// Specifies the name of the AWS Glue database that contains the schema for the output data.
  final pulumi.Input<String> databaseName;
  /// If you don't specify an AWS Region, the default is the current region.
  final pulumi.Input<String?>? region;
  /// The role that Kinesis Data Firehose can use to access AWS Glue. This role must be in the same account you use for Kinesis Data Firehose. Cross-account roles aren't allowed.
  final pulumi.Input<String> roleArn;
  /// Specifies the AWS Glue table that contains the column information that constitutes your data schema.
  final pulumi.Input<String> tableName;
  /// Specifies the table version for the output data schema. Defaults to `LATEST`.
  final pulumi.Input<String?>? versionId;

  /// Creates a new [FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationSchemaConfiguration].
  /// [catalogId] The ID of the AWS Glue Data Catalog. If you don't supply this, the AWS account ID is used by default.
  /// [databaseName] Specifies the name of the AWS Glue database that contains the schema for the output data.
  /// [region] If you don't specify an AWS Region, the default is the current region.
  /// [roleArn] The role that Kinesis Data Firehose can use to access AWS Glue. This role must be in the same account you use for Kinesis Data Firehose. Cross-account roles aren't allowed.
  /// [tableName] Specifies the AWS Glue table that contains the column information that constitutes your data schema.
  /// [versionId] Specifies the table version for the output data schema. Defaults to `LATEST`.
  const FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationSchemaConfiguration({
    this.catalogId,
    required this.databaseName,
    this.region,
    required this.roleArn,
    required this.tableName,
    this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'databaseName': databaseName,
      'region': ?region,
      'roleArn': roleArn,
      'tableName': tableName,
      'versionId': ?versionId,
    };
  }

  factory FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationSchemaConfiguration.fromMap(Map<String, dynamic> map) {
    return FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationSchemaConfiguration(
      catalogId: (() { final guardedValue = map['catalogId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      tableName: pulumi.Input.fromValue(map['tableName'] as String),
      versionId: (() { final guardedValue = map['versionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
