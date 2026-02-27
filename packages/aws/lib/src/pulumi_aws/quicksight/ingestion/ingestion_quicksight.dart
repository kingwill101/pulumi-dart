import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingestion_quicksight_args.dart';

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
class IngestionQuicksight extends pulumi.CustomResource {
  /// ARN of the Ingestion.
  late final pulumi.Output<String> arn;

  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final pulumi.Output<String> awsAccountId;

  /// ID of the dataset used in the ingestion.
  late final pulumi.Output<String> dataSetId;

  /// ID for the ingestion.
  late final pulumi.Output<String> ingestionId;

  /// Ingestion status.
  late final pulumi.Output<String> ingestionStatus;

  /// Type of ingestion to be created. Valid values are `INCREMENTAL_REFRESH` and `FULL_REFRESH`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> ingestionType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  IngestionQuicksight(
    String name, {
    IngestionQuicksightArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/ingestion:Ingestion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
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
