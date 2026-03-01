// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Ingestion resources.
class IngestionState {
  /// ARN of the Ingestion.
  final pulumi.Input<String>? arn;
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;
  /// ID of the dataset used in the ingestion.
  final pulumi.Input<String>? dataSetId;
  /// ID for the ingestion.
  final pulumi.Input<String>? ingestionId;
  /// Ingestion status.
  final pulumi.Input<String>? ingestionStatus;
  /// Type of ingestion to be created. Valid values are `INCREMENTAL_REFRESH` and `FULL_REFRESH`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? ingestionType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [IngestionState].
  /// [arn] ARN of the Ingestion.
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [dataSetId] ID of the dataset used in the ingestion.
  /// [ingestionId] ID for the ingestion.
  /// [ingestionStatus] Ingestion status.
  /// [ingestionType] Type of ingestion to be created. Valid values are `INCREMENTAL_REFRESH` and `FULL_REFRESH`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  IngestionState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? awsAccountId,
    pulumi.Output<String>? dataSetId,
    pulumi.Output<String>? ingestionId,
    pulumi.Output<String>? ingestionStatus,
    pulumi.Output<String>? ingestionType,
    pulumi.Output<String>? region,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
      dataSetId = pulumi.Input.asOptionalInput<String>(dataSetId),
      ingestionId = pulumi.Input.asOptionalInput<String>(ingestionId),
      ingestionStatus = pulumi.Input.asOptionalInput<String>(ingestionStatus),
      ingestionType = pulumi.Input.asOptionalInput<String>(ingestionType),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'awsAccountId': ?awsAccountId,
      'dataSetId': ?dataSetId,
      'ingestionId': ?ingestionId,
      'ingestionStatus': ?ingestionStatus,
      'ingestionType': ?ingestionType,
      'region': ?region,
    };
  }

  factory IngestionState.fromMap(Map<String, dynamic> map) {
    return IngestionState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      awsAccountId: map['awsAccountId'] == null ? null : pulumi.Output.create<String>(map['awsAccountId'] as String),
      dataSetId: map['dataSetId'] == null ? null : pulumi.Output.create<String>(map['dataSetId'] as String),
      ingestionId: map['ingestionId'] == null ? null : pulumi.Output.create<String>(map['ingestionId'] as String),
      ingestionStatus: map['ingestionStatus'] == null ? null : pulumi.Output.create<String>(map['ingestionStatus'] as String),
      ingestionType: map['ingestionType'] == null ? null : pulumi.Output.create<String>(map['ingestionType'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

