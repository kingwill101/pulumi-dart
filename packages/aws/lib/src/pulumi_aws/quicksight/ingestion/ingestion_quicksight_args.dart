// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Ingestion.
class IngestionQuicksightArgs {
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

  IngestionQuicksightArgs({
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

  factory IngestionQuicksightArgs.fromMap(Map<String, dynamic> map) {
    return IngestionQuicksightArgs(
      awsAccountId: pulumi.Input.asOptionalInput<String>(map['awsAccountId']),
      dataSetId: pulumi.Input.asInput<String>(map['dataSetId']),
      ingestionId: pulumi.Input.asInput<String>(map['ingestionId']),
      ingestionType: pulumi.Input.asInput<String>(map['ingestionType']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
