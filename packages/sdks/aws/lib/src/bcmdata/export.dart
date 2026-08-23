import 'package:pulumi/pulumi.dart' as pulumi;
import 'export_args.dart';
import 'export_export.dart';
import 'export_state.dart';
import 'export_timeouts.dart';

/// Resource for managing an AWS BCM Data Exports Export.
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
/// const current = aws.getCallerIdentity({});
/// const currentGetPartition = aws.getPartition({});
/// const test = new aws.bcmdata.Export("test", {"export": {
///     name: "testexample",
///     dataQueries: [{
///         queryStatement: "SELECT identity_line_item_id, identity_time_interval, line_item_product_code,line_item_unblended_cost FROM COST_AND_USAGE_REPORT",
///         tableConfigurations: {
///             COST_AND_USAGE_REPORT: {
///                 BILLING_VIEW_ARN: Promise.all([currentGetPartition, current]).then(([currentGetPartition, current]) => `arn:${currentGetPartition.partition}:billing::${current.accountId}:billingview/primary`),
///                 TIME_GRANULARITY: "HOURLY",
///                 INCLUDE_RESOURCES: "FALSE",
///                 INCLUDE_MANUAL_DISCOUNT_COMPATIBILITY: "FALSE",
///                 INCLUDE_SPLIT_COST_ALLOCATION_DATA: "FALSE",
///             },
///         },
///     }],
///     destinationConfigurations: [{
///         s3Destinations: [{
///             s3Bucket: testAwsS3Bucket.bucket,
///             s3Prefix: testAwsS3Bucket.bucketPrefix,
///             s3Region: testAwsS3Bucket.region,
///             s3OutputConfigurations: [{
///                 overwrite: "OVERWRITE_REPORT",
///                 format: "TEXT_OR_CSV",
///                 compression: "GZIP",
///                 outputType: "CUSTOM",
///             }],
///         }],
///     }],
///     refreshCadences: [{
///         frequency: "SYNCHRONOUS",
///     }],
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// current_get_partition = aws.get_partition()
/// test = aws.bcmdata.Export("test", export={
///     "name": "testexample",
///     "data_queries": [{
///         "query_statement": "SELECT identity_line_item_id, identity_time_interval, line_item_product_code,line_item_unblended_cost FROM COST_AND_USAGE_REPORT",
///         "table_configurations": {
///             "COST_AND_USAGE_REPORT": {
///                 "BILLING_VIEW_ARN": f"arn:{current_get_partition.partition}:billing::{current.account_id}:billingview/primary",
///                 "TIME_GRANULARITY": "HOURLY",
///                 "INCLUDE_RESOURCES": "FALSE",
///                 "INCLUDE_MANUAL_DISCOUNT_COMPATIBILITY": "FALSE",
///                 "INCLUDE_SPLIT_COST_ALLOCATION_DATA": "FALSE",
///             },
///         },
///     }],
///     "destination_configurations": [{
///         "s3_destinations": [{
///             "s3_bucket": test_aws_s3_bucket["bucket"],
///             "s3_prefix": test_aws_s3_bucket["bucketPrefix"],
///             "s3_region": test_aws_s3_bucket["region"],
///             "s3_output_configurations": [{
///                 "overwrite": "OVERWRITE_REPORT",
///                 "format": "TEXT_OR_CSV",
///                 "compression": "GZIP",
///                 "output_type": "CUSTOM",
///             }],
///         }],
///     }],
///     "refresh_cadences": [{
///         "frequency": "SYNCHRONOUS",
///     }],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     var currentGetPartition = Aws.GetPartition.Invoke();
///
///     var test = new Aws.BcmData.Export("test", new()
///     {
///         ExportDetails = new Aws.BcmData.Inputs.ExportExportArgs
///         {
///             Name = "testexample",
///             DataQueries = new[]
///             {
///                 new Aws.BcmData.Inputs.ExportExportDataQueryArgs
///                 {
///                     QueryStatement = "SELECT identity_line_item_id, identity_time_interval, line_item_product_code,line_item_unblended_cost FROM COST_AND_USAGE_REPORT",
///                     TableConfigurations =
///                     {
///                         { "COST_AND_USAGE_REPORT", new InputMap<string>
///                         {
///                             { "BILLING_VIEW_ARN", Output.Tuple(currentGetPartition, current).Apply(values =>
///                             {
///                                 var currentGetPartition = values.Item1;
///                                 var current = values.Item2;
///                                 return $"arn:{currentGetPartition.Apply(getPartitionResult => getPartitionResult.Partition)}:billing::{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:billingview/primary";
///                             }) },
///                             { "TIME_GRANULARITY", "HOURLY" },
///                             { "INCLUDE_RESOURCES", "FALSE" },
///                             { "INCLUDE_MANUAL_DISCOUNT_COMPATIBILITY", "FALSE" },
///                             { "INCLUDE_SPLIT_COST_ALLOCATION_DATA", "FALSE" },
///                         } },
///                     },
///                 },
///             },
///             DestinationConfigurations = new[]
///             {
///                 new Aws.BcmData.Inputs.ExportExportDestinationConfigurationArgs
///                 {
///                     S3Destinations = new[]
///                     {
///                         new Aws.BcmData.Inputs.ExportExportDestinationConfigurationS3DestinationArgs
///                         {
///                             S3Bucket = testAwsS3Bucket.Bucket,
///                             S3Prefix = testAwsS3Bucket.BucketPrefix,
///                             S3Region = testAwsS3Bucket.Region,
///                             S3OutputConfigurations = new[]
///                             {
///                                 new Aws.BcmData.Inputs.ExportExportDestinationConfigurationS3DestinationS3OutputConfigurationArgs
///                                 {
///                                     Overwrite = "OVERWRITE_REPORT",
///                                     Format = "TEXT_OR_CSV",
///                                     Compression = "GZIP",
///                                     OutputType = "CUSTOM",
///                                 },
///                             },
///                         },
///                     },
///                 },
///             },
///             RefreshCadences = new[]
///             {
///                 new Aws.BcmData.Inputs.ExportExportRefreshCadenceArgs
///                 {
///                     Frequency = "SYNCHRONOUS",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bcmdata"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		currentGetPartition, err := aws.GetPartition(ctx, &aws.GetPartitionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bcmdata.NewExport(ctx, "test", &bcmdata.ExportArgs{
/// 			Export: &bcmdata.ExportExportArgs{
/// 				Name: pulumi.String("testexample"),
/// 				DataQueries: bcmdata.ExportExportDataQueryArray{
/// 					&bcmdata.ExportExportDataQueryArgs{
/// 						QueryStatement: pulumi.String("SELECT identity_line_item_id, identity_time_interval, line_item_product_code,line_item_unblended_cost FROM COST_AND_USAGE_REPORT"),
/// 						TableConfigurations: pulumi.StringMapMap{
/// 							"COST_AND_USAGE_REPORT": pulumi.StringMap{
/// 								"BILLING_VIEW_ARN":                      pulumi.Sprintf("arn:%v:billing::%v:billingview/primary", currentGetPartition.Partition, current.AccountId),
/// 								"TIME_GRANULARITY":                      pulumi.String("HOURLY"),
/// 								"INCLUDE_RESOURCES":                     pulumi.String("FALSE"),
/// 								"INCLUDE_MANUAL_DISCOUNT_COMPATIBILITY": pulumi.String("FALSE"),
/// 								"INCLUDE_SPLIT_COST_ALLOCATION_DATA":    pulumi.String("FALSE"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				DestinationConfigurations: bcmdata.ExportExportDestinationConfigurationArray{
/// 					&bcmdata.ExportExportDestinationConfigurationArgs{
/// 						S3Destinations: bcmdata.ExportExportDestinationConfigurationS3DestinationArray{
/// 							&bcmdata.ExportExportDestinationConfigurationS3DestinationArgs{
/// 								S3Bucket: pulumi.Any(testAwsS3Bucket.Bucket),
/// 								S3Prefix: pulumi.Any(testAwsS3Bucket.BucketPrefix),
/// 								S3Region: pulumi.Any(testAwsS3Bucket.Region),
/// 								S3OutputConfigurations: bcmdata.ExportExportDestinationConfigurationS3DestinationS3OutputConfigurationArray{
/// 									&bcmdata.ExportExportDestinationConfigurationS3DestinationS3OutputConfigurationArgs{
/// 										Overwrite:   pulumi.String("OVERWRITE_REPORT"),
/// 										Format:      pulumi.String("TEXT_OR_CSV"),
/// 										Compression: pulumi.String("GZIP"),
/// 										OutputType:  pulumi.String("CUSTOM"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				RefreshCadences: bcmdata.ExportExportRefreshCadenceArray{
/// 					&bcmdata.ExportExportRefreshCadenceArgs{
/// 						Frequency: pulumi.String("SYNCHRONOUS"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_getcalleridentity" "current" {
/// }
/// data "aws_getpartition" "currentGetPartition" {
/// }
///
/// resource "aws_bcmdata_export" "test" {
///   export = {
///     name = "testexample"
///     data_queries = [{
///       "queryStatement" = "SELECT identity_line_item_id, identity_time_interval, line_item_product_code,line_item_unblended_cost FROM COST_AND_USAGE_REPORT"
///       "tableConfigurations" = {
///         "COST_AND_USAGE_REPORT" = {
///           "BILLING_VIEW_ARN"                      ="arn:${data.aws_getpartition.currentGetPartition.partition}:billing::${data.aws_getcalleridentity.current.account_id}:billingview/primary"
///           "TIME_GRANULARITY"                      = "HOURLY"
///           "INCLUDE_RESOURCES"                     = "FALSE"
///           "INCLUDE_MANUAL_DISCOUNT_COMPATIBILITY" = "FALSE"
///           "INCLUDE_SPLIT_COST_ALLOCATION_DATA"    = "FALSE"
///         }
///       }
///     }]
///     destination_configurations = [{
///       "s3Destinations" = [{
///         "s3Bucket" = testAwsS3Bucket.bucket
///         "s3Prefix" = testAwsS3Bucket.bucketPrefix
///         "s3Region" = testAwsS3Bucket.region
///         "s3OutputConfigurations" = [{
///           "overwrite"   = "OVERWRITE_REPORT"
///           "format"      = "TEXT_OR_CSV"
///           "compression" = "GZIP"
///           "outputType"  = "CUSTOM"
///         }]
///       }]
///     }]
///     refresh_cadences = [{
///       "frequency" = "SYNCHRONOUS"
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.inputs.GetPartitionArgs;
/// import com.pulumi.aws.bcmdata.Export;
/// import com.pulumi.aws.bcmdata.ExportArgs;
/// import com.pulumi.aws.bcmdata.inputs.ExportExportArgs;
/// import com.pulumi.aws.bcmdata.inputs.ExportExportDataQueryArgs;
/// import com.pulumi.aws.bcmdata.inputs.ExportExportDestinationConfigurationArgs;
/// import com.pulumi.aws.bcmdata.inputs.ExportExportDestinationConfigurationS3DestinationArgs;
/// import com.pulumi.aws.bcmdata.inputs.ExportExportDestinationConfigurationS3DestinationS3OutputConfigurationArgs;
/// import com.pulumi.aws.bcmdata.inputs.ExportExportRefreshCadenceArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         final var currentGetPartition = AwsFunctions.getPartition(GetPartitionArgs.builder()
///             .build());
///
///         var test = new Export("test", ExportArgs.builder()
///             .export(ExportExportArgs.builder()
///                 .name("testexample")
///                 .dataQueries(ExportExportDataQueryArgs.builder()
///                     .queryStatement("SELECT identity_line_item_id, identity_time_interval, line_item_product_code,line_item_unblended_cost FROM COST_AND_USAGE_REPORT")
///                     .tableConfigurations(Map.of("COST_AND_USAGE_REPORT", Map.ofEntries(
///                         Map.entry("BILLING_VIEW_ARN", String.format("arn:%s:billing::%s:billingview/primary", currentGetPartition.partition(),current.accountId())),
///                         Map.entry("TIME_GRANULARITY", "HOURLY"),
///                         Map.entry("INCLUDE_RESOURCES", "FALSE"),
///                         Map.entry("INCLUDE_MANUAL_DISCOUNT_COMPATIBILITY", "FALSE"),
///                         Map.entry("INCLUDE_SPLIT_COST_ALLOCATION_DATA", "FALSE")
///                     )))
///                     .build())
///                 .destinationConfigurations(ExportExportDestinationConfigurationArgs.builder()
///                     .s3Destinations(ExportExportDestinationConfigurationS3DestinationArgs.builder()
///                         .s3Bucket(testAwsS3Bucket.bucket())
///                         .s3Prefix(testAwsS3Bucket.bucketPrefix())
///                         .s3Region(testAwsS3Bucket.region())
///                         .s3OutputConfigurations(ExportExportDestinationConfigurationS3DestinationS3OutputConfigurationArgs.builder()
///                             .overwrite("OVERWRITE_REPORT")
///                             .format("TEXT_OR_CSV")
///                             .compression("GZIP")
///                             .outputType("CUSTOM")
///                             .build())
///                         .build())
///                     .build())
///                 .refreshCadences(ExportExportRefreshCadenceArgs.builder()
///                     .frequency("SYNCHRONOUS")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:bcmdata:Export
///     properties:
///       export:
///         name: testexample
///         dataQueries:
///           - queryStatement: SELECT identity_line_item_id, identity_time_interval, line_item_product_code,line_item_unblended_cost FROM COST_AND_USAGE_REPORT
///             tableConfigurations:
///               COST_AND_USAGE_REPORT:
///                 BILLING_VIEW_ARN: arn:${currentGetPartition.partition}:billing::${current.accountId}:billingview/primary
///                 TIME_GRANULARITY: HOURLY
///                 INCLUDE_RESOURCES: FALSE
///                 INCLUDE_MANUAL_DISCOUNT_COMPATIBILITY: FALSE
///                 INCLUDE_SPLIT_COST_ALLOCATION_DATA: FALSE
///         destinationConfigurations:
///           - s3Destinations:
///               - s3Bucket: ${testAwsS3Bucket.bucket}
///                 s3Prefix: ${testAwsS3Bucket.bucketPrefix}
///                 s3Region: ${testAwsS3Bucket.region}
///                 s3OutputConfigurations:
///                   - overwrite: OVERWRITE_REPORT
///                     format: TEXT_OR_CSV
///                     compression: GZIP
///                     outputType: CUSTOM
///         refreshCadences:
///           - frequency: SYNCHRONOUS
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
///   currentGetPartition:
///     fn::invoke:
///       function: aws:getPartition
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the BCM Data Exports export.
///
///
/// Using `pulumi import`, import BCM Data Exports Export using the export ARN. For example:
///
/// ```sh
/// $ pulumi import aws:bcmdata/export:Export example arn:aws:bcm-data-exports:us-east-1:123456789012:export/CostUsageReport-9f1c75f3-f982-4d9a-b936-1e7ecab814b7
/// ```
class Export extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) for this export.
  /// * `export[0].export_arn` - Amazon Resource Name (ARN) for this export.
  late final pulumi.Output<String> arn;
  /// The details of the export, including data query, name, description, and destination configuration.  See the `export` argument reference below.
  late final pulumi.Output<ExportExport?> export;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<ExportTimeouts?> timeouts;

  /// Creates a new [Export].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Export]. {@macro pulumi_bcmdata_export_export_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Export(
    String name, {
    ExportArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bcmdata/export:Export',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    export = registerOutput<ExportExport?>('export', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExportExport.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<ExportTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExportTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Export] resource's state with the given [name] and [id].
  static Export get(
    String name,
    pulumi.Input<String> id, {
    ExportState? state,
  }) {
    return Export._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Export._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bcmdata/export:Export',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    export = registerOutput<ExportExport?>('export', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExportExport.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<ExportTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExportTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
