import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingestion_args.dart';
import 'ingestion_state.dart';

/// Resource for managing an AWS QuickSight Ingestion.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.quicksight.Ingestion("example", {
///     dataSetId: exampleAwsQuicksightDataSet.dataSetId,
///     ingestionId: "example-id",
///     ingestionType: "FULL_REFRESH",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.Ingestion("example",
///     data_set_id=example_aws_quicksight_data_set["dataSetId"],
///     ingestion_id="example-id",
///     ingestion_type="FULL_REFRESH")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Quicksight.Ingestion("example", new()
///     {
///         DataSetId = exampleAwsQuicksightDataSet.DataSetId,
///         IngestionId = "example-id",
///         IngestionType = "FULL_REFRESH",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := quicksight.NewIngestion(ctx, "example", &quicksight.IngestionArgs{
/// 			DataSetId:     pulumi.Any(exampleAwsQuicksightDataSet.DataSetId),
/// 			IngestionId:   pulumi.String("example-id"),
/// 			IngestionType: pulumi.String("FULL_REFRESH"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.quicksight.Ingestion;
/// import com.pulumi.aws.quicksight.IngestionArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new Ingestion("example", IngestionArgs.builder()
///             .dataSetId(exampleAwsQuicksightDataSet.dataSetId())
///             .ingestionId("example-id")
///             .ingestionType("FULL_REFRESH")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:quicksight:Ingestion
///     properties:
///       dataSetId: ${exampleAwsQuicksightDataSet.dataSetId}
///       ingestionId: example-id
///       ingestionType: FULL_REFRESH
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import QuickSight Ingestion using the AWS account ID, data set ID, and ingestion ID separated by commas (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/ingestion:Ingestion example 123456789012,example-dataset-id,example-ingestion-id
/// ```
class Ingestion extends pulumi.CustomResource {
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

  /// Creates a new [Ingestion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Ingestion]. {@macro pulumi_quicksight_ingestion_ingestion_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Ingestion(
    String name, {
    IngestionArgs? args,
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

  /// Gets an existing [Ingestion] resource's state with the given [name] and [id].
  static Ingestion get(
    String name,
    pulumi.Input<String> id, {
    IngestionState? state,
  }) {
    return Ingestion._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Ingestion._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/ingestion:Ingestion',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
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
