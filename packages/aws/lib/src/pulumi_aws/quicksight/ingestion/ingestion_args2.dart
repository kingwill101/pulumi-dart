// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Ingestion.
class IngestionArgs2 {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final Input<String>? awsAccountId;

  /// ID of the dataset used in the ingestion.
  final Input<String> dataSetId;

  /// ID for the ingestion.
  final Input<String> ingestionId;

  /// Type of ingestion to be created. Valid values are `INCREMENTAL_REFRESH` and `FULL_REFRESH`.
  ///
  /// The following arguments are optional:
  final Input<String> ingestionType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  IngestionArgs2({
    this.awsAccountId,
    required this.dataSetId,
    required this.ingestionId,
    required this.ingestionType,
    this.region,
  });

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

  factory IngestionArgs2.fromMap(Map<String, dynamic> map) {
    return IngestionArgs2(
      awsAccountId: Input.asOptionalInput<String>(map['awsAccountId']),
      dataSetId: Input.asInput<String>(map['dataSetId']),
      ingestionId: Input.asInput<String>(map['ingestionId']),
      ingestionType: Input.asInput<String>(map['ingestionType']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
