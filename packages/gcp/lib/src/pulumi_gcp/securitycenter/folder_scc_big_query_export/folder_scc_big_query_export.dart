import 'package:pulumi/pulumi.dart';
import 'folder_scc_big_query_export_args.dart';

/// A Cloud Security Command Center (Cloud SCC) Big Query Export Config.
/// It represents exporting Security Command Center data, including assets, findings, and security marks
/// to a BigQuery instance.
///
/// > **Note:** In order to use Cloud SCC resources, your organization must be enrolled
/// in [SCC Standard/Premium](https://cloud.google.com/security-command-center/docs/quickstart-security-command-center).
/// Without doing so, you may run into errors during resource creation.
///
///
/// To get more information about FolderSccBigQueryExport, see:
///
/// * [API documentation](https://cloud.google.com/security-command-center/docs/reference/rest/v1/folders.bigQueryExports)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/security-command-center/docs/how-to-analyze-findings-in-big-query)
///
/// ## Example Usage
///
/// ### Scc Folder Big Query Export Config Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const folder = new gcp.organizations.Folder("folder", {
/// parent: "organizations/123456789",
/// displayName: "folder-name",
/// deletionProtection: false,
/// });
/// const _default = new gcp.bigquery.Dataset("default", {
/// datasetId: "my_dataset_id",
/// friendlyName: "test",
/// description: "This is a test description",
/// location: "US",
/// defaultTableExpirationMs: 3600000,
/// defaultPartitionExpirationMs: null,
/// labels: {
/// env: "default",
/// },
/// });
/// const customBigQueryExportConfig = new gcp.securitycenter.FolderSccBigQueryExport("custom_big_query_export_config", {
/// bigQueryExportId: "my-export",
/// folder: folder.folderId,
/// dataset: _default.id,
/// description: "Cloud Security Command Center Findings Big Query Export Config",
/// filter: "state=\"ACTIVE\" AND NOT mute=\"MUTED\"",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// folder = gcp.organizations.Folder("folder",
/// parent="organizations/123456789",
/// display_name="folder-name",
/// deletion_protection=False)
/// default = gcp.bigquery.Dataset("default",
/// dataset_id="my_dataset_id",
/// friendly_name="test",
/// description="This is a test description",
/// location="US",
/// default_table_expiration_ms=3600000,
/// default_partition_expiration_ms=None,
/// labels={
/// "env": "default",
/// })
/// custom_big_query_export_config = gcp.securitycenter.FolderSccBigQueryExport("custom_big_query_export_config",
/// big_query_export_id="my-export",
/// folder=folder.folder_id,
/// dataset=default.id,
/// description="Cloud Security Command Center Findings Big Query Export Config",
/// filter="state=\"ACTIVE\" AND NOT mute=\"MUTED\"")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var folder = new Gcp.Organizations.Folder("folder", new()
/// {
/// Parent = "organizations/123456789",
/// DisplayName = "folder-name",
/// DeletionProtection = false,
/// });
///
/// var @default = new Gcp.BigQuery.Dataset("default", new()
/// {
/// DatasetId = "my_dataset_id",
/// FriendlyName = "test",
/// Description = "This is a test description",
/// Location = "US",
/// DefaultTableExpirationMs = 3600000,
/// DefaultPartitionExpirationMs = null,
/// Labels =
/// {
/// { "env", "default" },
/// },
/// });
///
/// var customBigQueryExportConfig = new Gcp.SecurityCenter.FolderSccBigQueryExport("custom_big_query_export_config", new()
/// {
/// BigQueryExportId = "my-export",
/// Folder = folder.FolderId,
/// Dataset = @default.Id,
/// Description = "Cloud Security Command Center Findings Big Query Export Config",
/// Filter = "state=\"ACTIVE\" AND NOT mute=\"MUTED\"",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securitycenter"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// folder, err := organizations.NewFolder(ctx, "folder", &organizations.FolderArgs{
/// Parent:             pulumi.String("organizations/123456789"),
/// DisplayName:        pulumi.String("folder-name"),
/// DeletionProtection: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// _default, err := bigquery.NewDataset(ctx, "default", &bigquery.DatasetArgs{
/// DatasetId:                    pulumi.String("my_dataset_id"),
/// FriendlyName:                 pulumi.String("test"),
/// Description:                  pulumi.String("This is a test description"),
/// Location:                     pulumi.String("US"),
/// DefaultTableExpirationMs:     pulumi.Int(3600000),
/// DefaultPartitionExpirationMs: nil,
/// Labels: pulumi.StringMap{
/// "env": pulumi.String("default"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = securitycenter.NewFolderSccBigQueryExport(ctx, "custom_big_query_export_config", &securitycenter.FolderSccBigQueryExportArgs{
/// BigQueryExportId: pulumi.String("my-export"),
/// Folder:           folder.FolderId,
/// Dataset:          _default.ID(),
/// Description:      pulumi.String("Cloud Security Command Center Findings Big Query Export Config"),
/// Filter:           pulumi.String("state=\"ACTIVE\" AND NOT mute=\"MUTED\""),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.Folder;
/// import com.pulumi.gcp.organizations.FolderArgs;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.securitycenter.FolderSccBigQueryExport;
/// import com.pulumi.gcp.securitycenter.FolderSccBigQueryExportArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var folder = new Folder("folder", FolderArgs.builder()
/// .parent("organizations/123456789")
/// .displayName("folder-name")
/// .deletionProtection(false)
/// .build());
///
/// var default_ = new Dataset("default", DatasetArgs.builder()
/// .datasetId("my_dataset_id")
/// .friendlyName("test")
/// .description("This is a test description")
/// .location("US")
/// .defaultTableExpirationMs(3600000)
/// .defaultPartitionExpirationMs(null)
/// .labels(Map.of("env", "default"))
/// .build());
///
/// var customBigQueryExportConfig = new FolderSccBigQueryExport("customBigQueryExportConfig", FolderSccBigQueryExportArgs.builder()
/// .bigQueryExportId("my-export")
/// .folder(folder.folderId())
/// .dataset(default_.id())
/// .description("Cloud Security Command Center Findings Big Query Export Config")
/// .filter("state=\"ACTIVE\" AND NOT mute=\"MUTED\"")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// folder:
/// type: gcp:organizations:Folder
/// properties:
/// parent: organizations/123456789
/// displayName: folder-name
/// deletionProtection: false
/// default:
/// type: gcp:bigquery:Dataset
/// properties:
/// datasetId: my_dataset_id
/// friendlyName: test
/// description: This is a test description
/// location: US
/// defaultTableExpirationMs: 3.6e+06
/// defaultPartitionExpirationMs: null
/// labels:
/// env: default
/// customBigQueryExportConfig:
/// type: gcp:securitycenter:FolderSccBigQueryExport
/// name: custom_big_query_export_config
/// properties:
/// bigQueryExportId: my-export
/// folder: ${folder.folderId}
/// dataset: ${default.id}
/// description: Cloud Security Command Center Findings Big Query Export Config
/// filter: state="ACTIVE" AND NOT mute="MUTED"
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// FolderSccBigQueryExport can be imported using any of these accepted formats:
///
/// * `folders/{{folder}}/bigQueryExports/{{big_query_export_id}}`
///
/// * `{{folder}}/{{big_query_export_id}}`
///
/// When using the `pulumi import` command, FolderSccBigQueryExport can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securitycenter/folderSccBigQueryExport:FolderSccBigQueryExport default folders/{{folder}}/bigQueryExports/{{big_query_export_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securitycenter/folderSccBigQueryExport:FolderSccBigQueryExport default {{folder}}/{{big_query_export_id}}
/// ```
class FolderSccBigQueryExport extends CustomResource {
  /// This must be unique within the organization.
  late final Output<String> bigQueryExportId;

