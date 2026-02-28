// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_quicksight_ingestion_ingestion_args_doc}
/// The set of arguments for Ingestion.
/// {@endtemplate}
/// {@macro pulumi_quicksight_ingestion_ingestion_args_doc}
class IngestionArgs {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;

  /// ID of the dataset used in the ingestion.
  final pulumi.Input<String> dataSetId;

  /// ID for the ingestion.
  final pulumi.Input<String> ingestionId;

  /// Type of ingestion to be created. Valid values are `INCREMENTAL_REFRESH` and `FULL_REFRESH`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> ingestionType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [IngestionArgs].
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [dataSetId] ID of the dataset used in the ingestion.
  /// [ingestionId] ID for the ingestion.
  /// [ingestionType] Type of ingestion to be created. Valid values are `INCREMENTAL_REFRESH` and `FULL_REFRESH`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  IngestionArgs({
    String? awsAccountId,
    required String dataSetId,
    required String ingestionId,
    required String ingestionType,
    String? region,
  })  : awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
        dataSetId = pulumi.Input.asInput<String>(dataSetId),
        ingestionId = pulumi.Input.asInput<String>(ingestionId),
        ingestionType = pulumi.Input.asInput<String>(ingestionType),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsAccountIdValue = awsAccountId;
    if (awsAccountIdValue != null) {
      map['awsAccountId'] = awsAccountIdValue;
    }
    map['dataSetId'] = dataSetId;
    map['ingestionId'] = ingestionId;
    map['ingestionType'] = ingestionType;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory IngestionArgs.fromMap(Map<String, dynamic> map) {
    return IngestionArgs(
      awsAccountId:
          map['awsAccountId'] == null ? null : map['awsAccountId'] as String,
      dataSetId: map['dataSetId'] as String,
      ingestionId: map['ingestionId'] as String,
      ingestionType: map['ingestionType'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
