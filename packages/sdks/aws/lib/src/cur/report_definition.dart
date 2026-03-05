import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_definition_args.dart';
import 'report_definition_state.dart';

/// Manages Cost and Usage Report Definitions.
///
/// &gt; *NOTE:* The AWS Cost and Usage Report service is only available in `us-east-1` currently.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleCurReportDefinition = new aws.cur.ReportDefinition("example_cur_report_definition", {
///     reportName: "example-cur-report-definition",
///     timeUnit: "HOURLY",
///     format: "textORcsv",
///     compression: "GZIP",
///     additionalSchemaElements: [
///         "RESOURCES",
///         "SPLIT_COST_ALLOCATION_DATA",
///     ],
///     s3Bucket: "example-bucket-name",
///     s3Prefix: "example-cur-report",
///     s3Region: "us-east-1",
///     additionalArtifacts: [
///         "REDSHIFT",
///         "QUICKSIGHT",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_cur_report_definition = aws.cur.ReportDefinition("example_cur_report_definition",
///     report_name="example-cur-report-definition",
///     time_unit="HOURLY",
///     format="textORcsv",
///     compression="GZIP",
///     additional_schema_elements=[
///         "RESOURCES",
///         "SPLIT_COST_ALLOCATION_DATA",
///     ],
///     s3_bucket="example-bucket-name",
///     s3_prefix="example-cur-report",
///     s3_region="us-east-1",
///     additional_artifacts=[
///         "REDSHIFT",
///         "QUICKSIGHT",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleCurReportDefinition = new Aws.Cur.ReportDefinition("example_cur_report_definition", new()
///     {
///         ReportName = "example-cur-report-definition",
///         TimeUnit = "HOURLY",
///         Format = "textORcsv",
///         Compression = "GZIP",
///         AdditionalSchemaElements = new[]
///         {
///             "RESOURCES",
///             "SPLIT_COST_ALLOCATION_DATA",
///         },
///         S3Bucket = "example-bucket-name",
///         S3Prefix = "example-cur-report",
///         S3Region = "us-east-1",
///         AdditionalArtifacts = new[]
///         {
///             "REDSHIFT",
///             "QUICKSIGHT",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cur"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cur.NewReportDefinition(ctx, "example_cur_report_definition", &cur.ReportDefinitionArgs{
/// 			ReportName:  pulumi.String("example-cur-report-definition"),
/// 			TimeUnit:    pulumi.String("HOURLY"),
/// 			Format:      pulumi.String("textORcsv"),
/// 			Compression: pulumi.String("GZIP"),
/// 			AdditionalSchemaElements: pulumi.StringArray{
/// 				pulumi.String("RESOURCES"),
/// 				pulumi.String("SPLIT_COST_ALLOCATION_DATA"),
/// 			},
/// 			S3Bucket: pulumi.String("example-bucket-name"),
/// 			S3Prefix: pulumi.String("example-cur-report"),
/// 			S3Region: pulumi.String("us-east-1"),
/// 			AdditionalArtifacts: pulumi.StringArray{
/// 				pulumi.String("REDSHIFT"),
/// 				pulumi.String("QUICKSIGHT"),
/// 			},
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
/// import com.pulumi.aws.cur.ReportDefinition;
/// import com.pulumi.aws.cur.ReportDefinitionArgs;
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
///         var exampleCurReportDefinition = new ReportDefinition("exampleCurReportDefinition", ReportDefinitionArgs.builder()
///             .reportName("example-cur-report-definition")
///             .timeUnit("HOURLY")
///             .format("textORcsv")
///             .compression("GZIP")
///             .additionalSchemaElements(
///                 "RESOURCES",
///                 "SPLIT_COST_ALLOCATION_DATA")
///             .s3Bucket("example-bucket-name")
///             .s3Prefix("example-cur-report")
///             .s3Region("us-east-1")
///             .additionalArtifacts(
///                 "REDSHIFT",
///                 "QUICKSIGHT")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleCurReportDefinition:
///     type: aws:cur:ReportDefinition
///     name: example_cur_report_definition
///     properties:
///       reportName: example-cur-report-definition
///       timeUnit: HOURLY
///       format: textORcsv
///       compression: GZIP
///       additionalSchemaElements:
///         - RESOURCES
///         - SPLIT_COST_ALLOCATION_DATA
///       s3Bucket: example-bucket-name
///       s3Prefix: example-cur-report
///       s3Region: us-east-1
///       additionalArtifacts:
///         - REDSHIFT
///         - QUICKSIGHT
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Report Definitions using the `report_name`. For example:
///
/// ```sh
/// $ pulumi import aws:cur/reportDefinition:ReportDefinition example_cur_report_definition example-cur-report-definition
/// ```
class ReportDefinition extends pulumi.CustomResource {
  /// A list of additional artifacts. Valid values are: `REDSHIFT`, `QUICKSIGHT`, `ATHENA`. When ATHENA exists within additional_artifacts, no other artifact type can be declared and report_versioning must be `OVERWRITE_REPORT`.
  late final pulumi.Output<List<String>?> additionalArtifacts;
  /// A list of schema elements. Valid values are: `RESOURCES`, `SPLIT_COST_ALLOCATION_DATA`, `MANUAL_DISCOUNT_COMPATIBILITY`.
  late final pulumi.Output<List<String>> additionalSchemaElements;
  /// The Amazon Resource Name (ARN) specifying the cur report.
  late final pulumi.Output<String> arn;
  /// Compression format for report. Valid values are: `GZIP`, `ZIP`, `Parquet`. If `Parquet` is used, then format must also be `Parquet`.
  late final pulumi.Output<String> compression;
  /// Format for report. Valid values are: `textORcsv`, `Parquet`. If `Parquet` is used, then Compression must also be `Parquet`.
  late final pulumi.Output<String> format;
  /// Set to true to update your reports after they have been finalized if AWS detects charges related to previous months.
  late final pulumi.Output<bool?> refreshClosedReports;
  /// Unique name for the report. Must start with a number/letter and is case sensitive. Limited to 256 characters.
  late final pulumi.Output<String> reportName;
  /// Overwrite the previous version of each report or to deliver the report in addition to the previous versions. Valid values are: `CREATE_NEW_REPORT` and `OVERWRITE_REPORT`.
  late final pulumi.Output<String?> reportVersioning;
  /// Name of the existing S3 bucket to hold generated reports.
  late final pulumi.Output<String> s3Bucket;
  /// Report path prefix. Limited to 256 characters. May be empty (`""`) but the resource can then not be modified via the AWS Console.
  late final pulumi.Output<String> s3Prefix;
  /// Region of the existing S3 bucket to hold generated reports.
  late final pulumi.Output<String> s3Region;
  /// Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The frequency on which report data are measured and displayed.  Valid values are: `DAILY`, `HOURLY`, `MONTHLY`.
  late final pulumi.Output<String> timeUnit;