  /// The time at which the BigQuery export was created.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final Output<String> createTime;

  /// The dataset to write findings' updates to.
  /// Its format is "projects/[projectId]/datasets/<span pulumi-lang-nodejs="[bigqueryDatasetId]" pulumi-lang-dotnet="[BigqueryDatasetId]" pulumi-lang-go="[bigqueryDatasetId]" pulumi-lang-python="[bigquery_dataset_id]" pulumi-lang-yaml="[bigqueryDatasetId]" pulumi-lang-java="[bigqueryDatasetId]">[bigquery_dataset_id]</span>".
  /// BigQuery Dataset unique ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_).
  late final Output<String> dataset;

  /// The description of the export (max of 1024 characters).
  late final Output<String> description;

  /// Expression that defines the filter to apply across create/update
  /// events of findings. The
  /// expression is a list of zero or more restrictions combined via
  /// logical operators AND and OR. Parentheses are supported, and OR
  /// has higher precedence than AND.
  /// Restrictions have the form <field> <operator> <value> and may have
  /// a - character in front of them to indicate negation. The fields
  /// map to those defined in the corresponding resource.
  /// The supported operators are:
  /// * = for all value types.
  /// * >, <, >=, <= for integer values.
  /// * :, meaning substring matching, for strings.
  /// The supported value types are:
  /// * string literals in quotes.
  /// * integer literals without quotes.
  /// * boolean literals true and false without quotes.
  /// See
  /// [Filtering notifications](https://cloud.google.com/security-command-center/docs/how-to-api-filter-notifications)
  /// for information on how to write a filter.
  late final Output<String> filter;

  /// The folder where Cloud Security Command Center Big Query Export
  /// Config lives in.
  late final Output<String> folder;

  /// Email address of the user who last edited the BigQuery export.
  late final Output<String> mostRecentEditor;

  /// The resource name of this export, in the format
  /// `projects/{{project}}/bigQueryExports/{{big_query_export_id}}`.
  /// This field is provided in responses, and is ignored when provided in create requests.
  late final Output<String> name;

  /// The service account that needs permission to create table and upload data to the BigQuery dataset.
  late final Output<String> principal;

  /// The most recent time at which the BigQuery export was updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final Output<String> updateTime;

  FolderSccBigQueryExport(
    String name, {
    FolderSccBigQueryExportArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/folderSccBigQueryExport:FolderSccBigQueryExport',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bigQueryExportId = registerOutput<String>('bigQueryExportId');
    this.createTime = registerOutput<String>('createTime');
    this.dataset = registerOutput<String>('dataset');
    this.description = registerOutput<String>('description');
    this.filter = registerOutput<String>('filter');
    this.folder = registerOutput<String>('folder');
    this.mostRecentEditor = registerOutput<String>('mostRecentEditor');
    this.name = registerOutput<String>('name');
    this.principal = registerOutput<String>('principal');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
