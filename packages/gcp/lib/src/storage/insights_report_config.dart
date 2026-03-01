import 'package:pulumi/pulumi.dart' as pulumi;
import 'insights_report_config_args.dart';
import 'insights_report_config_csv_options.dart';
import 'insights_report_config_frequency_options.dart';
import 'insights_report_config_object_metadata_report_options.dart';

/// Represents an inventory report configuration.
///
///
/// To get more information about ReportConfig, see:
///
/// * [API documentation](https://cloud.google.com/storage/docs/json_api/v1/reportConfig)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/storage/docs/insights/using-storage-insights)
///
/// ## Example Usage
///
/// ### Storage Insights Report Config
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const reportBucket = new gcp.storage.Bucket("report_bucket", {
///     name: "my-bucket",
///     location: "us-central1",
///     forceDestroy: true,
///     uniformBucketLevelAccess: true,
/// });
/// const admin = new gcp.storage.BucketIAMMember("admin", {
///     bucket: reportBucket.name,
///     role: "roles/storage.admin",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-storageinsights.iam.gserviceaccount.com`),
/// });
/// const config = new gcp.storage.InsightsReportConfig("config", {
///     displayName: "Test Report Config",
///     location: "us-central1",
///     frequencyOptions: {
///         frequency: "WEEKLY",
///         startDate: {
///             day: 15,
///             month: 3,
///             year: 2050,
///         },
///         endDate: {
///             day: 15,
///             month: 4,
///             year: 2050,
///         },
///     },
///     csvOptions: {
///         recordSeparator: "\n",
///         delimiter: ",",
///         headerRequired: false,
///     },
///     objectMetadataReportOptions: {
///         metadataFields: [
///             "bucket",
///             "name",
///             "project",
///         ],
///         storageFilters: {
///             bucket: reportBucket.name,
///         },
///         storageDestinationOptions: {
///             bucket: reportBucket.name,
///             destinationPath: "test-insights-reports",
///         },
///     },
/// }, {
///     dependsOn: [admin],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// report_bucket = gcp.storage.Bucket("report_bucket",
///     name="my-bucket",
///     location="us-central1",
///     force_destroy=True,
///     uniform_bucket_level_access=True)
/// admin = gcp.storage.BucketIAMMember("admin",
///     bucket=report_bucket.name,
///     role="roles/storage.admin",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-storageinsights.iam.gserviceaccount.com")
/// config = gcp.storage.InsightsReportConfig("config",
///     display_name="Test Report Config",
///     location="us-central1",
///     frequency_options={
///         "frequency": "WEEKLY",
///         "start_date": {
///             "day": 15,
///             "month": 3,
///             "year": 2050,
///         },
///         "end_date": {
///             "day": 15,
///             "month": 4,
///             "year": 2050,
///         },
///     },
///     csv_options={
///         "record_separator": "\n",
///         "delimiter": ",",
///         "header_required": False,
///     },
///     object_metadata_report_options={
///         "metadata_fields": [
///             "bucket",
///             "name",
///             "project",
///         ],
///         "storage_filters": {
///             "bucket": report_bucket.name,
///         },
///         "storage_destination_options": {
///             "bucket": report_bucket.name,
///             "destination_path": "test-insights-reports",
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[admin]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var reportBucket = new Gcp.Storage.Bucket("report_bucket", new()
///     {
///         Name = "my-bucket",
///         Location = "us-central1",
///         ForceDestroy = true,
///         UniformBucketLevelAccess = true,
///     });
///
///     var admin = new Gcp.Storage.BucketIAMMember("admin", new()
///     {
///         Bucket = reportBucket.Name,
///         Role = "roles/storage.admin",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-storageinsights.iam.gserviceaccount.com",
///     });
///
///     var config = new Gcp.Storage.InsightsReportConfig("config", new()
///     {
///         DisplayName = "Test Report Config",
///         Location = "us-central1",
///         FrequencyOptions = new Gcp.Storage.Inputs.InsightsReportConfigFrequencyOptionsArgs
///         {
///             Frequency = "WEEKLY",
///             StartDate = new Gcp.Storage.Inputs.InsightsReportConfigFrequencyOptionsStartDateArgs
///             {
///                 Day = 15,
///                 Month = 3,
///                 Year = 2050,
///             },
///             EndDate = new Gcp.Storage.Inputs.InsightsReportConfigFrequencyOptionsEndDateArgs
///             {
///                 Day = 15,
///                 Month = 4,
///                 Year = 2050,
///             },
///         },
///         CsvOptions = new Gcp.Storage.Inputs.InsightsReportConfigCsvOptionsArgs
///         {
///             RecordSeparator = @"
/// ",
///             Delimiter = ",",
///             HeaderRequired = false,
///         },
///         ObjectMetadataReportOptions = new Gcp.Storage.Inputs.InsightsReportConfigObjectMetadataReportOptionsArgs
///         {
///             MetadataFields = new[]
///             {
///                 "bucket",
///                 "name",
///                 "project",
///             },
///             StorageFilters = new Gcp.Storage.Inputs.InsightsReportConfigObjectMetadataReportOptionsStorageFiltersArgs
///             {
///                 Bucket = reportBucket.Name,
///             },
///             StorageDestinationOptions = new Gcp.Storage.Inputs.InsightsReportConfigObjectMetadataReportOptionsStorageDestinationOptionsArgs
///             {
///                 Bucket = reportBucket.Name,
///                 DestinationPath = "test-insights-reports",
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             admin,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		reportBucket, err := storage.NewBucket(ctx, "report_bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("my-bucket"),
/// 			Location:                 pulumi.String("us-central1"),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		admin, err := storage.NewBucketIAMMember(ctx, "admin", &storage.BucketIAMMemberArgs{
/// 			Bucket: reportBucket.Name,
/// 			Role:   pulumi.String("roles/storage.admin"),
/// 			Member: pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-storageinsights.iam.gserviceaccount.com", project.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewInsightsReportConfig(ctx, "config", &storage.InsightsReportConfigArgs{
/// 			DisplayName: pulumi.String("Test Report Config"),
/// 			Location:    pulumi.String("us-central1"),
/// 			FrequencyOptions: &storage.InsightsReportConfigFrequencyOptionsArgs{
/// 				Frequency: pulumi.String("WEEKLY"),
/// 				StartDate: &storage.InsightsReportConfigFrequencyOptionsStartDateArgs{
/// 					Day:   pulumi.Int(15),
/// 					Month: pulumi.Int(3),
/// 					Year:  pulumi.Int(2050),
/// 				},
/// 				EndDate: &storage.InsightsReportConfigFrequencyOptionsEndDateArgs{
/// 					Day:   pulumi.Int(15),
/// 					Month: pulumi.Int(4),
/// 					Year:  pulumi.Int(2050),
/// 				},
/// 			},
/// 			CsvOptions: &storage.InsightsReportConfigCsvOptionsArgs{
/// 				RecordSeparator: pulumi.String("\n"),
/// 				Delimiter:       pulumi.String(","),
/// 				HeaderRequired:  pulumi.Bool(false),
/// 			},
/// 			ObjectMetadataReportOptions: &storage.InsightsReportConfigObjectMetadataReportOptionsArgs{
/// 				MetadataFields: pulumi.StringArray{
/// 					pulumi.String("bucket"),
/// 					pulumi.String("name"),
/// 					pulumi.String("project"),
/// 				},
/// 				StorageFilters: &storage.InsightsReportConfigObjectMetadataReportOptionsStorageFiltersArgs{
/// 					Bucket: reportBucket.Name,
/// 				},
/// 				StorageDestinationOptions: &storage.InsightsReportConfigObjectMetadataReportOptionsStorageDestinationOptionsArgs{
/// 					Bucket:          reportBucket.Name,
/// 					DestinationPath: pulumi.String("test-insights-reports"),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			admin,
/// 		}))
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketIAMMember;
/// import com.pulumi.gcp.storage.BucketIAMMemberArgs;
/// import com.pulumi.gcp.storage.InsightsReportConfig;
/// import com.pulumi.gcp.storage.InsightsReportConfigArgs;
/// import com.pulumi.gcp.storage.inputs.InsightsReportConfigFrequencyOptionsArgs;
/// import com.pulumi.gcp.storage.inputs.InsightsReportConfigFrequencyOptionsStartDateArgs;
/// import com.pulumi.gcp.storage.inputs.InsightsReportConfigFrequencyOptionsEndDateArgs;
/// import com.pulumi.gcp.storage.inputs.InsightsReportConfigCsvOptionsArgs;
/// import com.pulumi.gcp.storage.inputs.InsightsReportConfigObjectMetadataReportOptionsArgs;
/// import com.pulumi.gcp.storage.inputs.InsightsReportConfigObjectMetadataReportOptionsStorageFiltersArgs;
/// import com.pulumi.gcp.storage.inputs.InsightsReportConfigObjectMetadataReportOptionsStorageDestinationOptionsArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var reportBucket = new Bucket("reportBucket", BucketArgs.builder()
///             .name("my-bucket")
///             .location("us-central1")
///             .forceDestroy(true)
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var admin = new BucketIAMMember("admin", BucketIAMMemberArgs.builder()
///             .bucket(reportBucket.name())
///             .role("roles/storage.admin")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-storageinsights.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         var config = new InsightsReportConfig("config", InsightsReportConfigArgs.builder()
///             .displayName("Test Report Config")
///             .location("us-central1")
///             .frequencyOptions(InsightsReportConfigFrequencyOptionsArgs.builder()
///                 .frequency("WEEKLY")
///                 .startDate(InsightsReportConfigFrequencyOptionsStartDateArgs.builder()
///                     .day(15)
///                     .month(3)
///                     .year(2050)
///                     .build())
///                 .endDate(InsightsReportConfigFrequencyOptionsEndDateArgs.builder()
///                     .day(15)
///                     .month(4)
///                     .year(2050)
///                     .build())
///                 .build())
///             .csvOptions(InsightsReportConfigCsvOptionsArgs.builder()
///                 .recordSeparator("""
///
///                 """)
///                 .delimiter(",")
///                 .headerRequired(false)
///                 .build())
///             .objectMetadataReportOptions(InsightsReportConfigObjectMetadataReportOptionsArgs.builder()
///                 .metadataFields(
///                     "bucket",
///                     "name",
///                     "project")
///                 .storageFilters(InsightsReportConfigObjectMetadataReportOptionsStorageFiltersArgs.builder()
///                     .bucket(reportBucket.name())
///                     .build())
///                 .storageDestinationOptions(InsightsReportConfigObjectMetadataReportOptionsStorageDestinationOptionsArgs.builder()
///                     .bucket(reportBucket.name())
///                     .destinationPath("test-insights-reports")
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(admin)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   config:
///     type: gcp:storage:InsightsReportConfig
///     properties:
///       displayName: Test Report Config
///       location: us-central1
///       frequencyOptions:
///         frequency: WEEKLY
///         startDate:
///           day: 15
///           month: 3
///           year: 2050
///         endDate:
///           day: 15
///           month: 4
///           year: 2050
///       csvOptions:
///         recordSeparator: |2+
///         delimiter: ','
///         headerRequired: false
///       objectMetadataReportOptions:
///         metadataFields:
///           - bucket
///           - name
///           - project
///         storageFilters:
///           bucket: ${reportBucket.name}
///         storageDestinationOptions:
///           bucket: ${reportBucket.name}
///           destinationPath: test-insights-reports
///     options:
///       dependsOn:
///         - ${admin}
///   reportBucket:
///     type: gcp:storage:Bucket
///     name: report_bucket
///     properties:
///       name: my-bucket
///       location: us-central1
///       forceDestroy: true
///       uniformBucketLevelAccess: true
///   admin:
///     type: gcp:storage:BucketIAMMember
///     properties:
///       bucket: ${reportBucket.name}
///       role: roles/storage.admin
///       member: serviceAccount:service-${project.number}@gcp-sa-storageinsights.iam.gserviceaccount.com
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// ReportConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/reportConfigs/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, ReportConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:storage/insightsReportConfig:InsightsReportConfig default projects/{{project}}/locations/{{location}}/reportConfigs/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:storage/insightsReportConfig:InsightsReportConfig default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:storage/insightsReportConfig:InsightsReportConfig default {{location}}/{{name}}
/// ```
class InsightsReportConfig extends pulumi.CustomResource {
  /// Options for configuring the format of the inventory report CSV file.
  /// Structure is documented below.
  late final pulumi.Output<InsightsReportConfigCsvOptions?> csvOptions;
  /// The editable display name of the inventory report configuration. Has a limit of 256 characters. Can be empty.
  late final pulumi.Output<String?> displayName;
  /// If set, all the inventory report details associated with this report configuration are deleted.
  late final pulumi.Output<bool?> forceDestroy;
  /// Options for configuring how inventory reports are generated.
  /// Structure is documented below.
  late final pulumi.Output<InsightsReportConfigFrequencyOptions?> frequencyOptions;
  /// The location of the ReportConfig. The source and destination buckets specified in the ReportConfig
  /// must be in the same location.
  late final pulumi.Output<String> location;
  /// The UUID of the inventory report configuration.
  late final pulumi.Output<String> name;
  /// Options for including metadata in an inventory report.
  /// Structure is documented below.
  late final pulumi.Output<InsightsReportConfigObjectMetadataReportOptions?> objectMetadataReportOptions;
  /// An option for outputting inventory reports as parquet files.
  late final pulumi.Output<Map<String, dynamic>?> parquetOptions;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [InsightsReportConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InsightsReportConfig]. {@macro pulumi_storage_insights_report_config_insights_report_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InsightsReportConfig(
    String name, {
    InsightsReportConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:storage/insightsReportConfig:InsightsReportConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.csvOptions = registerOutput<InsightsReportConfigCsvOptions?>('csvOptions');
    this.displayName = registerOutput<String?>('displayName');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.frequencyOptions = registerOutput<InsightsReportConfigFrequencyOptions?>('frequencyOptions');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.objectMetadataReportOptions = registerOutput<InsightsReportConfigObjectMetadataReportOptions?>('objectMetadataReportOptions');
    this.parquetOptions = registerOutput<Map<String, dynamic>?>('parquetOptions');
    this.project = registerOutput<String>('project');
  }
}
