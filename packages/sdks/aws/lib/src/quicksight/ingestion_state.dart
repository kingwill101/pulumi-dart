// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Ingestion resources.
class IngestionState {
  /// ARN of the Ingestion.
  final pulumi.Input<String?>? arn;
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String?>? awsAccountId;
  /// ID of the dataset used in the ingestion.
  final pulumi.Input<String?>? dataSetId;
  /// ID for the ingestion.
  final pulumi.Input<String?>? ingestionId;
  /// Ingestion status.
  final pulumi.Input<String?>? ingestionStatus;
  /// Type of ingestion to be created. Valid values are `INCREMENTAL_REFRESH` and `FULL_REFRESH`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? ingestionType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [IngestionState].
  /// [arn] ARN of the Ingestion.
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [dataSetId] ID of the dataset used in the ingestion.
  /// [ingestionId] ID for the ingestion.
  /// [ingestionStatus] Ingestion status.
  /// [ingestionType] Type of ingestion to be created. Valid values are `INCREMENTAL_REFRESH` and `FULL_REFRESH`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const IngestionState({
    this.arn,
    this.awsAccountId,
    this.dataSetId,
    this.ingestionId,
    this.ingestionStatus,
    this.ingestionType,
    this.region,
  });

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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      awsAccountId: (() { final guardedValue = map['awsAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataSetId: (() { final guardedValue = map['dataSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ingestionId: (() { final guardedValue = map['ingestionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ingestionStatus: (() { final guardedValue = map['ingestionStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ingestionType: (() { final guardedValue = map['ingestionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
