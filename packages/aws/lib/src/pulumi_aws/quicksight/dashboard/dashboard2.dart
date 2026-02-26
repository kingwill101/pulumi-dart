import 'package:pulumi/pulumi.dart';
import '../dashboard_dashboard_publish_options/dashboard_dashboard_publish_options.dart';
import '../dashboard_parameters/dashboard_parameters.dart';
import '../dashboard_permission/dashboard_permission.dart';
import '../dashboard_source_entity/dashboard_source_entity.dart';
import 'dashboard_args2.dart';

/// Resource for managing a QuickSight Dashboard.
///
/// ## Example Usage
///
/// ### From Source Template
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.quicksight.Dashboard("example", {
/// dashboardId: "example-id",
/// name: "example-name",
/// versionDescription: "version",
/// sourceEntity: {
/// sourceTemplate: {
/// arn: source.arn,
/// dataSetReferences: [{
/// dataSetArn: dataset.arn,
/// dataSetPlaceholder: "1",
/// }],
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.Dashboard("example",
/// dashboard_id="example-id",
/// name="example-name",
/// version_description="version",
/// source_entity={
/// "source_template": {
/// "arn": source["arn"],
/// "data_set_references": [{
/// "data_set_arn": dataset["arn"],
/// "data_set_placeholder": "1",
/// }],
/// },
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
/// var example = new Aws.Quicksight.Dashboard("example", new()
/// {
/// DashboardId = "example-id",
/// Name = "example-name",
/// VersionDescription = "version",
/// SourceEntity = new Aws.Quicksight.Inputs.DashboardSourceEntityArgs
/// {
/// SourceTemplate = new Aws.Quicksight.Inputs.DashboardSourceEntitySourceTemplateArgs
/// {
/// Arn = source.Arn,
/// DataSetReferences = new[]
/// {
/// new Aws.Quicksight.Inputs.DashboardSourceEntitySourceTemplateDataSetReferenceArgs
/// {
/// DataSetArn = dataset.Arn,
/// DataSetPlaceholder = "1",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := quicksight.NewDashboard(ctx, "example", &quicksight.DashboardArgs{
/// DashboardId:        pulumi.String("example-id"),
/// Name:               pulumi.String("example-name"),
/// VersionDescription: pulumi.String("version"),
/// SourceEntity: &quicksight.DashboardSourceEntityArgs{
/// SourceTemplate: &quicksight.DashboardSourceEntitySourceTemplateArgs{
/// Arn: pulumi.Any(source.Arn),
/// DataSetReferences: quicksight.DashboardSourceEntitySourceTemplateDataSetReferenceArray{
/// &quicksight.DashboardSourceEntitySourceTemplateDataSetReferenceArgs{
/// DataSetArn:         pulumi.Any(dataset.Arn),
/// DataSetPlaceholder: pulumi.String("1"),
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
/// import com.pulumi.aws.quicksight.Dashboard;
/// import com.pulumi.aws.quicksight.DashboardArgs;
/// import com.pulumi.aws.quicksight.inputs.DashboardSourceEntityArgs;
/// import com.pulumi.aws.quicksight.inputs.DashboardSourceEntitySourceTemplateArgs;
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
/// var example = new Dashboard("example", DashboardArgs.builder()
/// .dashboardId("example-id")
/// .name("example-name")
/// .versionDescription("version")
/// .sourceEntity(DashboardSourceEntityArgs.builder()
/// .sourceTemplate(DashboardSourceEntitySourceTemplateArgs.builder()
/// .arn(source.arn())
/// .dataSetReferences(DashboardSourceEntitySourceTemplateDataSetReferenceArgs.builder()
/// .dataSetArn(dataset.arn())
/// .dataSetPlaceholder("1")
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
/// example:
/// type: aws:quicksight:Dashboard
/// properties:
/// dashboardId: example-id
/// name: example-name
/// versionDescription: version
/// sourceEntity:
/// sourceTemplate:
/// arn: ${source.arn}
/// dataSetReferences:
/// - dataSetArn: ${dataset.arn}
/// dataSetPlaceholder: '1'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With Definition
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.quicksight.Dashboard("example", {
/// dashboardId: "example-id",
/// name: "example-name",
/// versionDescription: "version",
/// definition: {
/// dataSetIdentifiersDeclarations: [{
/// dataSetArn: dataset.arn,
/// identifier: "1",
/// }],
/// sheets: [{
/// title: "Example",
/// sheetId: "Example1",
/// visuals: [{
/// lineChartVisual: {
/// visualId: "LineChart",
/// title: {
/// formatText: {
/// plainText: "Line Chart Example",
/// },
/// },
/// chartConfiguration: {
/// fieldWells: {
/// lineChartAggregatedFieldWells: {
/// categories: [{
/// categoricalDimensionField: {
/// fieldId: "1",
/// column: {
/// dataSetIdentifier: "1",
/// columnName: "Column1",
/// },
/// },
/// }],
/// values: [{
/// categoricalMeasureField: {
/// fieldId: "2",
/// column: {
/// dataSetIdentifier: "1",
/// columnName: "Column1",
/// },
/// aggregationFunction: "COUNT",
/// },
/// }],
/// },
/// },
/// },
/// },
/// }],
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.Dashboard("example",
/// dashboard_id="example-id",
/// name="example-name",
/// version_description="version",
/// definition={
/// "dataSetIdentifiersDeclarations": [{
/// "dataSetArn": dataset["arn"],
/// "identifier": "1",
/// }],
/// "sheets": [{
/// "title": "Example",
/// "sheetId": "Example1",
/// "visuals": [{
/// "lineChartVisual": {
/// "visualId": "LineChart",
/// "title": {
/// "formatText": {
/// "plainText": "Line Chart Example",
/// },
/// },
/// "chartConfiguration": {
/// "fieldWells": {
/// "lineChartAggregatedFieldWells": {
/// "categories": [{
/// "categoricalDimensionField": {
/// "fieldId": "1",
/// "column": {
/// "dataSetIdentifier": "1",
/// "columnName": "Column1",
/// },
/// },
/// }],
/// "values": [{
/// "categoricalMeasureField": {
/// "fieldId": "2",
/// "column": {
/// "dataSetIdentifier": "1",
/// "columnName": "Column1",
/// },
/// "aggregationFunction": "COUNT",
/// },
/// }],
/// },
/// },
/// },
/// },
/// }],
/// }],
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
/// var example = new Aws.Quicksight.Dashboard("example", new()
/// {
/// DashboardId = "example-id",
/// Name = "example-name",
/// VersionDescription = "version",
/// Definition =
/// {
/// { "dataSetIdentifiersDeclarations", new[]
/// {
///
/// {
/// { "dataSetArn", dataset.Arn },
/// { "identifier", "1" },
/// },
/// } },
/// { "sheets", new[]
/// {
///
/// {
/// { "title", "Example" },
/// { "sheetId", "Example1" },
/// { "visuals", new[]
/// {
///
/// {
/// { "lineChartVisual",
/// {
/// { "visualId", "LineChart" },
/// { "title",
/// {
/// { "formatText",
/// {
/// { "plainText", "Line Chart Example" },
/// } },
/// } },
/// { "chartConfiguration",
/// {
/// { "fieldWells",
/// {
/// { "lineChartAggregatedFieldWells",
/// {
/// { "categories", new[]
/// {
///
/// {
/// { "categoricalDimensionField",
/// {
/// { "fieldId", "1" },
/// { "column",
/// {
/// { "dataSetIdentifier", "1" },
/// { "columnName", "Column1" },
/// } },
/// } },
/// },
/// } },
/// { "values", new[]
/// {
///
/// {
/// { "categoricalMeasureField",
/// {
/// { "fieldId", "2" },
/// { "column",
/// {
/// { "dataSetIdentifier", "1" },
/// { "columnName", "Column1" },
/// } },
/// { "aggregationFunction", "COUNT" },
/// } },
/// },
/// } },
/// } },
/// } },
/// } },
/// } },
/// },
/// } },
/// },
/// } },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := quicksight.NewDashboard(ctx, "example", &quicksight.DashboardArgs{
/// DashboardId:        pulumi.String("example-id"),
/// Name:               pulumi.String("example-name"),
/// VersionDescription: pulumi.String("version"),
/// Definition: map[string]interface{}{
/// "dataSetIdentifiersDeclarations": []map[string]interface{}{
/// map[string]interface{}{
/// "dataSetArn": dataset.Arn,
/// "identifier": "1",
/// },
/// },
/// "sheets": []map[string]interface{}{
/// map[string]interface{}{
/// "title":   "Example",
/// "sheetId": "Example1",
/// "visuals": []map[string]interface{}{
/// map[string]interface{}{
/// "lineChartVisual": map[string]interface{}{
/// "visualId": "LineChart",
/// "title": map[string]interface{}{
/// "formatText": map[string]interface{}{
/// "plainText": "Line Chart Example",
/// },
/// },
/// "chartConfiguration": map[string]interface{}{
/// "fieldWells": map[string]interface{}{
/// "lineChartAggregatedFieldWells": map[string]interface{}{
/// "categories": []map[string]interface{}{
/// map[string]interface{}{
/// "categoricalDimensionField": map[string]interface{}{
/// "fieldId": "1",
/// "column": map[string]interface{}{
/// "dataSetIdentifier": "1",
/// "columnName":        "Column1",
/// },
/// },
/// },
/// },
/// "values": []map[string]interface{}{
/// map[string]interface{}{
/// "categoricalMeasureField": map[string]interface{}{
/// "fieldId": "2",
/// "column": map[string]interface{}{
/// "dataSetIdentifier": "1",
/// "columnName":        "Column1",
/// },
/// "aggregationFunction": "COUNT",
/// },
/// },
/// },
/// },
/// },
/// },
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
/// import com.pulumi.aws.quicksight.Dashboard;
/// import com.pulumi.aws.quicksight.DashboardArgs;
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
/// var example = new Dashboard("example", DashboardArgs.builder()
/// .dashboardId("example-id")
/// .name("example-name")
/// .versionDescription("version")
/// .definition(Map.ofEntries(
/// Map.entry("dataSetIdentifiersDeclarations", List.of(Map.ofEntries(
/// Map.entry("dataSetArn", dataset.arn()),
/// Map.entry("identifier", "1")
/// ))),
/// Map.entry("sheets", List.of(Map.ofEntries(
/// Map.entry("title", "Example"),
/// Map.entry("sheetId", "Example1"),
/// Map.entry("visuals", List.of(Map.of("lineChartVisual", Map.ofEntries(
/// Map.entry("visualId", "LineChart"),
/// Map.entry("title", Map.of("formatText", Map.of("plainText", "Line Chart Example"))),
/// Map.entry("chartConfiguration", Map.of("fieldWells", Map.of("lineChartAggregatedFieldWells", Map.ofEntries(
/// Map.entry("categories", List.of(Map.of("categoricalDimensionField", Map.ofEntries(
/// Map.entry("fieldId", "1"),
/// Map.entry("column", Map.ofEntries(
/// Map.entry("dataSetIdentifier", "1"),
/// Map.entry("columnName", "Column1")
/// ))
/// )))),
/// Map.entry("values", List.of(Map.of("categoricalMeasureField", Map.ofEntries(
/// Map.entry("fieldId", "2"),
/// Map.entry("column", Map.ofEntries(
/// Map.entry("dataSetIdentifier", "1"),
/// Map.entry("columnName", "Column1")
/// )),
/// Map.entry("aggregationFunction", "COUNT")
/// ))))
/// ))))
/// ))))
/// )))
/// ))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:quicksight:Dashboard
/// properties:
/// dashboardId: example-id
/// name: example-name
/// versionDescription: version
/// definition:
/// dataSetIdentifiersDeclarations:
/// - dataSetArn: ${dataset.arn}
/// identifier: '1'
/// sheets:
/// - title: Example
/// sheetId: Example1
/// visuals:
/// - lineChartVisual:
/// visualId: LineChart
/// title:
/// formatText:
/// plainText: Line Chart Example
/// chartConfiguration:
/// fieldWells:
/// lineChartAggregatedFieldWells:
/// categories:
/// - categoricalDimensionField:
/// fieldId: '1'
/// column:
/// dataSetIdentifier: '1'
/// columnName: Column1
/// values:
/// - categoricalMeasureField:
/// fieldId: '2'
/// column:
/// dataSetIdentifier: '1'
/// columnName: Column1
/// aggregationFunction: COUNT
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import a QuickSight Dashboard using the AWS account ID and dashboard ID separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/dashboard:Dashboard example 123456789012,example-id
/// ```
class Dashboard2 extends CustomResource {
  /// ARN of the dashboard.
  late final Output<String> arn;

  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final Output<String> awsAccountId;

  /// The time that the dashboard was created.
  late final Output<String> createdTime;

  /// Identifier for the dashboard.
  late final Output<String> dashboardId;

  /// Options for publishing the dashboard. See dashboard_publish_options.
  late final Output<DashboardDashboardPublishOptions> dashboardPublishOptions;
  late final Output<String> lastPublishedTime;

  /// The time that the dashboard was last updated.
  late final Output<String> lastUpdatedTime;

  /// Display name for the dashboard.
  late final Output<String> name;

  /// The parameters for the creation of the dashboard, which you want to use to override the default settings. A dashboard can have any type of parameters, and some parameters might accept multiple values. See parameters.
  late final Output<DashboardParameters> parameters;

  /// A set of resource permissions on the dashboard. Maximum of 64 items. See permissions.
  late final Output<List<DashboardPermission>?> permissions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The entity that you are using as a source when you create the dashboard (template). Only one of <span pulumi-lang-nodejs="`definition`" pulumi-lang-dotnet="`Definition`" pulumi-lang-go="`definition`" pulumi-lang-python="`definition`" pulumi-lang-yaml="`definition`" pulumi-lang-java="`definition`">`definition`</span> or <span pulumi-lang-nodejs="`sourceEntity`" pulumi-lang-dotnet="`SourceEntity`" pulumi-lang-go="`sourceEntity`" pulumi-lang-python="`source_entity`" pulumi-lang-yaml="`sourceEntity`" pulumi-lang-java="`sourceEntity`">`source_entity`</span> should be configured. See source_entity.
  late final Output<DashboardSourceEntity?> sourceEntity;

  /// Amazon Resource Name (ARN) of a template that was used to create this dashboard.
  late final Output<String> sourceEntityArn;

  /// The dashboard creation status.
  late final Output<String> status;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The Amazon Resource Name (ARN) of the theme that is being used for this dashboard. The theme ARN must exist in the same AWS account where you create the dashboard.
  late final Output<String?> themeArn;

  /// A description of the current dashboard version being created/updated.
  ///
  /// The following arguments are optional:
  late final Output<String> versionDescription;

  /// The version number of the dashboard version.
  late final Output<int> versionNumber;

  Dashboard2(
    String name, {
    DashboardArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/dashboard:Dashboard',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.awsAccountId = Output.createUnknown<String>();
    this.createdTime = Output.createUnknown<String>();
    this.dashboardId = Output.createUnknown<String>();
    this.dashboardPublishOptions =
        Output.createUnknown<DashboardDashboardPublishOptions>();
    this.lastPublishedTime = Output.createUnknown<String>();
    this.lastUpdatedTime = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.parameters = Output.createUnknown<DashboardParameters>();
    this.permissions = Output.createUnknown<List<DashboardPermission>?>();
    this.region = Output.createUnknown<String>();
    this.sourceEntity = Output.createUnknown<DashboardSourceEntity?>();
    this.sourceEntityArn = Output.createUnknown<String>();
    this.status = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.themeArn = Output.createUnknown<String?>();
    this.versionDescription = Output.createUnknown<String>();
    this.versionNumber = Output.createUnknown<int>();
  }
}