  /// Creates a new [ReportDefinition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReportDefinition]. {@macro pulumi_cur_report_definition_report_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReportDefinition(
    String name, {
    ReportDefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cur/reportDefinition:ReportDefinition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalArtifacts = registerOutput<List<String>?>('additionalArtifacts');
    additionalSchemaElements = registerOutput<List<String>>('additionalSchemaElements');
    arn = registerOutput<String>('arn');
    compression = registerOutput<String>('compression');
    format = registerOutput<String>('format');
    refreshClosedReports = registerOutput<bool?>('refreshClosedReports');
    reportName = registerOutput<String>('reportName');
    reportVersioning = registerOutput<String?>('reportVersioning');
    s3Bucket = registerOutput<String>('s3Bucket');
    s3Prefix = registerOutput<String>('s3Prefix');
    s3Region = registerOutput<String>('s3Region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeUnit = registerOutput<String>('timeUnit');
  }

  /// Gets an existing [ReportDefinition] resource's state with the given [name] and [id].
  static ReportDefinition get(
    String name,
    pulumi.Input<String> id, {
    ReportDefinitionState? state,
  }) {
    return ReportDefinition._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ReportDefinition._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cur/reportDefinition:ReportDefinition',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalArtifacts = registerOutput<List<String>?>('additionalArtifacts');
    additionalSchemaElements = registerOutput<List<String>>('additionalSchemaElements');
    arn = registerOutput<String>('arn');
    compression = registerOutput<String>('compression');
    format = registerOutput<String>('format');
    refreshClosedReports = registerOutput<bool?>('refreshClosedReports');
    reportName = registerOutput<String>('reportName');
    reportVersioning = registerOutput<String?>('reportVersioning');
    s3Bucket = registerOutput<String>('s3Bucket');
    s3Prefix = registerOutput<String>('s3Prefix');
    s3Region = registerOutput<String>('s3Region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeUnit = registerOutput<String>('timeUnit');
  }
}
