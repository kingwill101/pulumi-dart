import 'package:pulumi/pulumi.dart';
import '../prevention_job_trigger_inspect_job/prevention_job_trigger_inspect_job.dart';
import '../prevention_job_trigger_trigger/prevention_job_trigger_trigger.dart';
import 'prevention_job_trigger_args.dart';

/// A job trigger configuration.
///
///
/// To get more information about JobTrigger, see:
///
/// * [API documentation](https://cloud.google.com/dlp/docs/reference/rest/v2/projects.jobTriggers)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dlp/docs/creating-job-triggers)
///
/// ## Example Usage
///
/// ### Dlp Job Trigger Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.dataloss.PreventionJobTrigger("basic", {
/// parent: "projects/my-project-name",
/// description: "Description",
/// displayName: "Displayname",
/// triggers: [{
/// schedule: {
/// recurrencePeriodDuration: "86400s",
/// },
/// }],
/// inspectJob: {
/// inspectTemplateName: "fake",
/// actions: [{
/// saveFindings: {
/// outputConfig: {
/// table: {
/// projectId: "project",
/// datasetId: "dataset",
/// },
/// },
/// },
/// }],
/// storageConfig: {
/// cloudStorageOptions: {
/// fileSet: {
/// url: "gs://mybucket/directory/",
/// },
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.dataloss.PreventionJobTrigger("basic",
/// parent="projects/my-project-name",
/// description="Description",
/// display_name="Displayname",
/// triggers=[{
/// "schedule": {
/// "recurrence_period_duration": "86400s",
/// },
/// }],
/// inspect_job={
/// "inspect_template_name": "fake",
/// "actions": [{
/// "save_findings": {
/// "output_config": {
/// "table": {
/// "project_id": "project",
/// "dataset_id": "dataset",
/// },
/// },
/// },
/// }],
/// "storage_config": {
/// "cloud_storage_options": {
/// "file_set": {
/// "url": "gs://mybucket/directory/",
/// },
/// },
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var basic = new Gcp.DataLoss.PreventionJobTrigger("basic", new()
/// {
/// Parent = "projects/my-project-name",
/// Description = "Description",
/// DisplayName = "Displayname",
/// Triggers = new[]
/// {
/// new Gcp.DataLoss.Inputs.PreventionJobTriggerTriggerArgs
/// {
/// Schedule = new Gcp.DataLoss.Inputs.PreventionJobTriggerTriggerScheduleArgs
/// {
/// RecurrencePeriodDuration = "86400s",
/// },
/// },
/// },
/// InspectJob = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobArgs
/// {
/// InspectTemplateName = "fake",
/// Actions = new[]
/// {
/// new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobActionArgs
/// {
/// SaveFindings = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobActionSaveFindingsArgs
/// {
/// OutputConfig = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigArgs
/// {
/// Table = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigTableArgs
/// {
/// ProjectId = "project",
/// DatasetId = "dataset",
/// },
/// },
/// },
/// },
/// },
/// StorageConfig = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobStorageConfigArgs
/// {
/// CloudStorageOptions = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsArgs
/// {
/// FileSet = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetArgs
/// {
/// Url = "gs://mybucket/directory/",
/// },
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataloss"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataloss.NewPreventionJobTrigger(ctx, "basic", &dataloss.PreventionJobTriggerArgs{
/// Parent:      pulumi.String("projects/my-project-name"),
/// Description: pulumi.String("Description"),
/// DisplayName: pulumi.String("Displayname"),
/// Triggers: dataloss.PreventionJobTriggerTriggerArray{
/// &dataloss.PreventionJobTriggerTriggerArgs{
/// Schedule: &dataloss.PreventionJobTriggerTriggerScheduleArgs{
/// RecurrencePeriodDuration: pulumi.String("86400s"),
/// },
/// },
/// },
/// InspectJob: &dataloss.PreventionJobTriggerInspectJobArgs{
/// InspectTemplateName: pulumi.String("fake"),
/// Actions: dataloss.PreventionJobTriggerInspectJobActionArray{
/// &dataloss.PreventionJobTriggerInspectJobActionArgs{
/// SaveFindings: &dataloss.PreventionJobTriggerInspectJobActionSaveFindingsArgs{
/// OutputConfig: &dataloss.PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigArgs{
/// Table: &dataloss.PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigTableArgs{
/// ProjectId: pulumi.String("project"),
/// DatasetId: pulumi.String("dataset"),
/// },
/// },
/// },
/// },
/// },
/// StorageConfig: &dataloss.PreventionJobTriggerInspectJobStorageConfigArgs{
/// CloudStorageOptions: &dataloss.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsArgs{
/// FileSet: &dataloss.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetArgs{
/// Url: pulumi.String("gs://mybucket/directory/"),
/// },
/// },
/// },
/// },
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
/// import com.pulumi.gcp.dataloss.PreventionJobTrigger;
/// import com.pulumi.gcp.dataloss.PreventionJobTriggerArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerTriggerArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerTriggerScheduleArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobStorageConfigArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetArgs;
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
/// var basic = new PreventionJobTrigger("basic", PreventionJobTriggerArgs.builder()
/// .parent("projects/my-project-name")
/// .description("Description")
/// .displayName("Displayname")
/// .triggers(PreventionJobTriggerTriggerArgs.builder()
/// .schedule(PreventionJobTriggerTriggerScheduleArgs.builder()
/// .recurrencePeriodDuration("86400s")
/// .build())
/// .build())
/// .inspectJob(PreventionJobTriggerInspectJobArgs.builder()
/// .inspectTemplateName("fake")
/// .actions(PreventionJobTriggerInspectJobActionArgs.builder()
/// .saveFindings(PreventionJobTriggerInspectJobActionSaveFindingsArgs.builder()
/// .outputConfig(PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigArgs.builder()
/// .table(PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigTableArgs.builder()
/// .projectId("project")
/// .datasetId("dataset")
/// .build())
/// .build())
/// .build())
/// .build())
/// .storageConfig(PreventionJobTriggerInspectJobStorageConfigArgs.builder()
/// .cloudStorageOptions(PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsArgs.builder()
/// .fileSet(PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetArgs.builder()
/// .url("gs://mybucket/directory/")
/// .build())
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// basic:
/// type: gcp:dataloss:PreventionJobTrigger
/// properties:
/// parent: projects/my-project-name
/// description: Description
/// displayName: Displayname
/// triggers:
/// - schedule:
/// recurrencePeriodDuration: 86400s
/// inspectJob:
/// inspectTemplateName: fake
/// actions:
/// - saveFindings:
/// outputConfig:
/// table:
/// projectId: project
/// datasetId: dataset
/// storageConfig:
/// cloudStorageOptions:
/// fileSet:
/// url: gs://mybucket/directory/
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Dlp Job Trigger Bigquery Row Limit
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bigqueryRowLimit = new gcp.dataloss.PreventionJobTrigger("bigquery_row_limit", {
/// parent: "projects/my-project-name",
/// description: "Description",
/// displayName: "Displayname",
/// triggers: [{
/// schedule: {
/// recurrencePeriodDuration: "86400s",
/// },
/// }],
/// inspectJob: {
/// inspectTemplateName: "fake",
/// actions: [{
/// saveFindings: {
/// outputConfig: {
/// table: {
/// projectId: "project",
/// datasetId: "dataset",
/// },
/// },
/// },
/// }],
/// storageConfig: {
/// bigQueryOptions: {
/// tableReference: {
/// projectId: "project",
/// datasetId: "dataset",
/// tableId: "table_to_scan",
/// },
/// rowsLimit: 1000,
/// sampleMethod: "RANDOM_START",
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bigquery_row_limit = gcp.dataloss.PreventionJobTrigger("bigquery_row_limit",
/// parent="projects/my-project-name",
/// description="Description",
/// display_name="Displayname",
/// triggers=[{
/// "schedule": {
/// "recurrence_period_duration": "86400s",
/// },
/// }],
/// inspect_job={
/// "inspect_template_name": "fake",
/// "actions": [{
/// "save_findings": {
/// "output_config": {
/// "table": {
/// "project_id": "project",
/// "dataset_id": "dataset",
/// },
/// },
/// },
/// }],
/// "storage_config": {
/// "big_query_options": {
/// "table_reference": {
/// "project_id": "project",
/// "dataset_id": "dataset",
/// "table_id": "table_to_scan",
/// },
/// "rows_limit": 1000,
/// "sample_method": "RANDOM_START",
/// },
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var bigqueryRowLimit = new Gcp.DataLoss.PreventionJobTrigger("bigquery_row_limit", new()
/// {
/// Parent = "projects/my-project-name",
/// Description = "Description",
/// DisplayName = "Displayname",
/// Triggers = new[]
/// {
/// new Gcp.DataLoss.Inputs.PreventionJobTriggerTriggerArgs
/// {
/// Schedule = new Gcp.DataLoss.Inputs.PreventionJobTriggerTriggerScheduleArgs
/// {
/// RecurrencePeriodDuration = "86400s",
/// },
/// },
/// },
/// InspectJob = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobArgs
/// {
/// InspectTemplateName = "fake",
/// Actions = new[]
/// {
/// new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobActionArgs
/// {
/// SaveFindings = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobActionSaveFindingsArgs
/// {
/// OutputConfig = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigArgs
/// {
/// Table = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigTableArgs
/// {
/// ProjectId = "project",
/// DatasetId = "dataset",
/// },
/// },
/// },
/// },
/// },
/// StorageConfig = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobStorageConfigArgs
/// {
/// BigQueryOptions = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsArgs
/// {
/// TableReference = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsTableReferenceArgs
/// {
/// ProjectId = "project",
/// DatasetId = "dataset",
/// TableId = "table_to_scan",
/// },
/// RowsLimit = 1000,
/// SampleMethod = "RANDOM_START",
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataloss"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataloss.NewPreventionJobTrigger(ctx, "bigquery_row_limit", &dataloss.PreventionJobTriggerArgs{
/// Parent:      pulumi.String("projects/my-project-name"),
/// Description: pulumi.String("Description"),
/// DisplayName: pulumi.String("Displayname"),
/// Triggers: dataloss.PreventionJobTriggerTriggerArray{
/// &dataloss.PreventionJobTriggerTriggerArgs{
/// Schedule: &dataloss.PreventionJobTriggerTriggerScheduleArgs{
/// RecurrencePeriodDuration: pulumi.String("86400s"),
/// },
/// },
/// },
/// InspectJob: &dataloss.PreventionJobTriggerInspectJobArgs{
/// InspectTemplateName: pulumi.String("fake"),
/// Actions: dataloss.PreventionJobTriggerInspectJobActionArray{
/// &dataloss.PreventionJobTriggerInspectJobActionArgs{
/// SaveFindings: &dataloss.PreventionJobTriggerInspectJobActionSaveFindingsArgs{
/// OutputConfig: &dataloss.PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigArgs{
/// Table: &dataloss.PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigTableArgs{
/// ProjectId: pulumi.String("project"),
/// DatasetId: pulumi.String("dataset"),
/// },
/// },
/// },
/// },
/// },
/// StorageConfig: &dataloss.PreventionJobTriggerInspectJobStorageConfigArgs{
/// BigQueryOptions: &dataloss.PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsArgs{
/// TableReference: &dataloss.PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsTableReferenceArgs{
/// ProjectId: pulumi.String("project"),
/// DatasetId: pulumi.String("dataset"),
/// TableId:   pulumi.String("table_to_scan"),
/// },
/// RowsLimit:    pulumi.Int(1000),
/// SampleMethod: pulumi.String("RANDOM_START"),
/// },
/// },
/// },
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
/// import com.pulumi.gcp.dataloss.PreventionJobTrigger;
/// import com.pulumi.gcp.dataloss.PreventionJobTriggerArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerTriggerArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerTriggerScheduleArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobStorageConfigArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsTableReferenceArgs;
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
/// var bigqueryRowLimit = new PreventionJobTrigger("bigqueryRowLimit", PreventionJobTriggerArgs.builder()
/// .parent("projects/my-project-name")
/// .description("Description")
/// .displayName("Displayname")
/// .triggers(PreventionJobTriggerTriggerArgs.builder()
/// .schedule(PreventionJobTriggerTriggerScheduleArgs.builder()
/// .recurrencePeriodDuration("86400s")
/// .build())
/// .build())
/// .inspectJob(PreventionJobTriggerInspectJobArgs.builder()
/// .inspectTemplateName("fake")
/// .actions(PreventionJobTriggerInspectJobActionArgs.builder()
/// .saveFindings(PreventionJobTriggerInspectJobActionSaveFindingsArgs.builder()
/// .outputConfig(PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigArgs.builder()
/// .table(PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigTableArgs.builder()
/// .projectId("project")
/// .datasetId("dataset")
/// .build())
/// .build())
/// .build())
/// .build())
/// .storageConfig(PreventionJobTriggerInspectJobStorageConfigArgs.builder()
/// .bigQueryOptions(PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsArgs.builder()
/// .tableReference(PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsTableReferenceArgs.builder()
/// .projectId("project")
/// .datasetId("dataset")
/// .tableId("table_to_scan")
/// .build())
/// .rowsLimit(1000)
/// .sampleMethod("RANDOM_START")
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// bigqueryRowLimit:
/// type: gcp:dataloss:PreventionJobTrigger
/// name: bigquery_row_limit
/// properties:
/// parent: projects/my-project-name
/// description: Description
/// displayName: Displayname
/// triggers:
/// - schedule:
/// recurrencePeriodDuration: 86400s
/// inspectJob:
/// inspectTemplateName: fake
/// actions:
/// - saveFindings:
/// outputConfig:
/// table:
/// projectId: project
/// datasetId: dataset
/// storageConfig:
/// bigQueryOptions:
/// tableReference:
/// projectId: project
/// datasetId: dataset
/// tableId: table_to_scan
/// rowsLimit: 1000
/// sampleMethod: RANDOM_START
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Dlp Job Trigger Bigquery Row Limit Percentage
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bigqueryRowLimitPercentage = new gcp.dataloss.PreventionJobTrigger("bigquery_row_limit_percentage", {
/// parent: "projects/my-project-name",
/// description: "Description",
/// displayName: "Displayname",
/// triggers: [{
/// schedule: {
/// recurrencePeriodDuration: "86400s",
/// },
/// }],
/// inspectJob: {
/// inspectTemplateName: "fake",
/// actions: [{
/// saveFindings: {
/// outputConfig: {
/// table: {
/// projectId: "project",
/// datasetId: "dataset",
/// },
/// },
/// },
/// }],
/// storageConfig: {
/// bigQueryOptions: {
/// tableReference: {
/// projectId: "project",
/// datasetId: "dataset",
/// tableId: "table_to_scan",
/// },
/// rowsLimitPercent: 50,
/// sampleMethod: "RANDOM_START",
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bigquery_row_limit_percentage = gcp.dataloss.PreventionJobTrigger("bigquery_row_limit_percentage",
/// parent="projects/my-project-name",
/// description="Description",
/// display_name="Displayname",
/// triggers=[{
/// "schedule": {
/// "recurrence_period_duration": "86400s",
/// },
/// }],
/// inspect_job={
/// "inspect_template_name": "fake",
/// "actions": [{
/// "save_findings": {
/// "output_config": {
/// "table": {
/// "project_id": "project",
/// "dataset_id": "dataset",
/// },
/// },
/// },
/// }],
/// "storage_config": {
/// "big_query_options": {
/// "table_reference": {
/// "project_id": "project",
/// "dataset_id": "dataset",
/// "table_id": "table_to_scan",
/// },
/// "rows_limit_percent": 50,
/// "sample_method": "RANDOM_START",
/// },
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var bigqueryRowLimitPercentage = new Gcp.DataLoss.PreventionJobTrigger("bigquery_row_limit_percentage", new()
/// {
/// Parent = "projects/my-project-name",
/// Description = "Description",
/// DisplayName = "Displayname",
/// Triggers = new[]
/// {
/// new Gcp.DataLoss.Inputs.PreventionJobTriggerTriggerArgs
/// {
/// Schedule = new Gcp.DataLoss.Inputs.PreventionJobTriggerTriggerScheduleArgs
/// {
/// RecurrencePeriodDuration = "86400s",
/// },
/// },
/// },
/// InspectJob = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobArgs
/// {
/// InspectTemplateName = "fake",
/// Actions = new[]
/// {
/// new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobActionArgs
/// {
/// SaveFindings = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobActionSaveFindingsArgs
/// {
/// OutputConfig = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigArgs
/// {
/// Table = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigTableArgs
/// {
/// ProjectId = "project",
/// DatasetId = "dataset",
/// },
/// },
/// },
/// },
/// },
/// StorageConfig = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobStorageConfigArgs
/// {
/// BigQueryOptions = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsArgs
/// {
/// TableReference = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsTableReferenceArgs
/// {
/// ProjectId = "project",
/// DatasetId = "dataset",
/// TableId = "table_to_scan",
/// },
/// RowsLimitPercent = 50,
/// SampleMethod = "RANDOM_START",
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataloss"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataloss.NewPreventionJobTrigger(ctx, "bigquery_row_limit_percentage", &dataloss.PreventionJobTriggerArgs{
/// Parent:      pulumi.String("projects/my-project-name"),
/// Description: pulumi.String("Description"),
/// DisplayName: pulumi.String("Displayname"),
/// Triggers: dataloss.PreventionJobTriggerTriggerArray{
/// &dataloss.PreventionJobTriggerTriggerArgs{
/// Schedule: &dataloss.PreventionJobTriggerTriggerScheduleArgs{
/// RecurrencePeriodDuration: pulumi.String("86400s"),
/// },
/// },
/// },
/// InspectJob: &dataloss.PreventionJobTriggerInspectJobArgs{
/// InspectTemplateName: pulumi.String("fake"),
/// Actions: dataloss.PreventionJobTriggerInspectJobActionArray{
/// &dataloss.PreventionJobTriggerInspectJobActionArgs{
/// SaveFindings: &dataloss.PreventionJobTriggerInspectJobActionSaveFindingsArgs{
/// OutputConfig: &dataloss.PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigArgs{
/// Table: &dataloss.PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigTableArgs{
/// ProjectId: pulumi.String("project"),
/// DatasetId: pulumi.String("dataset"),
/// },
/// },
/// },
/// },
/// },
/// StorageConfig: &dataloss.PreventionJobTriggerInspectJobStorageConfigArgs{
/// BigQueryOptions: &dataloss.PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsArgs{
/// TableReference: &dataloss.PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsTableReferenceArgs{
/// ProjectId: pulumi.String("project"),
/// DatasetId: pulumi.String("dataset"),
/// TableId:   pulumi.String("table_to_scan"),
/// },
/// RowsLimitPercent: pulumi.Int(50),
/// SampleMethod:     pulumi.String("RANDOM_START"),
/// },
/// },
/// },
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
/// import com.pulumi.gcp.dataloss.PreventionJobTrigger;
/// import com.pulumi.gcp.dataloss.PreventionJobTriggerArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerTriggerArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerTriggerScheduleArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobStorageConfigArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsTableReferenceArgs;
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
/// var bigqueryRowLimitPercentage = new PreventionJobTrigger("bigqueryRowLimitPercentage", PreventionJobTriggerArgs.builder()
/// .parent("projects/my-project-name")
/// .description("Description")
/// .displayName("Displayname")
/// .triggers(PreventionJobTriggerTriggerArgs.builder()
/// .schedule(PreventionJobTriggerTriggerScheduleArgs.builder()
/// .recurrencePeriodDuration("86400s")
/// .build())
/// .build())
/// .inspectJob(PreventionJobTriggerInspectJobArgs.builder()
/// .inspectTemplateName("fake")
/// .actions(PreventionJobTriggerInspectJobActionArgs.builder()
/// .saveFindings(PreventionJobTriggerInspectJobActionSaveFindingsArgs.builder()
/// .outputConfig(PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigArgs.builder()
/// .table(PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigTableArgs.builder()
/// .projectId("project")
/// .datasetId("dataset")
/// .build())
/// .build())
/// .build())
/// .build())
/// .storageConfig(PreventionJobTriggerInspectJobStorageConfigArgs.builder()
/// .bigQueryOptions(PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsArgs.builder()
/// .tableReference(PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsTableReferenceArgs.builder()
/// .projectId("project")
/// .datasetId("dataset")
/// .tableId("table_to_scan")
/// .build())
/// .rowsLimitPercent(50)
/// .sampleMethod("RANDOM_START")
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// bigqueryRowLimitPercentage:
/// type: gcp:dataloss:PreventionJobTrigger
/// name: bigquery_row_limit_percentage
/// properties:
/// parent: projects/my-project-name
/// description: Description
/// displayName: Displayname
/// triggers:
/// - schedule:
/// recurrencePeriodDuration: 86400s
/// inspectJob:
/// inspectTemplateName: fake
/// actions:
/// - saveFindings:
/// outputConfig:
/// table:
/// projectId: project
/// datasetId: dataset
/// storageConfig:
/// bigQueryOptions:
/// tableReference:
/// projectId: project
/// datasetId: dataset
/// tableId: table_to_scan
/// rowsLimitPercent: 50
/// sampleMethod: RANDOM_START
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Dlp Job Trigger Job Notification Emails
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const jobNotificationEmails = new gcp.dataloss.PreventionJobTrigger("job_notification_emails", {
/// parent: "projects/my-project-name",
/// description: "Description for the job_trigger created by terraform",
/// displayName: "TerraformDisplayName",
/// triggers: [{
/// schedule: {
/// recurrencePeriodDuration: "86400s",
/// },
/// }],
/// inspectJob: {
/// inspectTemplateName: "sample-inspect-template",
/// actions: [{
/// jobNotificationEmails: {},
/// }],
/// storageConfig: {
/// cloudStorageOptions: {
/// fileSet: {
/// url: "gs://mybucket/directory/",
/// },
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// job_notification_emails = gcp.dataloss.PreventionJobTrigger("job_notification_emails",
/// parent="projects/my-project-name",
/// description="Description for the job_trigger created by terraform",
/// display_name="TerraformDisplayName",
/// triggers=[{
/// "schedule": {
/// "recurrence_period_duration": "86400s",
/// },
/// }],
/// inspect_job={
/// "inspect_template_name": "sample-inspect-template",
/// "actions": [{
/// "job_notification_emails": {},
/// }],
/// "storage_config": {
/// "cloud_storage_options": {
/// "file_set": {
/// "url": "gs://mybucket/directory/",
/// },
/// },
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var jobNotificationEmails = new Gcp.DataLoss.PreventionJobTrigger("job_notification_emails", new()
/// {
/// Parent = "projects/my-project-name",
/// Description = "Description for the job_trigger created by terraform",
/// DisplayName = "TerraformDisplayName",
/// Triggers = new[]
/// {
/// new Gcp.DataLoss.Inputs.PreventionJobTriggerTriggerArgs
/// {
/// Schedule = new Gcp.DataLoss.Inputs.PreventionJobTriggerTriggerScheduleArgs
/// {
/// RecurrencePeriodDuration = "86400s",
/// },
/// },
/// },
/// InspectJob = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobArgs
/// {
/// InspectTemplateName = "sample-inspect-template",
/// Actions = new[]
/// {
/// new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobActionArgs
/// {
/// JobNotificationEmails = null,
/// },
/// },
/// StorageConfig = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobStorageConfigArgs
/// {
/// CloudStorageOptions = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsArgs
/// {
/// FileSet = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetArgs
/// {
/// Url = "gs://mybucket/directory/",
/// },
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataloss"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataloss.NewPreventionJobTrigger(ctx, "job_notification_emails", &dataloss.PreventionJobTriggerArgs{
/// Parent:      pulumi.String("projects/my-project-name"),
/// Description: pulumi.String("Description for the job_trigger created by terraform"),
/// DisplayName: pulumi.String("TerraformDisplayName"),
/// Triggers: dataloss.PreventionJobTriggerTriggerArray{
/// &dataloss.PreventionJobTriggerTriggerArgs{
/// Schedule: &dataloss.PreventionJobTriggerTriggerScheduleArgs{
/// RecurrencePeriodDuration: pulumi.String("86400s"),
/// },
/// },
/// },
/// InspectJob: &dataloss.PreventionJobTriggerInspectJobArgs{
/// InspectTemplateName: pulumi.String("sample-inspect-template"),
/// Actions: dataloss.PreventionJobTriggerInspectJobActionArray{
/// &dataloss.PreventionJobTriggerInspectJobActionArgs{
/// JobNotificationEmails: &dataloss.PreventionJobTriggerInspectJobActionJobNotificationEmailsArgs{},
/// },
/// },
/// StorageConfig: &dataloss.PreventionJobTriggerInspectJobStorageConfigArgs{
/// CloudStorageOptions: &dataloss.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsArgs{
/// FileSet: &dataloss.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetArgs{
/// Url: pulumi.String("gs://mybucket/directory/"),
/// },
/// },
/// },
/// },
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
/// import com.pulumi.gcp.dataloss.PreventionJobTrigger;
/// import com.pulumi.gcp.dataloss.PreventionJobTriggerArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerTriggerArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerTriggerScheduleArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobStorageConfigArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetArgs;
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
/// var jobNotificationEmails = new PreventionJobTrigger("jobNotificationEmails", PreventionJobTriggerArgs.builder()
/// .parent("projects/my-project-name")
/// .description("Description for the job_trigger created by terraform")
/// .displayName("TerraformDisplayName")
/// .triggers(PreventionJobTriggerTriggerArgs.builder()
/// .schedule(PreventionJobTriggerTriggerScheduleArgs.builder()
/// .recurrencePeriodDuration("86400s")
/// .build())
/// .build())
/// .inspectJob(PreventionJobTriggerInspectJobArgs.builder()
/// .inspectTemplateName("sample-inspect-template")
/// .actions(PreventionJobTriggerInspectJobActionArgs.builder()
/// .jobNotificationEmails(PreventionJobTriggerInspectJobActionJobNotificationEmailsArgs.builder()
/// .build())
/// .build())
/// .storageConfig(PreventionJobTriggerInspectJobStorageConfigArgs.builder()
/// .cloudStorageOptions(PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsArgs.builder()
/// .fileSet(PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetArgs.builder()
/// .url("gs://mybucket/directory/")
/// .build())
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// jobNotificationEmails:
/// type: gcp:dataloss:PreventionJobTrigger
/// name: job_notification_emails
/// properties:
/// parent: projects/my-project-name
/// description: Description for the job_trigger created by terraform
/// displayName: TerraformDisplayName
/// triggers:
/// - schedule:
/// recurrencePeriodDuration: 86400s
/// inspectJob:
/// inspectTemplateName: sample-inspect-template
/// actions:
/// - jobNotificationEmails: {}
/// storageConfig:
/// cloudStorageOptions:
/// fileSet:
/// url: gs://mybucket/directory/
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Dlp Job Trigger Deidentify
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.bigquery.Dataset("default", {
/// datasetId: "tf_test",
/// friendlyName: "terraform-test",
/// description: "Description for the dataset created by terraform",
/// location: "US",
/// defaultTableExpirationMs: 3600000,
/// labels: {
/// env: "default",
/// },
/// });
/// const defaultTable = new gcp.bigquery.Table("default", {
/// datasetId: _default.datasetId,
/// tableId: "tf_test",
/// deletionProtection: false,
/// timePartitioning: {
/// type: "DAY",
/// },
/// labels: {
/// env: "default",
/// },
/// schema: `    [
/// {
/// \\"name\\": \\"quantity\\",
/// \\"type\\": \\"NUMERIC\\",
/// \\"mode\\": \\"NULLABLE\\",
/// \\"description\\": \\"The quantity\\"
/// },
/// {
/// \\"name\\": \\"name\\",
/// \\"type\\": \\"STRING\\",
/// \\"mode\\": \\"NULLABLE\\",
/// \\"description\\": \\"Name of the object\\"
/// }
/// ]
/// `,
/// });
/// const deidentify = new gcp.dataloss.PreventionJobTrigger("deidentify", {
/// parent: "projects/my-project-name",
/// description: "Description for the job_trigger created by terraform",
/// displayName: "TerraformDisplayName",
/// triggers: [{
/// schedule: {
/// recurrencePeriodDuration: "86400s",
/// },
/// }],
/// inspectJob: {
/// inspectTemplateName: "sample-inspect-template",
/// actions: [{
/// deidentify: {
/// cloudStorageOutput: "gs://samplebucket/dir/",
/// fileTypesToTransforms: [
/// "CSV",
/// "TSV",
/// ],
/// transformationDetailsStorageConfig: {
/// table: {
/// projectId: "my-project-name",
/// datasetId: _default.datasetId,
/// tableId: defaultTable.tableId,
/// },
/// },
/// transformationConfig: {
/// deidentifyTemplate: "sample-deidentify-template",
/// imageRedactTemplate: "sample-image-redact-template",
/// structuredDeidentifyTemplate: "sample-structured-deidentify-template",
/// },
/// },
/// }],
/// storageConfig: {
/// cloudStorageOptions: {
/// fileSet: {
/// url: "gs://mybucket/directory/",
/// },
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.bigquery.Dataset("default",
/// dataset_id="tf_test",
/// friendly_name="terraform-test",
/// description="Description for the dataset created by terraform",
/// location="US",
/// default_table_expiration_ms=3600000,
/// labels={
/// "env": "default",
/// })
/// default_table = gcp.bigquery.Table("default",
/// dataset_id=default.dataset_id,
/// table_id="tf_test",
/// deletion_protection=False,
/// time_partitioning={
/// "type": "DAY",
/// },
/// labels={
/// "env": "default",
/// },
/// schema="""    [
/// {
/// \"name\": \"quantity\",
/// \"type\": \"NUMERIC\",
/// \"mode\": \"NULLABLE\",
/// \"description\": \"The quantity\"
/// },
/// {
/// \"name\": \"name\",
/// \"type\": \"STRING\",
/// \"mode\": \"NULLABLE\",
/// \"description\": \"Name of the object\"
/// }
/// ]
/// """)
/// deidentify = gcp.dataloss.PreventionJobTrigger("deidentify",
/// parent="projects/my-project-name",
/// description="Description for the job_trigger created by terraform",
/// display_name="TerraformDisplayName",
/// triggers=[{
/// "schedule": {
/// "recurrence_period_duration": "86400s",
/// },
/// }],
/// inspect_job={
/// "inspect_template_name": "sample-inspect-template",
/// "actions": [{
/// "deidentify": {
/// "cloud_storage_output": "gs://samplebucket/dir/",
/// "file_types_to_transforms": [
/// "CSV",
/// "TSV",
/// ],
/// "transformation_details_storage_config": {
/// "table": {
/// "project_id": "my-project-name",
/// "dataset_id": default.dataset_id,
/// "table_id": default_table.table_id,
/// },
/// },
/// "transformation_config": {
/// "deidentify_template": "sample-deidentify-template",
/// "image_redact_template": "sample-image-redact-template",
/// "structured_deidentify_template": "sample-structured-deidentify-template",
/// },
/// },
/// }],
/// "storage_config": {
/// "cloud_storage_options": {
/// "file_set": {
/// "url": "gs://mybucket/directory/",
/// },
/// },
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Gcp.BigQuery.Dataset("default", new()
/// {
/// DatasetId = "tf_test",
/// FriendlyName = "terraform-test",
/// Description = "Description for the dataset created by terraform",
/// Location = "US",
/// DefaultTableExpirationMs = 3600000,
/// Labels =
/// {
/// { "env", "default" },
/// },
/// });
///
/// var defaultTable = new Gcp.BigQuery.Table("default", new()
/// {
/// DatasetId = @default.DatasetId,
/// TableId = "tf_test",
/// DeletionProtection = false,
/// TimePartitioning = new Gcp.BigQuery.Inputs.TableTimePartitioningArgs
/// {
/// Type = "DAY",
/// },
/// Labels =
/// {
/// { "env", "default" },
/// },
/// Schema = @"    [
/// {
/// \""name\"": \""quantity\"",
/// \""type\"": \""NUMERIC\"",
/// \""mode\"": \""NULLABLE\"",
/// \""description\"": \""The quantity\""
/// },
/// {
/// \""name\"": \""name\"",
/// \""type\"": \""STRING\"",
/// \""mode\"": \""NULLABLE\"",
/// \""description\"": \""Name of the object\""
/// }
/// ]
/// ",
/// });
///
/// var deidentify = new Gcp.DataLoss.PreventionJobTrigger("deidentify", new()
/// {
/// Parent = "projects/my-project-name",
/// Description = "Description for the job_trigger created by terraform",
/// DisplayName = "TerraformDisplayName",
/// Triggers = new[]
/// {
/// new Gcp.DataLoss.Inputs.PreventionJobTriggerTriggerArgs
/// {
/// Schedule = new Gcp.DataLoss.Inputs.PreventionJobTriggerTriggerScheduleArgs
/// {
/// RecurrencePeriodDuration = "86400s",
/// },
/// },
/// },
/// InspectJob = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobArgs
/// {
/// InspectTemplateName = "sample-inspect-template",
/// Actions = new[]
/// {
/// new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobActionArgs
/// {
/// Deidentify = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobActionDeidentifyArgs
/// {
/// CloudStorageOutput = "gs://samplebucket/dir/",
/// FileTypesToTransforms = new[]
/// {
/// "CSV",
/// "TSV",
/// },
/// TransformationDetailsStorageConfig = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobActionDeidentifyTransformationDetailsStorageConfigArgs
/// {
/// Table = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobActionDeidentifyTransformationDetailsStorageConfigTableArgs
/// {
/// ProjectId = "my-project-name",
/// DatasetId = @default.DatasetId,
/// TableId = defaultTable.TableId,
/// },
/// },
/// TransformationConfig = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobActionDeidentifyTransformationConfigArgs
/// {
/// DeidentifyTemplate = "sample-deidentify-template",
/// ImageRedactTemplate = "sample-image-redact-template",
/// StructuredDeidentifyTemplate = "sample-structured-deidentify-template",
/// },
/// },
/// },
/// },
/// StorageConfig = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobStorageConfigArgs
/// {
/// CloudStorageOptions = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsArgs
/// {
/// FileSet = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetArgs
/// {
/// Url = "gs://mybucket/directory/",
/// },
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataloss"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := bigquery.NewDataset(ctx, "default", &bigquery.DatasetArgs{
/// DatasetId:                pulumi.String("tf_test"),
/// FriendlyName:             pulumi.String("terraform-test"),
/// Description:              pulumi.String("Description for the dataset created by terraform"),
/// Location:                 pulumi.String("US"),
/// DefaultTableExpirationMs: pulumi.Int(3600000),
/// Labels: pulumi.StringMap{
/// "env": pulumi.String("default"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// defaultTable, err := bigquery.NewTable(ctx, "default", &bigquery.TableArgs{
/// DatasetId:          _default.DatasetId,
/// TableId:            pulumi.String("tf_test"),
/// DeletionProtection: pulumi.Bool(false),
/// TimePartitioning: &bigquery.TableTimePartitioningArgs{
/// Type: pulumi.String("DAY"),
/// },
/// Labels: pulumi.StringMap{
/// "env": pulumi.String("default"),
/// },
/// Schema: pulumi.String(`    [
/// {
/// \"name\": \"quantity\",
/// \"type\": \"NUMERIC\",
/// \"mode\": \"NULLABLE\",
/// \"description\": \"The quantity\"
/// },
/// {
/// \"name\": \"name\",
/// \"type\": \"STRING\",
/// \"mode\": \"NULLABLE\",
/// \"description\": \"Name of the object\"
/// }
/// ]
/// `),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = dataloss.NewPreventionJobTrigger(ctx, "deidentify", &dataloss.PreventionJobTriggerArgs{
/// Parent:      pulumi.String("projects/my-project-name"),
/// Description: pulumi.String("Description for the job_trigger created by terraform"),
/// DisplayName: pulumi.String("TerraformDisplayName"),
/// Triggers: dataloss.PreventionJobTriggerTriggerArray{
/// &dataloss.PreventionJobTriggerTriggerArgs{
/// Schedule: &dataloss.PreventionJobTriggerTriggerScheduleArgs{
/// RecurrencePeriodDuration: pulumi.String("86400s"),
/// },
/// },
/// },
/// InspectJob: &dataloss.PreventionJobTriggerInspectJobArgs{
/// InspectTemplateName: pulumi.String("sample-inspect-template"),
/// Actions: dataloss.PreventionJobTriggerInspectJobActionArray{
/// &dataloss.PreventionJobTriggerInspectJobActionArgs{
/// Deidentify: &dataloss.PreventionJobTriggerInspectJobActionDeidentifyArgs{
/// CloudStorageOutput: pulumi.String("gs://samplebucket/dir/"),
/// FileTypesToTransforms: pulumi.StringArray{
/// pulumi.String("CSV"),
/// pulumi.String("TSV"),
/// },
/// TransformationDetailsStorageConfig: &dataloss.PreventionJobTriggerInspectJobActionDeidentifyTransformationDetailsStorageConfigArgs{
/// Table: &dataloss.PreventionJobTriggerInspectJobActionDeidentifyTransformationDetailsStorageConfigTableArgs{
/// ProjectId: pulumi.String("my-project-name"),
/// DatasetId: _default.DatasetId,
/// TableId:   defaultTable.TableId,
/// },
/// },
/// TransformationConfig: &dataloss.PreventionJobTriggerInspectJobActionDeidentifyTransformationConfigArgs{
/// DeidentifyTemplate:           pulumi.String("sample-deidentify-template"),
/// ImageRedactTemplate:          pulumi.String("sample-image-redact-template"),
/// StructuredDeidentifyTemplate: pulumi.String("sample-structured-deidentify-template"),
/// },
/// },
/// },
/// },
/// StorageConfig: &dataloss.PreventionJobTriggerInspectJobStorageConfigArgs{
/// CloudStorageOptions: &dataloss.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsArgs{
/// FileSet: &dataloss.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetArgs{
/// Url: pulumi.String("gs://mybucket/directory/"),
/// },
/// },
/// },
/// },
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
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.Table;
/// import com.pulumi.gcp.bigquery.TableArgs;
/// import com.pulumi.gcp.bigquery.inputs.TableTimePartitioningArgs;
/// import com.pulumi.gcp.dataloss.PreventionJobTrigger;
/// import com.pulumi.gcp.dataloss.PreventionJobTriggerArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerTriggerArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerTriggerScheduleArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobStorageConfigArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetArgs;
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
/// var default_ = new Dataset("default", DatasetArgs.builder()
/// .datasetId("tf_test")
/// .friendlyName("terraform-test")
/// .description("Description for the dataset created by terraform")
/// .location("US")
/// .defaultTableExpirationMs(3600000)
/// .labels(Map.of("env", "default"))
/// .build());
///
/// var defaultTable = new Table("defaultTable", TableArgs.builder()
/// .datasetId(default_.datasetId())
/// .tableId("tf_test")
/// .deletionProtection(false)
/// .timePartitioning(TableTimePartitioningArgs.builder()
/// .type("DAY")
/// .build())
/// .labels(Map.of("env", "default"))
/// .schema("""
/// [
/// {
/// \"name\": \"quantity\",
/// \"type\": \"NUMERIC\",
/// \"mode\": \"NULLABLE\",
/// \"description\": \"The quantity\"
/// },
/// {
/// \"name\": \"name\",
/// \"type\": \"STRING\",
/// \"mode\": \"NULLABLE\",
/// \"description\": \"Name of the object\"
/// }
/// ]
/// """)
/// .build());
///
/// var deidentify = new PreventionJobTrigger("deidentify", PreventionJobTriggerArgs.builder()
/// .parent("projects/my-project-name")
/// .description("Description for the job_trigger created by terraform")
/// .displayName("TerraformDisplayName")
/// .triggers(PreventionJobTriggerTriggerArgs.builder()
/// .schedule(PreventionJobTriggerTriggerScheduleArgs.builder()
/// .recurrencePeriodDuration("86400s")
/// .build())
/// .build())
/// .inspectJob(PreventionJobTriggerInspectJobArgs.builder()
/// .inspectTemplateName("sample-inspect-template")
/// .actions(PreventionJobTriggerInspectJobActionArgs.builder()
/// .deidentify(PreventionJobTriggerInspectJobActionDeidentifyArgs.builder()
/// .cloudStorageOutput("gs://samplebucket/dir/")
/// .fileTypesToTransforms(
/// "CSV",
/// "TSV")
/// .transformationDetailsStorageConfig(PreventionJobTriggerInspectJobActionDeidentifyTransformationDetailsStorageConfigArgs.builder()
/// .table(PreventionJobTriggerInspectJobActionDeidentifyTransformationDetailsStorageConfigTableArgs.builder()
/// .projectId("my-project-name")
/// .datasetId(default_.datasetId())
/// .tableId(defaultTable.tableId())
/// .build())
/// .build())
/// .transformationConfig(PreventionJobTriggerInspectJobActionDeidentifyTransformationConfigArgs.builder()
/// .deidentifyTemplate("sample-deidentify-template")
/// .imageRedactTemplate("sample-image-redact-template")
/// .structuredDeidentifyTemplate("sample-structured-deidentify-template")
/// .build())
/// .build())
/// .build())
/// .storageConfig(PreventionJobTriggerInspectJobStorageConfigArgs.builder()
/// .cloudStorageOptions(PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsArgs.builder()
/// .fileSet(PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetArgs.builder()
/// .url("gs://mybucket/directory/")
/// .build())
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// deidentify:
/// type: gcp:dataloss:PreventionJobTrigger
/// properties:
/// parent: projects/my-project-name
/// description: Description for the job_trigger created by terraform
/// displayName: TerraformDisplayName
/// triggers:
/// - schedule:
/// recurrencePeriodDuration: 86400s
/// inspectJob:
/// inspectTemplateName: sample-inspect-template
/// actions:
/// - deidentify:
/// cloudStorageOutput: gs://samplebucket/dir/
/// fileTypesToTransforms:
/// - CSV
/// - TSV
/// transformationDetailsStorageConfig:
/// table:
/// projectId: my-project-name
/// datasetId: ${default.datasetId}
/// tableId: ${defaultTable.tableId}
/// transformationConfig:
/// deidentifyTemplate: sample-deidentify-template
/// imageRedactTemplate: sample-image-redact-template
/// structuredDeidentifyTemplate: sample-structured-deidentify-template
/// storageConfig:
/// cloudStorageOptions:
/// fileSet:
/// url: gs://mybucket/directory/
/// default:
/// type: gcp:bigquery:Dataset
/// properties:
/// datasetId: tf_test
/// friendlyName: terraform-test
/// description: Description for the dataset created by terraform
/// location: US
/// defaultTableExpirationMs: 3.6e+06
/// labels:
/// env: default
/// defaultTable:
/// type: gcp:bigquery:Table
/// name: default
/// properties:
/// datasetId: ${default.datasetId}
/// tableId: tf_test
/// deletionProtection: false
/// timePartitioning:
/// type: DAY
/// labels:
/// env: default
/// schema: |2
/// [
/// {
/// \"name\": \"quantity\",
/// \"type\": \"NUMERIC\",
/// \"mode\": \"NULLABLE\",
/// \"description\": \"The quantity\"
/// },
/// {
/// \"name\": \"name\",
/// \"type\": \"STRING\",
/// \"mode\": \"NULLABLE\",
/// \"description\": \"Name of the object\"
/// }
/// ]
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Dlp Job Trigger Hybrid
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const hybridTrigger = new gcp.dataloss.PreventionJobTrigger("hybrid_trigger", {
/// parent: "projects/my-project-name",
/// triggers: [{
/// manual: {},
/// }],
/// inspectJob: {
/// inspectTemplateName: "fake",
/// actions: [{
/// saveFindings: {
/// outputConfig: {
/// table: {
/// projectId: "project",
/// datasetId: "dataset",
/// },
/// },
/// },
/// }],
/// storageConfig: {
/// hybridOptions: {
/// description: "Hybrid job trigger for data from the comments field of a table that contains customer appointment bookings",
/// requiredFindingLabelKeys: ["appointment-bookings-comments"],
/// labels: {
/// env: "prod",
/// },
/// tableOptions: {
/// identifyingFields: [{
/// name: "booking_id",
/// }],
/// },
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// hybrid_trigger = gcp.dataloss.PreventionJobTrigger("hybrid_trigger",
/// parent="projects/my-project-name",
/// triggers=[{
/// "manual": {},
/// }],
/// inspect_job={
/// "inspect_template_name": "fake",
/// "actions": [{
/// "save_findings": {
/// "output_config": {
/// "table": {
/// "project_id": "project",
/// "dataset_id": "dataset",
/// },
/// },
/// },
/// }],
/// "storage_config": {
/// "hybrid_options": {
/// "description": "Hybrid job trigger for data from the comments field of a table that contains customer appointment bookings",
/// "required_finding_label_keys": ["appointment-bookings-comments"],
/// "labels": {
/// "env": "prod",
/// },
/// "table_options": {
/// "identifying_fields": [{
/// "name": "booking_id",
/// }],
/// },
/// },
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var hybridTrigger = new Gcp.DataLoss.PreventionJobTrigger("hybrid_trigger", new()
/// {
/// Parent = "projects/my-project-name",
/// Triggers = new[]
/// {
/// new Gcp.DataLoss.Inputs.PreventionJobTriggerTriggerArgs
/// {
/// Manual = null,
/// },
/// },
/// InspectJob = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobArgs
/// {
/// InspectTemplateName = "fake",
/// Actions = new[]
/// {
/// new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobActionArgs
/// {
/// SaveFindings = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobActionSaveFindingsArgs
/// {
/// OutputConfig = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigArgs
/// {
/// Table = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigTableArgs
/// {
/// ProjectId = "project",
/// DatasetId = "dataset",
/// },
/// },
/// },
/// },
/// },
/// StorageConfig = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobStorageConfigArgs
/// {
/// HybridOptions = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobStorageConfigHybridOptionsArgs
/// {
/// Description = "Hybrid job trigger for data from the comments field of a table that contains customer appointment bookings",
/// RequiredFindingLabelKeys = new[]
/// {
/// "appointment-bookings-comments",
/// },
/// Labels =
/// {
/// { "env", "prod" },
/// },
/// TableOptions = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobStorageConfigHybridOptionsTableOptionsArgs
/// {
/// IdentifyingFields = new[]
/// {
/// new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobStorageConfigHybridOptionsTableOptionsIdentifyingFieldArgs
/// {
/// Name = "booking_id",
/// },
/// },
/// },
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataloss"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataloss.NewPreventionJobTrigger(ctx, "hybrid_trigger", &dataloss.PreventionJobTriggerArgs{
/// Parent: pulumi.String("projects/my-project-name"),
/// Triggers: dataloss.PreventionJobTriggerTriggerArray{
/// &dataloss.PreventionJobTriggerTriggerArgs{
/// Manual: &dataloss.PreventionJobTriggerTriggerManualArgs{},
/// },
/// },
/// InspectJob: &dataloss.PreventionJobTriggerInspectJobArgs{
/// InspectTemplateName: pulumi.String("fake"),
/// Actions: dataloss.PreventionJobTriggerInspectJobActionArray{
/// &dataloss.PreventionJobTriggerInspectJobActionArgs{
/// SaveFindings: &dataloss.PreventionJobTriggerInspectJobActionSaveFindingsArgs{
/// OutputConfig: &dataloss.PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigArgs{
/// Table: &dataloss.PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigTableArgs{
/// ProjectId: pulumi.String("project"),
/// DatasetId: pulumi.String("dataset"),
/// },
/// },
/// },
/// },
/// },
/// StorageConfig: &dataloss.PreventionJobTriggerInspectJobStorageConfigArgs{
/// HybridOptions: &dataloss.PreventionJobTriggerInspectJobStorageConfigHybridOptionsArgs{
/// Description: pulumi.String("Hybrid job trigger for data from the comments field of a table that contains customer appointment bookings"),
/// RequiredFindingLabelKeys: pulumi.StringArray{
/// pulumi.String("appointment-bookings-comments"),
/// },
/// Labels: pulumi.StringMap{
/// "env": pulumi.String("prod"),
/// },
/// TableOptions: &dataloss.PreventionJobTriggerInspectJobStorageConfigHybridOptionsTableOptionsArgs{
/// IdentifyingFields: dataloss.PreventionJobTriggerInspectJobStorageConfigHybridOptionsTableOptionsIdentifyingFieldArray{
/// &dataloss.PreventionJobTriggerInspectJobStorageConfigHybridOptionsTableOptionsIdentifyingFieldArgs{
/// Name: pulumi.String("booking_id"),
/// },
/// },
/// },
/// },
/// },
/// },
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
/// import com.pulumi.gcp.dataloss.PreventionJobTrigger;
/// import com.pulumi.gcp.dataloss.PreventionJobTriggerArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerTriggerArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerTriggerManualArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobStorageConfigArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobStorageConfigHybridOptionsArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobStorageConfigHybridOptionsTableOptionsArgs;
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
/// var hybridTrigger = new PreventionJobTrigger("hybridTrigger", PreventionJobTriggerArgs.builder()
/// .parent("projects/my-project-name")
/// .triggers(PreventionJobTriggerTriggerArgs.builder()
/// .manual(PreventionJobTriggerTriggerManualArgs.builder()
/// .build())
/// .build())
/// .inspectJob(PreventionJobTriggerInspectJobArgs.builder()
/// .inspectTemplateName("fake")
/// .actions(PreventionJobTriggerInspectJobActionArgs.builder()
/// .saveFindings(PreventionJobTriggerInspectJobActionSaveFindingsArgs.builder()
/// .outputConfig(PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigArgs.builder()
/// .table(PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigTableArgs.builder()
/// .projectId("project")
/// .datasetId("dataset")
/// .build())
/// .build())
/// .build())
/// .build())
/// .storageConfig(PreventionJobTriggerInspectJobStorageConfigArgs.builder()
/// .hybridOptions(PreventionJobTriggerInspectJobStorageConfigHybridOptionsArgs.builder()
/// .description("Hybrid job trigger for data from the comments field of a table that contains customer appointment bookings")
/// .requiredFindingLabelKeys("appointment-bookings-comments")
/// .labels(Map.of("env", "prod"))
/// .tableOptions(PreventionJobTriggerInspectJobStorageConfigHybridOptionsTableOptionsArgs.builder()
/// .identifyingFields(PreventionJobTriggerInspectJobStorageConfigHybridOptionsTableOptionsIdentifyingFieldArgs.builder()
/// .name("booking_id")
/// .build())
/// .build())
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// hybridTrigger:
/// type: gcp:dataloss:PreventionJobTrigger
/// name: hybrid_trigger
/// properties:
/// parent: projects/my-project-name
/// triggers:
/// - manual: {}
/// inspectJob:
/// inspectTemplateName: fake
/// actions:
/// - saveFindings:
/// outputConfig:
/// table:
/// projectId: project
/// datasetId: dataset
/// storageConfig:
/// hybridOptions:
/// description: Hybrid job trigger for data from the comments field of a table that contains customer appointment bookings
/// requiredFindingLabelKeys:
/// - appointment-bookings-comments
/// labels:
/// env: prod
/// tableOptions:
/// identifyingFields:
/// - name: booking_id
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Dlp Job Trigger Inspect
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const inspect = new gcp.dataloss.PreventionJobTrigger("inspect", {
/// parent: "projects/my-project-name",
/// description: "Description",
/// displayName: "Displayname",
/// triggers: [{
/// schedule: {
/// recurrencePeriodDuration: "86400s",
/// },
/// }],
/// inspectJob: {
/// inspectTemplateName: "fake",
/// actions: [{
/// saveFindings: {
/// outputConfig: {
/// table: {
/// projectId: "project",
/// datasetId: "dataset",
/// },
/// },
/// },
/// }],
/// storageConfig: {
/// cloudStorageOptions: {
/// fileSet: {
/// url: "gs://mybucket/directory/",
/// },
/// },
/// },
/// inspectConfig: {
/// customInfoTypes: [{
/// infoType: {
/// name: "MY_CUSTOM_TYPE",
/// },
/// likelihood: "UNLIKELY",
/// regex: {
/// pattern: "test*",
/// },
/// }],
/// infoTypes: [{
/// name: "EMAIL_ADDRESS",
/// }],
/// minLikelihood: "UNLIKELY",
/// ruleSets: [
/// {
/// infoTypes: [{
/// name: "EMAIL_ADDRESS",
/// }],
/// rules: [{
/// exclusionRule: {
/// regex: {
/// pattern: ".+@example.com",
/// },
/// matchingType: "MATCHING_TYPE_FULL_MATCH",
/// },
/// }],
/// },
/// {
/// infoTypes: [{
/// name: "MY_CUSTOM_TYPE",
/// }],
/// rules: [{
/// hotwordRule: {
/// hotwordRegex: {
/// pattern: "example*",
/// },
/// proximity: {
/// windowBefore: 50,
/// },
/// likelihoodAdjustment: {
/// fixedLikelihood: "VERY_LIKELY",
/// },
/// },
/// }],
/// },
/// ],
/// limits: {
/// maxFindingsPerItem: 10,
/// maxFindingsPerRequest: 50,
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// inspect = gcp.dataloss.PreventionJobTrigger("inspect",
/// parent="projects/my-project-name",
/// description="Description",
/// display_name="Displayname",
/// triggers=[{
/// "schedule": {
/// "recurrence_period_duration": "86400s",
/// },
/// }],
/// inspect_job={
/// "inspect_template_name": "fake",
/// "actions": [{
/// "save_findings": {
/// "output_config": {
/// "table": {
/// "project_id": "project",
/// "dataset_id": "dataset",
/// },
/// },
/// },
/// }],
/// "storage_config": {
/// "cloud_storage_options": {
/// "file_set": {
/// "url": "gs://mybucket/directory/",
/// },
/// },
/// },
/// "inspect_config": {
/// "custom_info_types": [{
/// "info_type": {
/// "name": "MY_CUSTOM_TYPE",
/// },
/// "likelihood": "UNLIKELY",
/// "regex": {
/// "pattern": "test*",
/// },
/// }],
/// "info_types": [{
/// "name": "EMAIL_ADDRESS",
/// }],
/// "min_likelihood": "UNLIKELY",
/// "rule_sets": [
/// {
/// "info_types": [{
/// "name": "EMAIL_ADDRESS",
/// }],
/// "rules": [{
/// "exclusion_rule": {
/// "regex": {
/// "pattern": ".+@example.com",
/// },
/// "matching_type": "MATCHING_TYPE_FULL_MATCH",
/// },
/// }],
/// },
/// {
/// "info_types": [{
/// "name": "MY_CUSTOM_TYPE",
/// }],
/// "rules": [{
/// "hotword_rule": {
/// "hotword_regex": {
/// "pattern": "example*",
/// },
/// "proximity": {
/// "window_before": 50,
/// },
/// "likelihood_adjustment": {
/// "fixed_likelihood": "VERY_LIKELY",
/// },
/// },
/// }],
/// },
/// ],
/// "limits": {
/// "max_findings_per_item": 10,
/// "max_findings_per_request": 50,
/// },
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var inspect = new Gcp.DataLoss.PreventionJobTrigger("inspect", new()
/// {
/// Parent = "projects/my-project-name",
/// Description = "Description",
/// DisplayName = "Displayname",
/// Triggers = new[]
/// {
/// new Gcp.DataLoss.Inputs.PreventionJobTriggerTriggerArgs
/// {
/// Schedule = new Gcp.DataLoss.Inputs.PreventionJobTriggerTriggerScheduleArgs
/// {
/// RecurrencePeriodDuration = "86400s",
/// },
/// },
/// },
/// InspectJob = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobArgs
/// {
/// InspectTemplateName = "fake",
/// Actions = new[]
/// {
/// new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobActionArgs
/// {
/// SaveFindings = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobActionSaveFindingsArgs
/// {
/// OutputConfig = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigArgs
/// {
/// Table = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigTableArgs
/// {
/// ProjectId = "project",
/// DatasetId = "dataset",
/// },
/// },
/// },
/// },
/// },
/// StorageConfig = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobStorageConfigArgs
/// {
/// CloudStorageOptions = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsArgs
/// {
/// FileSet = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetArgs
/// {
/// Url = "gs://mybucket/directory/",
/// },
/// },
/// },
/// InspectConfig = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobInspectConfigArgs
/// {
/// CustomInfoTypes = new[]
/// {
/// new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeArgs
/// {
/// InfoType = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeInfoTypeArgs
/// {
/// Name = "MY_CUSTOM_TYPE",
/// },
/// Likelihood = "UNLIKELY",
/// Regex = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeRegexArgs
/// {
/// Pattern = "test*",
/// },
/// },
/// },
/// InfoTypes = new[]
/// {
/// new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobInspectConfigInfoTypeArgs
/// {
/// Name = "EMAIL_ADDRESS",
/// },
/// },
/// MinLikelihood = "UNLIKELY",
/// RuleSets = new[]
/// {
/// new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobInspectConfigRuleSetArgs
/// {
/// InfoTypes = new[]
/// {
/// new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobInspectConfigRuleSetInfoTypeArgs
/// {
/// Name = "EMAIL_ADDRESS",
/// },
/// },
/// Rules = new[]
/// {
/// new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobInspectConfigRuleSetRuleArgs
/// {
/// ExclusionRule = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleArgs
/// {
/// Regex = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleRegexArgs
/// {
/// Pattern = ".+@example.com",
/// },
/// MatchingType = "MATCHING_TYPE_FULL_MATCH",
/// },
/// },
/// },
/// },
/// new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobInspectConfigRuleSetArgs
/// {
/// InfoTypes = new[]
/// {
/// new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobInspectConfigRuleSetInfoTypeArgs
/// {
/// Name = "MY_CUSTOM_TYPE",
/// },
/// },
/// Rules = new[]
/// {
/// new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobInspectConfigRuleSetRuleArgs
/// {
/// HotwordRule = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRuleArgs
/// {
/// HotwordRegex = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRuleHotwordRegexArgs
/// {
/// Pattern = "example*",
/// },
/// Proximity = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRuleProximityArgs
/// {
/// WindowBefore = 50,
/// },
/// LikelihoodAdjustment = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRuleLikelihoodAdjustmentArgs
/// {
/// FixedLikelihood = "VERY_LIKELY",
/// },
/// },
/// },
/// },
/// },
/// },
/// Limits = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobInspectConfigLimitsArgs
/// {
/// MaxFindingsPerItem = 10,
/// MaxFindingsPerRequest = 50,
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataloss"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataloss.NewPreventionJobTrigger(ctx, "inspect", &dataloss.PreventionJobTriggerArgs{
/// Parent:      pulumi.String("projects/my-project-name"),
/// Description: pulumi.String("Description"),
/// DisplayName: pulumi.String("Displayname"),
/// Triggers: dataloss.PreventionJobTriggerTriggerArray{
/// &dataloss.PreventionJobTriggerTriggerArgs{
/// Schedule: &dataloss.PreventionJobTriggerTriggerScheduleArgs{
/// RecurrencePeriodDuration: pulumi.String("86400s"),
/// },
/// },
/// },
/// InspectJob: &dataloss.PreventionJobTriggerInspectJobArgs{
/// InspectTemplateName: pulumi.String("fake"),
/// Actions: dataloss.PreventionJobTriggerInspectJobActionArray{
/// &dataloss.PreventionJobTriggerInspectJobActionArgs{
/// SaveFindings: &dataloss.PreventionJobTriggerInspectJobActionSaveFindingsArgs{
/// OutputConfig: &dataloss.PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigArgs{
/// Table: &dataloss.PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigTableArgs{
/// ProjectId: pulumi.String("project"),
/// DatasetId: pulumi.String("dataset"),
/// },
/// },
/// },
/// },
/// },
/// StorageConfig: &dataloss.PreventionJobTriggerInspectJobStorageConfigArgs{
/// CloudStorageOptions: &dataloss.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsArgs{
/// FileSet: &dataloss.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetArgs{
/// Url: pulumi.String("gs://mybucket/directory/"),
/// },
/// },
/// },
/// InspectConfig: &dataloss.PreventionJobTriggerInspectJobInspectConfigArgs{
/// CustomInfoTypes: dataloss.PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeArray{
/// &dataloss.PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeArgs{
/// InfoType: &dataloss.PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeInfoTypeArgs{
/// Name: pulumi.String("MY_CUSTOM_TYPE"),
/// },
/// Likelihood: pulumi.String("UNLIKELY"),
/// Regex: &dataloss.PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeRegexArgs{
/// Pattern: pulumi.String("test*"),
/// },
/// },
/// },
/// InfoTypes: dataloss.PreventionJobTriggerInspectJobInspectConfigInfoTypeArray{
/// &dataloss.PreventionJobTriggerInspectJobInspectConfigInfoTypeArgs{
/// Name: pulumi.String("EMAIL_ADDRESS"),
/// },
/// },
/// MinLikelihood: pulumi.String("UNLIKELY"),
/// RuleSets: dataloss.PreventionJobTriggerInspectJobInspectConfigRuleSetArray{
/// &dataloss.PreventionJobTriggerInspectJobInspectConfigRuleSetArgs{
/// InfoTypes: dataloss.PreventionJobTriggerInspectJobInspectConfigRuleSetInfoTypeArray{
/// &dataloss.PreventionJobTriggerInspectJobInspectConfigRuleSetInfoTypeArgs{
/// Name: pulumi.String("EMAIL_ADDRESS"),
/// },
/// },
/// Rules: dataloss.PreventionJobTriggerInspectJobInspectConfigRuleSetRuleArray{
/// &dataloss.PreventionJobTriggerInspectJobInspectConfigRuleSetRuleArgs{
/// ExclusionRule: &dataloss.PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleArgs{
/// Regex: &dataloss.PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleRegexArgs{
/// Pattern: pulumi.String(".+@example.com"),
/// },
/// MatchingType: pulumi.String("MATCHING_TYPE_FULL_MATCH"),
/// },
/// },
/// },
/// },
/// &dataloss.PreventionJobTriggerInspectJobInspectConfigRuleSetArgs{
/// InfoTypes: dataloss.PreventionJobTriggerInspectJobInspectConfigRuleSetInfoTypeArray{
/// &dataloss.PreventionJobTriggerInspectJobInspectConfigRuleSetInfoTypeArgs{
/// Name: pulumi.String("MY_CUSTOM_TYPE"),
/// },
/// },
/// Rules: dataloss.PreventionJobTriggerInspectJobInspectConfigRuleSetRuleArray{
/// &dataloss.PreventionJobTriggerInspectJobInspectConfigRuleSetRuleArgs{
/// HotwordRule: &dataloss.PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRuleArgs{
/// HotwordRegex: &dataloss.PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRuleHotwordRegexArgs{
/// Pattern: pulumi.String("example*"),
/// },
/// Proximity: &dataloss.PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRuleProximityArgs{
/// WindowBefore: pulumi.Int(50),
/// },
/// LikelihoodAdjustment: &dataloss.PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRuleLikelihoodAdjustmentArgs{
/// FixedLikelihood: pulumi.String("VERY_LIKELY"),
/// },
/// },
/// },
/// },
/// },
/// },
/// Limits: &dataloss.PreventionJobTriggerInspectJobInspectConfigLimitsArgs{
/// MaxFindingsPerItem:    pulumi.Int(10),
/// MaxFindingsPerRequest: pulumi.Int(50),
/// },
/// },
/// },
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
/// import com.pulumi.gcp.dataloss.PreventionJobTrigger;
/// import com.pulumi.gcp.dataloss.PreventionJobTriggerArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerTriggerArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerTriggerScheduleArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobStorageConfigArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobInspectConfigArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobInspectConfigLimitsArgs;
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
/// var inspect = new PreventionJobTrigger("inspect", PreventionJobTriggerArgs.builder()
/// .parent("projects/my-project-name")
/// .description("Description")
/// .displayName("Displayname")
/// .triggers(PreventionJobTriggerTriggerArgs.builder()
/// .schedule(PreventionJobTriggerTriggerScheduleArgs.builder()
/// .recurrencePeriodDuration("86400s")
/// .build())
/// .build())
/// .inspectJob(PreventionJobTriggerInspectJobArgs.builder()
/// .inspectTemplateName("fake")
/// .actions(PreventionJobTriggerInspectJobActionArgs.builder()
/// .saveFindings(PreventionJobTriggerInspectJobActionSaveFindingsArgs.builder()
/// .outputConfig(PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigArgs.builder()
/// .table(PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigTableArgs.builder()
/// .projectId("project")
/// .datasetId("dataset")
/// .build())
/// .build())
/// .build())
/// .build())
/// .storageConfig(PreventionJobTriggerInspectJobStorageConfigArgs.builder()
/// .cloudStorageOptions(PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsArgs.builder()
/// .fileSet(PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetArgs.builder()
/// .url("gs://mybucket/directory/")
/// .build())
/// .build())
/// .build())
/// .inspectConfig(PreventionJobTriggerInspectJobInspectConfigArgs.builder()
/// .customInfoTypes(PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeArgs.builder()
/// .infoType(PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeInfoTypeArgs.builder()
/// .name("MY_CUSTOM_TYPE")
/// .build())
/// .likelihood("UNLIKELY")
/// .regex(PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeRegexArgs.builder()
/// .pattern("test*")
/// .build())
/// .build())
/// .infoTypes(PreventionJobTriggerInspectJobInspectConfigInfoTypeArgs.builder()
/// .name("EMAIL_ADDRESS")
/// .build())
/// .minLikelihood("UNLIKELY")
/// .ruleSets(
/// PreventionJobTriggerInspectJobInspectConfigRuleSetArgs.builder()
/// .infoTypes(PreventionJobTriggerInspectJobInspectConfigRuleSetInfoTypeArgs.builder()
/// .name("EMAIL_ADDRESS")
/// .build())
/// .rules(PreventionJobTriggerInspectJobInspectConfigRuleSetRuleArgs.builder()
/// .exclusionRule(PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleArgs.builder()
/// .regex(PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleRegexArgs.builder()
/// .pattern(".+@example.com")
/// .build())
/// .matchingType("MATCHING_TYPE_FULL_MATCH")
/// .build())
/// .build())
/// .build(),
/// PreventionJobTriggerInspectJobInspectConfigRuleSetArgs.builder()
/// .infoTypes(PreventionJobTriggerInspectJobInspectConfigRuleSetInfoTypeArgs.builder()
/// .name("MY_CUSTOM_TYPE")
/// .build())
/// .rules(PreventionJobTriggerInspectJobInspectConfigRuleSetRuleArgs.builder()
/// .hotwordRule(PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRuleArgs.builder()
/// .hotwordRegex(PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRuleHotwordRegexArgs.builder()
/// .pattern("example*")
/// .build())
/// .proximity(PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRuleProximityArgs.builder()
/// .windowBefore(50)
/// .build())
/// .likelihoodAdjustment(PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRuleLikelihoodAdjustmentArgs.builder()
/// .fixedLikelihood("VERY_LIKELY")
/// .build())
/// .build())
/// .build())
/// .build())
/// .limits(PreventionJobTriggerInspectJobInspectConfigLimitsArgs.builder()
/// .maxFindingsPerItem(10)
/// .maxFindingsPerRequest(50)
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// inspect:
/// type: gcp:dataloss:PreventionJobTrigger
/// properties:
/// parent: projects/my-project-name
/// description: Description
/// displayName: Displayname
/// triggers:
/// - schedule:
/// recurrencePeriodDuration: 86400s
/// inspectJob:
/// inspectTemplateName: fake
/// actions:
/// - saveFindings:
/// outputConfig:
/// table:
/// projectId: project
/// datasetId: dataset
/// storageConfig:
/// cloudStorageOptions:
/// fileSet:
/// url: gs://mybucket/directory/
/// inspectConfig:
/// customInfoTypes:
/// - infoType:
/// name: MY_CUSTOM_TYPE
/// likelihood: UNLIKELY
/// regex:
/// pattern: test*
/// infoTypes:
/// - name: EMAIL_ADDRESS
/// minLikelihood: UNLIKELY
/// ruleSets:
/// - infoTypes:
/// - name: EMAIL_ADDRESS
/// rules:
/// - exclusionRule:
/// regex:
/// pattern: .+@example.com
/// matchingType: MATCHING_TYPE_FULL_MATCH
/// - infoTypes:
/// - name: MY_CUSTOM_TYPE
/// rules:
/// - hotwordRule:
/// hotwordRegex:
/// pattern: example*
/// proximity:
/// windowBefore: 50
/// likelihoodAdjustment:
/// fixedLikelihood: VERY_LIKELY
/// limits:
/// maxFindingsPerItem: 10
/// maxFindingsPerRequest: 50
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Dlp Job Trigger Publish To Stackdriver
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const publishToStackdriver = new gcp.dataloss.PreventionJobTrigger("publish_to_stackdriver", {
/// parent: "projects/my-project-name",
/// description: "Description for the job_trigger created by terraform",
/// displayName: "TerraformDisplayName",
/// triggers: [{
/// schedule: {
/// recurrencePeriodDuration: "86400s",
/// },
/// }],
/// inspectJob: {
/// inspectTemplateName: "sample-inspect-template",
/// actions: [{
/// publishToStackdriver: {},
/// }],
/// storageConfig: {
/// cloudStorageOptions: {
/// fileSet: {
/// url: "gs://mybucket/directory/",
/// },
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// publish_to_stackdriver = gcp.dataloss.PreventionJobTrigger("publish_to_stackdriver",
/// parent="projects/my-project-name",
/// description="Description for the job_trigger created by terraform",
/// display_name="TerraformDisplayName",
/// triggers=[{
/// "schedule": {
/// "recurrence_period_duration": "86400s",
/// },
/// }],
/// inspect_job={
/// "inspect_template_name": "sample-inspect-template",
/// "actions": [{
/// "publish_to_stackdriver": {},
/// }],
/// "storage_config": {
/// "cloud_storage_options": {
/// "file_set": {
/// "url": "gs://mybucket/directory/",
/// },
/// },
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var publishToStackdriver = new Gcp.DataLoss.PreventionJobTrigger("publish_to_stackdriver", new()
/// {
/// Parent = "projects/my-project-name",
/// Description = "Description for the job_trigger created by terraform",
/// DisplayName = "TerraformDisplayName",
/// Triggers = new[]
/// {
/// new Gcp.DataLoss.Inputs.PreventionJobTriggerTriggerArgs
/// {
/// Schedule = new Gcp.DataLoss.Inputs.PreventionJobTriggerTriggerScheduleArgs
/// {
/// RecurrencePeriodDuration = "86400s",
/// },
/// },
/// },
/// InspectJob = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobArgs
/// {
/// InspectTemplateName = "sample-inspect-template",
/// Actions = new[]
/// {
/// new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobActionArgs
/// {
/// PublishToStackdriver = null,
/// },
/// },
/// StorageConfig = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobStorageConfigArgs
/// {
/// CloudStorageOptions = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsArgs
/// {
/// FileSet = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetArgs
/// {
/// Url = "gs://mybucket/directory/",
/// },
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataloss"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataloss.NewPreventionJobTrigger(ctx, "publish_to_stackdriver", &dataloss.PreventionJobTriggerArgs{
/// Parent:      pulumi.String("projects/my-project-name"),
/// Description: pulumi.String("Description for the job_trigger created by terraform"),
/// DisplayName: pulumi.String("TerraformDisplayName"),
/// Triggers: dataloss.PreventionJobTriggerTriggerArray{
/// &dataloss.PreventionJobTriggerTriggerArgs{
/// Schedule: &dataloss.PreventionJobTriggerTriggerScheduleArgs{
/// RecurrencePeriodDuration: pulumi.String("86400s"),
/// },
/// },
/// },
/// InspectJob: &dataloss.PreventionJobTriggerInspectJobArgs{
/// InspectTemplateName: pulumi.String("sample-inspect-template"),
/// Actions: dataloss.PreventionJobTriggerInspectJobActionArray{
/// &dataloss.PreventionJobTriggerInspectJobActionArgs{
/// PublishToStackdriver: &dataloss.PreventionJobTriggerInspectJobActionPublishToStackdriverArgs{},
/// },
/// },
/// StorageConfig: &dataloss.PreventionJobTriggerInspectJobStorageConfigArgs{
/// CloudStorageOptions: &dataloss.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsArgs{
/// FileSet: &dataloss.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetArgs{
/// Url: pulumi.String("gs://mybucket/directory/"),
/// },
/// },
/// },
/// },
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
/// import com.pulumi.gcp.dataloss.PreventionJobTrigger;
/// import com.pulumi.gcp.dataloss.PreventionJobTriggerArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerTriggerArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerTriggerScheduleArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobStorageConfigArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetArgs;
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
/// var publishToStackdriver = new PreventionJobTrigger("publishToStackdriver", PreventionJobTriggerArgs.builder()
/// .parent("projects/my-project-name")
/// .description("Description for the job_trigger created by terraform")
/// .displayName("TerraformDisplayName")
/// .triggers(PreventionJobTriggerTriggerArgs.builder()
/// .schedule(PreventionJobTriggerTriggerScheduleArgs.builder()
/// .recurrencePeriodDuration("86400s")
/// .build())
/// .build())
/// .inspectJob(PreventionJobTriggerInspectJobArgs.builder()
/// .inspectTemplateName("sample-inspect-template")
/// .actions(PreventionJobTriggerInspectJobActionArgs.builder()
/// .publishToStackdriver(PreventionJobTriggerInspectJobActionPublishToStackdriverArgs.builder()
/// .build())
/// .build())
/// .storageConfig(PreventionJobTriggerInspectJobStorageConfigArgs.builder()
/// .cloudStorageOptions(PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsArgs.builder()
/// .fileSet(PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetArgs.builder()
/// .url("gs://mybucket/directory/")
/// .build())
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// publishToStackdriver:
/// type: gcp:dataloss:PreventionJobTrigger
/// name: publish_to_stackdriver
/// properties:
/// parent: projects/my-project-name
/// description: Description for the job_trigger created by terraform
/// displayName: TerraformDisplayName
/// triggers:
/// - schedule:
/// recurrencePeriodDuration: 86400s
/// inspectJob:
/// inspectTemplateName: sample-inspect-template
/// actions:
/// - publishToStackdriver: {}
/// storageConfig:
/// cloudStorageOptions:
/// fileSet:
/// url: gs://mybucket/directory/
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Dlp Job Trigger With Id
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const withTriggerId = new gcp.dataloss.PreventionJobTrigger("with_trigger_id", {
/// parent: "projects/my-project-name",
/// description: "Starting description",
/// displayName: "display",
/// triggerId: "id-",
/// triggers: [{
/// schedule: {
/// recurrencePeriodDuration: "86400s",
/// },
/// }],
/// inspectJob: {
/// inspectTemplateName: "fake",
/// actions: [{
/// saveFindings: {
/// outputConfig: {
/// table: {
/// projectId: "project",
/// datasetId: "dataset123",
/// },
/// },
/// },
/// }],
/// storageConfig: {
/// cloudStorageOptions: {
/// fileSet: {
/// url: "gs://mybucket/directory/",
/// },
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// with_trigger_id = gcp.dataloss.PreventionJobTrigger("with_trigger_id",
/// parent="projects/my-project-name",
/// description="Starting description",
/// display_name="display",
/// trigger_id="id-",
/// triggers=[{
/// "schedule": {
/// "recurrence_period_duration": "86400s",
/// },
/// }],
/// inspect_job={
/// "inspect_template_name": "fake",
/// "actions": [{
/// "save_findings": {
/// "output_config": {
/// "table": {
/// "project_id": "project",
/// "dataset_id": "dataset123",
/// },
/// },
/// },
/// }],
/// "storage_config": {
/// "cloud_storage_options": {
/// "file_set": {
/// "url": "gs://mybucket/directory/",
/// },
/// },
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var withTriggerId = new Gcp.DataLoss.PreventionJobTrigger("with_trigger_id", new()
/// {
/// Parent = "projects/my-project-name",
/// Description = "Starting description",
/// DisplayName = "display",
/// TriggerId = "id-",
/// Triggers = new[]
/// {
/// new Gcp.DataLoss.Inputs.PreventionJobTriggerTriggerArgs
/// {
/// Schedule = new Gcp.DataLoss.Inputs.PreventionJobTriggerTriggerScheduleArgs
/// {
/// RecurrencePeriodDuration = "86400s",
/// },
/// },
/// },
/// InspectJob = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobArgs
/// {
/// InspectTemplateName = "fake",
/// Actions = new[]
/// {
/// new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobActionArgs
/// {
/// SaveFindings = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobActionSaveFindingsArgs
/// {
/// OutputConfig = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigArgs
/// {
/// Table = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigTableArgs
/// {
/// ProjectId = "project",
/// DatasetId = "dataset123",
/// },
/// },
/// },
/// },
/// },
/// StorageConfig = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobStorageConfigArgs
/// {
/// CloudStorageOptions = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsArgs
/// {
/// FileSet = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetArgs
/// {
/// Url = "gs://mybucket/directory/",
/// },
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataloss"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataloss.NewPreventionJobTrigger(ctx, "with_trigger_id", &dataloss.PreventionJobTriggerArgs{
/// Parent:      pulumi.String("projects/my-project-name"),
/// Description: pulumi.String("Starting description"),
/// DisplayName: pulumi.String("display"),
/// TriggerId:   pulumi.String("id-"),
/// Triggers: dataloss.PreventionJobTriggerTriggerArray{
/// &dataloss.PreventionJobTriggerTriggerArgs{
/// Schedule: &dataloss.PreventionJobTriggerTriggerScheduleArgs{
/// RecurrencePeriodDuration: pulumi.String("86400s"),
/// },
/// },
/// },
/// InspectJob: &dataloss.PreventionJobTriggerInspectJobArgs{
/// InspectTemplateName: pulumi.String("fake"),
/// Actions: dataloss.PreventionJobTriggerInspectJobActionArray{
/// &dataloss.PreventionJobTriggerInspectJobActionArgs{
/// SaveFindings: &dataloss.PreventionJobTriggerInspectJobActionSaveFindingsArgs{
/// OutputConfig: &dataloss.PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigArgs{
/// Table: &dataloss.PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigTableArgs{
/// ProjectId: pulumi.String("project"),
/// DatasetId: pulumi.String("dataset123"),
/// },
/// },
/// },
/// },
/// },
/// StorageConfig: &dataloss.PreventionJobTriggerInspectJobStorageConfigArgs{
/// CloudStorageOptions: &dataloss.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsArgs{
/// FileSet: &dataloss.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetArgs{
/// Url: pulumi.String("gs://mybucket/directory/"),
/// },
/// },
/// },
/// },
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
/// import com.pulumi.gcp.dataloss.PreventionJobTrigger;
/// import com.pulumi.gcp.dataloss.PreventionJobTriggerArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerTriggerArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerTriggerScheduleArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobStorageConfigArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetArgs;
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
/// var withTriggerId = new PreventionJobTrigger("withTriggerId", PreventionJobTriggerArgs.builder()
/// .parent("projects/my-project-name")
/// .description("Starting description")
/// .displayName("display")
/// .triggerId("id-")
/// .triggers(PreventionJobTriggerTriggerArgs.builder()
/// .schedule(PreventionJobTriggerTriggerScheduleArgs.builder()
/// .recurrencePeriodDuration("86400s")
/// .build())
/// .build())
/// .inspectJob(PreventionJobTriggerInspectJobArgs.builder()
/// .inspectTemplateName("fake")
/// .actions(PreventionJobTriggerInspectJobActionArgs.builder()
/// .saveFindings(PreventionJobTriggerInspectJobActionSaveFindingsArgs.builder()
/// .outputConfig(PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigArgs.builder()
/// .table(PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigTableArgs.builder()
/// .projectId("project")
/// .datasetId("dataset123")
/// .build())
/// .build())
/// .build())
/// .build())
/// .storageConfig(PreventionJobTriggerInspectJobStorageConfigArgs.builder()
/// .cloudStorageOptions(PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsArgs.builder()
/// .fileSet(PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetArgs.builder()
/// .url("gs://mybucket/directory/")
/// .build())
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// withTriggerId:
/// type: gcp:dataloss:PreventionJobTrigger
/// name: with_trigger_id
/// properties:
/// parent: projects/my-project-name
/// description: Starting description
/// displayName: display
/// triggerId: id-
/// triggers:
/// - schedule:
/// recurrencePeriodDuration: 86400s
/// inspectJob:
/// inspectTemplateName: fake
/// actions:
/// - saveFindings:
/// outputConfig:
/// table:
/// projectId: project
/// datasetId: dataset123
/// storageConfig:
/// cloudStorageOptions:
/// fileSet:
/// url: gs://mybucket/directory/
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Dlp Job Trigger Multiple Actions
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.dataloss.PreventionJobTrigger("basic", {
/// parent: "projects/my-project-name",
/// description: "Description",
/// displayName: "Displayname",
/// triggers: [{
/// schedule: {
/// recurrencePeriodDuration: "86400s",
/// },
/// }],
/// inspectJob: {
/// inspectTemplateName: "fake",
/// actions: [
/// {
/// saveFindings: {
/// outputConfig: {
/// table: {
/// projectId: "project",
/// datasetId: "dataset",
/// },
/// },
/// },
/// },
/// {
/// pubSub: {
/// topic: "projects/project/topics/topic-name",
/// },
/// },
/// ],
/// storageConfig: {
/// cloudStorageOptions: {
/// fileSet: {
/// url: "gs://mybucket/directory/",
/// },
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.dataloss.PreventionJobTrigger("basic",
/// parent="projects/my-project-name",
/// description="Description",
/// display_name="Displayname",
/// triggers=[{
/// "schedule": {
/// "recurrence_period_duration": "86400s",
/// },
/// }],
/// inspect_job={
/// "inspect_template_name": "fake",
/// "actions": [
/// {
/// "save_findings": {
/// "output_config": {
/// "table": {
/// "project_id": "project",
/// "dataset_id": "dataset",
/// },
/// },
/// },
/// },
/// {
/// "pub_sub": {
/// "topic": "projects/project/topics/topic-name",
/// },
/// },
/// ],
/// "storage_config": {
/// "cloud_storage_options": {
/// "file_set": {
/// "url": "gs://mybucket/directory/",
/// },
/// },
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var basic = new Gcp.DataLoss.PreventionJobTrigger("basic", new()
/// {
/// Parent = "projects/my-project-name",
/// Description = "Description",
/// DisplayName = "Displayname",
/// Triggers = new[]
/// {
/// new Gcp.DataLoss.Inputs.PreventionJobTriggerTriggerArgs
/// {
/// Schedule = new Gcp.DataLoss.Inputs.PreventionJobTriggerTriggerScheduleArgs
/// {
/// RecurrencePeriodDuration = "86400s",
/// },
/// },
/// },
/// InspectJob = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobArgs
/// {
/// InspectTemplateName = "fake",
/// Actions = new[]
/// {
/// new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobActionArgs
/// {
/// SaveFindings = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobActionSaveFindingsArgs
/// {
/// OutputConfig = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigArgs
/// {
/// Table = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigTableArgs
/// {
/// ProjectId = "project",
/// DatasetId = "dataset",
/// },
/// },
/// },
/// },
/// new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobActionArgs
/// {
/// PubSub = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobActionPubSubArgs
/// {
/// Topic = "projects/project/topics/topic-name",
/// },
/// },
/// },
/// StorageConfig = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobStorageConfigArgs
/// {
/// CloudStorageOptions = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsArgs
/// {
/// FileSet = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetArgs
/// {
/// Url = "gs://mybucket/directory/",
/// },
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataloss"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataloss.NewPreventionJobTrigger(ctx, "basic", &dataloss.PreventionJobTriggerArgs{
/// Parent:      pulumi.String("projects/my-project-name"),
/// Description: pulumi.String("Description"),
/// DisplayName: pulumi.String("Displayname"),
/// Triggers: dataloss.PreventionJobTriggerTriggerArray{
/// &dataloss.PreventionJobTriggerTriggerArgs{
/// Schedule: &dataloss.PreventionJobTriggerTriggerScheduleArgs{
/// RecurrencePeriodDuration: pulumi.String("86400s"),
/// },
/// },
/// },
/// InspectJob: &dataloss.PreventionJobTriggerInspectJobArgs{
/// InspectTemplateName: pulumi.String("fake"),
/// Actions: dataloss.PreventionJobTriggerInspectJobActionArray{
/// &dataloss.PreventionJobTriggerInspectJobActionArgs{
/// SaveFindings: &dataloss.PreventionJobTriggerInspectJobActionSaveFindingsArgs{
/// OutputConfig: &dataloss.PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigArgs{
/// Table: &dataloss.PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigTableArgs{
/// ProjectId: pulumi.String("project"),
/// DatasetId: pulumi.String("dataset"),
/// },
/// },
/// },
/// },
/// &dataloss.PreventionJobTriggerInspectJobActionArgs{
/// PubSub: &dataloss.PreventionJobTriggerInspectJobActionPubSubArgs{
/// Topic: pulumi.String("projects/project/topics/topic-name"),
/// },
/// },
/// },
/// StorageConfig: &dataloss.PreventionJobTriggerInspectJobStorageConfigArgs{
/// CloudStorageOptions: &dataloss.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsArgs{
/// FileSet: &dataloss.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetArgs{
/// Url: pulumi.String("gs://mybucket/directory/"),
/// },
/// },
/// },
/// },
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
/// import com.pulumi.gcp.dataloss.PreventionJobTrigger;
/// import com.pulumi.gcp.dataloss.PreventionJobTriggerArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerTriggerArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerTriggerScheduleArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobStorageConfigArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetArgs;
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
/// var basic = new PreventionJobTrigger("basic", PreventionJobTriggerArgs.builder()
/// .parent("projects/my-project-name")
/// .description("Description")
/// .displayName("Displayname")
/// .triggers(PreventionJobTriggerTriggerArgs.builder()
/// .schedule(PreventionJobTriggerTriggerScheduleArgs.builder()
/// .recurrencePeriodDuration("86400s")
/// .build())
/// .build())
/// .inspectJob(PreventionJobTriggerInspectJobArgs.builder()
/// .inspectTemplateName("fake")
/// .actions(
/// PreventionJobTriggerInspectJobActionArgs.builder()
/// .saveFindings(PreventionJobTriggerInspectJobActionSaveFindingsArgs.builder()
/// .outputConfig(PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigArgs.builder()
/// .table(PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigTableArgs.builder()
/// .projectId("project")
/// .datasetId("dataset")
/// .build())
/// .build())
/// .build())
/// .build(),
/// PreventionJobTriggerInspectJobActionArgs.builder()
/// .pubSub(PreventionJobTriggerInspectJobActionPubSubArgs.builder()
/// .topic("projects/project/topics/topic-name")
/// .build())
/// .build())
/// .storageConfig(PreventionJobTriggerInspectJobStorageConfigArgs.builder()
/// .cloudStorageOptions(PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsArgs.builder()
/// .fileSet(PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetArgs.builder()
/// .url("gs://mybucket/directory/")
/// .build())
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// basic:
/// type: gcp:dataloss:PreventionJobTrigger
/// properties:
/// parent: projects/my-project-name
/// description: Description
/// displayName: Displayname
/// triggers:
/// - schedule:
/// recurrencePeriodDuration: 86400s
/// inspectJob:
/// inspectTemplateName: fake
/// actions:
/// - saveFindings:
/// outputConfig:
/// table:
/// projectId: project
/// datasetId: dataset
/// - pubSub:
/// topic: projects/project/topics/topic-name
/// storageConfig:
/// cloudStorageOptions:
/// fileSet:
/// url: gs://mybucket/directory/
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Dlp Job Trigger Cloud Storage Optional Timespan Autopopulation
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.dataloss.PreventionJobTrigger("basic", {
/// parent: "projects/my-project-name",
/// description: "Description",
/// displayName: "Displayname",
/// triggers: [{
/// schedule: {
/// recurrencePeriodDuration: "86400s",
/// },
/// }],
/// inspectJob: {
/// inspectTemplateName: "fake",
/// actions: [{
/// saveFindings: {
/// outputConfig: {
/// table: {
/// projectId: "project",
/// datasetId: "dataset",
/// },
/// },
/// },
/// }],
/// storageConfig: {
/// timespanConfig: {
/// enableAutoPopulationOfTimespanConfig: true,
/// },
/// cloudStorageOptions: {
/// fileSet: {
/// url: "gs://mybucket/directory/",
/// },
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.dataloss.PreventionJobTrigger("basic",
/// parent="projects/my-project-name",
/// description="Description",
/// display_name="Displayname",
/// triggers=[{
/// "schedule": {
/// "recurrence_period_duration": "86400s",
/// },
/// }],
/// inspect_job={
/// "inspect_template_name": "fake",
/// "actions": [{
/// "save_findings": {
/// "output_config": {
/// "table": {
/// "project_id": "project",
/// "dataset_id": "dataset",
/// },
/// },
/// },
/// }],
/// "storage_config": {
/// "timespan_config": {
/// "enable_auto_population_of_timespan_config": True,
/// },
/// "cloud_storage_options": {
/// "file_set": {
/// "url": "gs://mybucket/directory/",
/// },
/// },
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var basic = new Gcp.DataLoss.PreventionJobTrigger("basic", new()
/// {
/// Parent = "projects/my-project-name",
/// Description = "Description",
/// DisplayName = "Displayname",
/// Triggers = new[]
/// {
/// new Gcp.DataLoss.Inputs.PreventionJobTriggerTriggerArgs
/// {
/// Schedule = new Gcp.DataLoss.Inputs.PreventionJobTriggerTriggerScheduleArgs
/// {
/// RecurrencePeriodDuration = "86400s",
/// },
/// },
/// },
/// InspectJob = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobArgs
/// {
/// InspectTemplateName = "fake",
/// Actions = new[]
/// {
/// new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobActionArgs
/// {
/// SaveFindings = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobActionSaveFindingsArgs
/// {
/// OutputConfig = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigArgs
/// {
/// Table = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigTableArgs
/// {
/// ProjectId = "project",
/// DatasetId = "dataset",
/// },
/// },
/// },
/// },
/// },
/// StorageConfig = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobStorageConfigArgs
/// {
/// TimespanConfig = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobStorageConfigTimespanConfigArgs
/// {
/// EnableAutoPopulationOfTimespanConfig = true,
/// },
/// CloudStorageOptions = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsArgs
/// {
/// FileSet = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetArgs
/// {
/// Url = "gs://mybucket/directory/",
/// },
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataloss"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataloss.NewPreventionJobTrigger(ctx, "basic", &dataloss.PreventionJobTriggerArgs{
/// Parent:      pulumi.String("projects/my-project-name"),
/// Description: pulumi.String("Description"),
/// DisplayName: pulumi.String("Displayname"),
/// Triggers: dataloss.PreventionJobTriggerTriggerArray{
/// &dataloss.PreventionJobTriggerTriggerArgs{
/// Schedule: &dataloss.PreventionJobTriggerTriggerScheduleArgs{
/// RecurrencePeriodDuration: pulumi.String("86400s"),
/// },
/// },
/// },
/// InspectJob: &dataloss.PreventionJobTriggerInspectJobArgs{
/// InspectTemplateName: pulumi.String("fake"),
/// Actions: dataloss.PreventionJobTriggerInspectJobActionArray{
/// &dataloss.PreventionJobTriggerInspectJobActionArgs{
/// SaveFindings: &dataloss.PreventionJobTriggerInspectJobActionSaveFindingsArgs{
/// OutputConfig: &dataloss.PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigArgs{
/// Table: &dataloss.PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigTableArgs{
/// ProjectId: pulumi.String("project"),
/// DatasetId: pulumi.String("dataset"),
/// },
/// },
/// },
/// },
/// },
/// StorageConfig: &dataloss.PreventionJobTriggerInspectJobStorageConfigArgs{
/// TimespanConfig: &dataloss.PreventionJobTriggerInspectJobStorageConfigTimespanConfigArgs{
/// EnableAutoPopulationOfTimespanConfig: pulumi.Bool(true),
/// },
/// CloudStorageOptions: &dataloss.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsArgs{
/// FileSet: &dataloss.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetArgs{
/// Url: pulumi.String("gs://mybucket/directory/"),
/// },
/// },
/// },
/// },
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
/// import com.pulumi.gcp.dataloss.PreventionJobTrigger;
/// import com.pulumi.gcp.dataloss.PreventionJobTriggerArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerTriggerArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerTriggerScheduleArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobStorageConfigArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobStorageConfigTimespanConfigArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetArgs;
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
/// var basic = new PreventionJobTrigger("basic", PreventionJobTriggerArgs.builder()
/// .parent("projects/my-project-name")
/// .description("Description")
/// .displayName("Displayname")
/// .triggers(PreventionJobTriggerTriggerArgs.builder()
/// .schedule(PreventionJobTriggerTriggerScheduleArgs.builder()
/// .recurrencePeriodDuration("86400s")
/// .build())
/// .build())
/// .inspectJob(PreventionJobTriggerInspectJobArgs.builder()
/// .inspectTemplateName("fake")
/// .actions(PreventionJobTriggerInspectJobActionArgs.builder()
/// .saveFindings(PreventionJobTriggerInspectJobActionSaveFindingsArgs.builder()
/// .outputConfig(PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigArgs.builder()
/// .table(PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigTableArgs.builder()
/// .projectId("project")
/// .datasetId("dataset")
/// .build())
/// .build())
/// .build())
/// .build())
/// .storageConfig(PreventionJobTriggerInspectJobStorageConfigArgs.builder()
/// .timespanConfig(PreventionJobTriggerInspectJobStorageConfigTimespanConfigArgs.builder()
/// .enableAutoPopulationOfTimespanConfig(true)
/// .build())
/// .cloudStorageOptions(PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsArgs.builder()
/// .fileSet(PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetArgs.builder()
/// .url("gs://mybucket/directory/")
/// .build())
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// basic:
/// type: gcp:dataloss:PreventionJobTrigger
/// properties:
/// parent: projects/my-project-name
/// description: Description
/// displayName: Displayname
/// triggers:
/// - schedule:
/// recurrencePeriodDuration: 86400s
/// inspectJob:
/// inspectTemplateName: fake
/// actions:
/// - saveFindings:
/// outputConfig:
/// table:
/// projectId: project
/// datasetId: dataset
/// storageConfig:
/// timespanConfig:
/// enableAutoPopulationOfTimespanConfig: true
/// cloudStorageOptions:
/// fileSet:
/// url: gs://mybucket/directory/
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Dlp Job Trigger Timespan Config Big Query
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const timespanConfigBigQuery = new gcp.dataloss.PreventionJobTrigger("timespan_config_big_query", {
/// parent: "projects/my-project-name",
/// description: "BigQuery DLP Job Trigger with timespan config and row limit",
/// displayName: "bigquery-dlp-job-trigger-limit-timespan",
/// triggers: [{
/// schedule: {
/// recurrencePeriodDuration: "86400s",
/// },
/// }],
/// inspectJob: {
/// inspectTemplateName: "projects/test/locations/global/inspectTemplates/6425492983381733900",
/// storageConfig: {
/// bigQueryOptions: {
/// tableReference: {
/// projectId: "project",
/// datasetId: "dataset",
/// tableId: "table",
/// },
/// sampleMethod: "",
/// },
/// timespanConfig: {
/// startTime: "2023-01-01T00:00:23Z",
/// timestampField: {
/// name: "timestamp",
/// },
/// },
/// },
/// actions: [{
/// saveFindings: {
/// outputConfig: {
/// table: {
/// projectId: "project",
/// datasetId: "output",
/// },
/// },
/// },
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// timespan_config_big_query = gcp.dataloss.PreventionJobTrigger("timespan_config_big_query",
/// parent="projects/my-project-name",
/// description="BigQuery DLP Job Trigger with timespan config and row limit",
/// display_name="bigquery-dlp-job-trigger-limit-timespan",
/// triggers=[{
/// "schedule": {
/// "recurrence_period_duration": "86400s",
/// },
/// }],
/// inspect_job={
/// "inspect_template_name": "projects/test/locations/global/inspectTemplates/6425492983381733900",
/// "storage_config": {
/// "big_query_options": {
/// "table_reference": {
/// "project_id": "project",
/// "dataset_id": "dataset",
/// "table_id": "table",
/// },
/// "sample_method": "",
/// },
/// "timespan_config": {
/// "start_time": "2023-01-01T00:00:23Z",
/// "timestamp_field": {
/// "name": "timestamp",
/// },
/// },
/// },
/// "actions": [{
/// "save_findings": {
/// "output_config": {
/// "table": {
/// "project_id": "project",
/// "dataset_id": "output",
/// },
/// },
/// },
/// }],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var timespanConfigBigQuery = new Gcp.DataLoss.PreventionJobTrigger("timespan_config_big_query", new()
/// {
/// Parent = "projects/my-project-name",
/// Description = "BigQuery DLP Job Trigger with timespan config and row limit",
/// DisplayName = "bigquery-dlp-job-trigger-limit-timespan",
/// Triggers = new[]
/// {
/// new Gcp.DataLoss.Inputs.PreventionJobTriggerTriggerArgs
/// {
/// Schedule = new Gcp.DataLoss.Inputs.PreventionJobTriggerTriggerScheduleArgs
/// {
/// RecurrencePeriodDuration = "86400s",
/// },
/// },
/// },
/// InspectJob = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobArgs
/// {
/// InspectTemplateName = "projects/test/locations/global/inspectTemplates/6425492983381733900",
/// StorageConfig = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobStorageConfigArgs
/// {
/// BigQueryOptions = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsArgs
/// {
/// TableReference = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsTableReferenceArgs
/// {
/// ProjectId = "project",
/// DatasetId = "dataset",
/// TableId = "table",
/// },
/// SampleMethod = "",
/// },
/// TimespanConfig = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobStorageConfigTimespanConfigArgs
/// {
/// StartTime = "2023-01-01T00:00:23Z",
/// TimestampField = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobStorageConfigTimespanConfigTimestampFieldArgs
/// {
/// Name = "timestamp",
/// },
/// },
/// },
/// Actions = new[]
/// {
/// new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobActionArgs
/// {
/// SaveFindings = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobActionSaveFindingsArgs
/// {
/// OutputConfig = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigArgs
/// {
/// Table = new Gcp.DataLoss.Inputs.PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigTableArgs
/// {
/// ProjectId = "project",
/// DatasetId = "output",
/// },
/// },
/// },
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataloss"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataloss.NewPreventionJobTrigger(ctx, "timespan_config_big_query", &dataloss.PreventionJobTriggerArgs{
/// Parent:      pulumi.String("projects/my-project-name"),
/// Description: pulumi.String("BigQuery DLP Job Trigger with timespan config and row limit"),
/// DisplayName: pulumi.String("bigquery-dlp-job-trigger-limit-timespan"),
/// Triggers: dataloss.PreventionJobTriggerTriggerArray{
/// &dataloss.PreventionJobTriggerTriggerArgs{
/// Schedule: &dataloss.PreventionJobTriggerTriggerScheduleArgs{
/// RecurrencePeriodDuration: pulumi.String("86400s"),
/// },
/// },
/// },
/// InspectJob: &dataloss.PreventionJobTriggerInspectJobArgs{
/// InspectTemplateName: pulumi.String("projects/test/locations/global/inspectTemplates/6425492983381733900"),
/// StorageConfig: &dataloss.PreventionJobTriggerInspectJobStorageConfigArgs{
/// BigQueryOptions: &dataloss.PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsArgs{
/// TableReference: &dataloss.PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsTableReferenceArgs{
/// ProjectId: pulumi.String("project"),
/// DatasetId: pulumi.String("dataset"),
/// TableId:   pulumi.String("table"),
/// },
/// SampleMethod: pulumi.String(""),
/// },
/// TimespanConfig: &dataloss.PreventionJobTriggerInspectJobStorageConfigTimespanConfigArgs{
/// StartTime: pulumi.String("2023-01-01T00:00:23Z"),
/// TimestampField: &dataloss.PreventionJobTriggerInspectJobStorageConfigTimespanConfigTimestampFieldArgs{
/// Name: pulumi.String("timestamp"),
/// },
/// },
/// },
/// Actions: dataloss.PreventionJobTriggerInspectJobActionArray{
/// &dataloss.PreventionJobTriggerInspectJobActionArgs{
/// SaveFindings: &dataloss.PreventionJobTriggerInspectJobActionSaveFindingsArgs{
/// OutputConfig: &dataloss.PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigArgs{
/// Table: &dataloss.PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigTableArgs{
/// ProjectId: pulumi.String("project"),
/// DatasetId: pulumi.String("output"),
/// },
/// },
/// },
/// },
/// },
/// },
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
/// import com.pulumi.gcp.dataloss.PreventionJobTrigger;
/// import com.pulumi.gcp.dataloss.PreventionJobTriggerArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerTriggerArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerTriggerScheduleArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobStorageConfigArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsTableReferenceArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobStorageConfigTimespanConfigArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionJobTriggerInspectJobStorageConfigTimespanConfigTimestampFieldArgs;
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
/// var timespanConfigBigQuery = new PreventionJobTrigger("timespanConfigBigQuery", PreventionJobTriggerArgs.builder()
/// .parent("projects/my-project-name")
/// .description("BigQuery DLP Job Trigger with timespan config and row limit")
/// .displayName("bigquery-dlp-job-trigger-limit-timespan")
/// .triggers(PreventionJobTriggerTriggerArgs.builder()
/// .schedule(PreventionJobTriggerTriggerScheduleArgs.builder()
/// .recurrencePeriodDuration("86400s")
/// .build())
/// .build())
/// .inspectJob(PreventionJobTriggerInspectJobArgs.builder()
/// .inspectTemplateName("projects/test/locations/global/inspectTemplates/6425492983381733900")
/// .storageConfig(PreventionJobTriggerInspectJobStorageConfigArgs.builder()
/// .bigQueryOptions(PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsArgs.builder()
/// .tableReference(PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsTableReferenceArgs.builder()
/// .projectId("project")
/// .datasetId("dataset")
/// .tableId("table")
/// .build())
/// .sampleMethod("")
/// .build())
/// .timespanConfig(PreventionJobTriggerInspectJobStorageConfigTimespanConfigArgs.builder()
/// .startTime("2023-01-01T00:00:23Z")
/// .timestampField(PreventionJobTriggerInspectJobStorageConfigTimespanConfigTimestampFieldArgs.builder()
/// .name("timestamp")
/// .build())
/// .build())
/// .build())
/// .actions(PreventionJobTriggerInspectJobActionArgs.builder()
/// .saveFindings(PreventionJobTriggerInspectJobActionSaveFindingsArgs.builder()
/// .outputConfig(PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigArgs.builder()
/// .table(PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigTableArgs.builder()
/// .projectId("project")
/// .datasetId("output")
/// .build())
/// .build())
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// timespanConfigBigQuery:
/// type: gcp:dataloss:PreventionJobTrigger
/// name: timespan_config_big_query
/// properties:
/// parent: projects/my-project-name
/// description: BigQuery DLP Job Trigger with timespan config and row limit
/// displayName: bigquery-dlp-job-trigger-limit-timespan
/// triggers:
/// - schedule:
/// recurrencePeriodDuration: 86400s
/// inspectJob:
/// inspectTemplateName: projects/test/locations/global/inspectTemplates/6425492983381733900
/// storageConfig:
/// bigQueryOptions:
/// tableReference:
/// projectId: project
/// datasetId: dataset
/// tableId: table
/// sampleMethod: ""
/// timespanConfig:
/// startTime: 2023-01-01T00:00:23Z
/// timestampField:
/// name: timestamp
/// actions:
/// - saveFindings:
/// outputConfig:
/// table:
/// projectId: project
/// datasetId: output
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// JobTrigger can be imported using any of these accepted formats:
///
/// * `{{parent}}/jobTriggers/{{name}}`
///
/// * `{{parent}}/{{name}}`
///
/// When using the `pulumi import` command, JobTrigger can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataloss/preventionJobTrigger:PreventionJobTrigger default {{parent}}/jobTriggers/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataloss/preventionJobTrigger:PreventionJobTrigger default {{parent}}/{{name}}
/// ```
class PreventionJobTrigger extends CustomResource {
  /// The creation timestamp of an inspectTemplate. Set by the server.
  late final Output<String> createTime;

  /// A description of the job trigger.
  late final Output<String?> description;

  /// User set display name of the job trigger.
  late final Output<String?> displayName;

  /// Controls what and how to inspect for findings.
  /// Structure is documented below.
  late final Output<PreventionJobTriggerInspectJob?> inspectJob;

  /// The timestamp of the last time this trigger executed.
  late final Output<String> lastRunTime;

  /// The resource name of the job trigger. Set by the server.
  late final Output<String> name;

  /// The parent of the trigger, either in the format `projects/{{project}}`
  /// or `projects/{{project}}/locations/{{location}}`
  late final Output<String> parent;

  /// Whether the trigger is currently active.
  /// Default value is `HEALTHY`.
  /// Possible values are: `PAUSED`, `HEALTHY`, `CANCELLED`.
  late final Output<String?> status;

  /// The trigger id can contain uppercase and lowercase letters, numbers, and hyphens;
  /// that is, it must match the regular expression: [a-zA-Z\d-_]+.
  /// The maximum length is 100 characters. Can be empty to allow the system to generate one.
  late final Output<String> triggerId;

  /// What event needs to occur for a new job to be started.
  /// Structure is documented below.
  late final Output<List<PreventionJobTriggerTrigger>> triggers;

  /// The last update timestamp of an inspectTemplate. Set by the server.
  late final Output<String> updateTime;

  PreventionJobTrigger(
    String name, {
    PreventionJobTriggerArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dataloss/preventionJobTrigger:PreventionJobTrigger',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.inspectJob =
        registerOutput<PreventionJobTriggerInspectJob?>('inspectJob');
    this.lastRunTime = registerOutput<String>('lastRunTime');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.status = registerOutput<String?>('status');
    this.triggerId = registerOutput<String>('triggerId');
    this.triggers =
        registerOutput<List<PreventionJobTriggerTrigger>>('triggers');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
