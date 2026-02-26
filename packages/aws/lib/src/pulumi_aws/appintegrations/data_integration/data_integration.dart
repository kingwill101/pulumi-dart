import 'package:pulumi/pulumi.dart';
import '../data_integration_schedule_config/data_integration_schedule_config.dart';
import 'data_integration_args.dart';

/// Provides an Amazon AppIntegrations Data Integration resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.appintegrations.DataIntegration("example", {
/// name: "example",
/// description: "example",
/// kmsKey: test.arn,
/// sourceUri: "Salesforce://AppFlow/example",
/// scheduleConfig: {
/// firstExecutionFrom: "1439788442681",
/// object: "Account",
/// scheduleExpression: "rate(1 hour)",
/// },
/// tags: {
/// Key1: "Value1",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appintegrations.DataIntegration("example",
/// name="example",
/// description="example",
/// kms_key=test["arn"],
/// source_uri="Salesforce://AppFlow/example",
/// schedule_config={
/// "first_execution_from": "1439788442681",
/// "object": "Account",
/// "schedule_expression": "rate(1 hour)",
/// },
/// tags={
/// "Key1": "Value1",
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
/// var example = new Aws.AppIntegrations.DataIntegration("example", new()
/// {
/// Name = "example",
/// Description = "example",
/// KmsKey = test.Arn,
/// SourceUri = "Salesforce://AppFlow/example",
/// ScheduleConfig = new Aws.AppIntegrations.Inputs.DataIntegrationScheduleConfigArgs
/// {
/// FirstExecutionFrom = "1439788442681",
/// Object = "Account",
/// ScheduleExpression = "rate(1 hour)",
/// },
/// Tags =
/// {
/// { "Key1", "Value1" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appintegrations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := appintegrations.NewDataIntegration(ctx, "example", &appintegrations.DataIntegrationArgs{
/// Name:        pulumi.String("example"),
/// Description: pulumi.String("example"),
/// KmsKey:      pulumi.Any(test.Arn),
/// SourceUri:   pulumi.String("Salesforce://AppFlow/example"),
/// ScheduleConfig: &appintegrations.DataIntegrationScheduleConfigArgs{
/// FirstExecutionFrom: pulumi.String("1439788442681"),
/// Object:             pulumi.String("Account"),
/// ScheduleExpression: pulumi.String("rate(1 hour)"),
/// },
/// Tags: pulumi.StringMap{
/// "Key1": pulumi.String("Value1"),
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
/// import com.pulumi.aws.appintegrations.DataIntegration;
/// import com.pulumi.aws.appintegrations.DataIntegrationArgs;
/// import com.pulumi.aws.appintegrations.inputs.DataIntegrationScheduleConfigArgs;
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
/// var example = new DataIntegration("example", DataIntegrationArgs.builder()
/// .name("example")
/// .description("example")
/// .kmsKey(test.arn())
/// .sourceUri("Salesforce://AppFlow/example")
/// .scheduleConfig(DataIntegrationScheduleConfigArgs.builder()
/// .firstExecutionFrom("1439788442681")
/// .object("Account")
/// .scheduleExpression("rate(1 hour)")
/// .build())
/// .tags(Map.of("Key1", "Value1"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:appintegrations:DataIntegration
/// properties:
/// name: example
/// description: example
/// kmsKey: ${test.arn}
/// sourceUri: Salesforce://AppFlow/example
/// scheduleConfig:
/// firstExecutionFrom: '1439788442681'
/// object: Account
/// scheduleExpression: rate(1 hour)
/// tags:
/// Key1: Value1
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Amazon AppIntegrations Data Integrations using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:appintegrations/dataIntegration:DataIntegration example 12345678-1234-1234-1234-123456789123
/// ```
class DataIntegration extends CustomResource {
  /// The Amazon Resource Name (ARN) of the Data Integration.
  late final Output<String> arn;

  /// Specifies the description of the Data Integration.
  late final Output<String?> description;

  /// Specifies the KMS key Amazon Resource Name (ARN) for the Data Integration.
  late final Output<String> kmsKey;

  /// Specifies the name of the Data Integration.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A block that defines the name of the data and how often it should be pulled from the source. The Schedule Config block is documented below.
  late final Output<DataIntegrationScheduleConfig> scheduleConfig;

  /// Specifies the URI of the data source. Create an AppFlow Connector Profile and reference the name of the profile in the URL. An example of this value for Salesforce is `Salesforce://AppFlow/example` where <span pulumi-lang-nodejs="`example`" pulumi-lang-dotnet="`Example`" pulumi-lang-go="`example`" pulumi-lang-python="`example`" pulumi-lang-yaml="`example`" pulumi-lang-java="`example`">`example`</span> is the name of the AppFlow Connector Profile.
  late final Output<String> sourceUri;

  /// Tags to apply to the Data Integration. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  DataIntegration(
    String name, {
    DataIntegrationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appintegrations/dataIntegration:DataIntegration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.kmsKey = registerOutput<String>('kmsKey');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.scheduleConfig =
        registerOutput<DataIntegrationScheduleConfig>('scheduleConfig');
    this.sourceUri = registerOutput<String>('sourceUri');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
