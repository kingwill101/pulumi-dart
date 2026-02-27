import 'package:pulumi/pulumi.dart';
import 'ingestion_args2.dart';

/// Resource for managing an AWS QuickSight Ingestion.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import QuickSight Ingestion using the AWS account ID, data set ID, and ingestion ID separated by commas (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/ingestion:Ingestion example 123456789012,example-dataset-id,example-ingestion-id
/// ```
class Ingestion2 extends CustomResource {
  /// ARN of the Ingestion.
  late final Output<String> arn;

  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final Output<String> awsAccountId;

  /// ID of the dataset used in the ingestion.
  late final Output<String> dataSetId;

  /// ID for the ingestion.
  late final Output<String> ingestionId;

  /// Ingestion status.
  late final Output<String> ingestionStatus;

  /// Type of ingestion to be created. Valid values are `INCREMENTAL_REFRESH` and `FULL_REFRESH`.
  ///
  /// The following arguments are optional:
  late final Output<String> ingestionType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  Ingestion2(
    String name, {
    IngestionArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/ingestion:Ingestion',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.dataSetId = registerOutput<String>('dataSetId');
    this.ingestionId = registerOutput<String>('ingestionId');
    this.ingestionStatus = registerOutput<String>('ingestionStatus');
    this.ingestionType = registerOutput<String>('ingestionType');
    this.region = registerOutput<String>('region');
  }
}
