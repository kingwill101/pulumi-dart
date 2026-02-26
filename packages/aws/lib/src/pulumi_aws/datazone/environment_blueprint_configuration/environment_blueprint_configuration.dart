import 'package:pulumi/pulumi.dart';
import 'environment_blueprint_configuration_args.dart';

/// Resource for managing an AWS DataZone Environment Blueprint Configuration.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.datazone.Domain("example", {
/// name: "example_domain",
/// domainExecutionRole: domainExecutionRole.arn,
/// });
/// const defaultDataLake = aws.datazone.getEnvironmentBlueprintOutput({
/// domainId: example.id,
/// name: "DefaultDataLake",
/// managed: true,
/// });
/// const exampleEnvironmentBlueprintConfiguration = new aws.datazone.EnvironmentBlueprintConfiguration("example", {
/// domainId: example.id,
/// environmentBlueprintId: defaultDataLake.apply(defaultDataLake => defaultDataLake.id),
/// enabledRegions: ["us-east-1"],
/// regionalParameters: {
/// "us-east-1": {
/// s3Location: "s3://my-amazon-datazone-bucket",
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.datazone.Domain("example",
/// name="example_domain",
/// domain_execution_role=domain_execution_role["arn"])
/// default_data_lake = aws.datazone.get_environment_blueprint_output(domain_id=example.id,
/// name="DefaultDataLake",
/// managed=True)
/// example_environment_blueprint_configuration = aws.datazone.EnvironmentBlueprintConfiguration("example",
/// domain_id=example.id,
/// environment_blueprint_id=default_data_lake.id,
/// enabled_regions=["us-east-1"],
/// regional_parameters={
/// "us-east-1": {
/// "s3Location": "s3://my-amazon-datazone-bucket",
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
/// var example = new Aws.DataZone.Domain("example", new()
/// {
/// Name = "example_domain",
/// DomainExecutionRole = domainExecutionRole.Arn,
/// });
///
/// var defaultDataLake = Aws.DataZone.GetEnvironmentBlueprint.Invoke(new()
/// {
/// DomainId = example.Id,
/// Name = "DefaultDataLake",
/// Managed = true,
/// });
///
/// var exampleEnvironmentBlueprintConfiguration = new Aws.DataZone.EnvironmentBlueprintConfiguration("example", new()
/// {
/// DomainId = example.Id,
/// EnvironmentBlueprintId = defaultDataLake.Apply(getEnvironmentBlueprintResult => getEnvironmentBlueprintResult.Id),
/// EnabledRegions = new[]
/// {
/// "us-east-1",
/// },
/// RegionalParameters =
/// {
/// { "us-east-1",
/// {
/// { "s3Location", "s3://my-amazon-datazone-bucket" },
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datazone"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := datazone.NewDomain(ctx, "example", &datazone.DomainArgs{
/// Name:                pulumi.String("example_domain"),
/// DomainExecutionRole: pulumi.Any(domainExecutionRole.Arn),
/// })
/// if err != nil {
/// return err
/// }
/// defaultDataLake := datazone.GetEnvironmentBlueprintOutput(ctx, datazone.GetEnvironmentBlueprintOutputArgs{
/// DomainId: example.ID(),
/// Name:     pulumi.String("DefaultDataLake"),
/// Managed:  pulumi.Bool(true),
/// }, nil)
/// _, err = datazone.NewEnvironmentBlueprintConfiguration(ctx, "example", &datazone.EnvironmentBlueprintConfigurationArgs{
/// DomainId: example.ID(),
/// EnvironmentBlueprintId: pulumi.String(defaultDataLake.ApplyT(func(defaultDataLake datazone.GetEnvironmentBlueprintResult) (*string, error) {
/// return &defaultDataLake.Id, nil
/// }).(pulumi.StringPtrOutput)),
/// EnabledRegions: pulumi.StringArray{
/// pulumi.String("us-east-1"),
/// },
/// RegionalParameters: pulumi.StringMapMap{
/// "us-east-1": pulumi.StringMap{
/// "s3Location": pulumi.String("s3://my-amazon-datazone-bucket"),
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
/// import com.pulumi.aws.datazone.Domain;
/// import com.pulumi.aws.datazone.DomainArgs;
/// import com.pulumi.aws.datazone.DatazoneFunctions;
/// import com.pulumi.aws.datazone.inputs.GetEnvironmentBlueprintArgs;
/// import com.pulumi.aws.datazone.EnvironmentBlueprintConfiguration;
/// import com.pulumi.aws.datazone.EnvironmentBlueprintConfigurationArgs;
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
/// var example = new Domain("example", DomainArgs.builder()
/// .name("example_domain")
/// .domainExecutionRole(domainExecutionRole.arn())
/// .build());
///
/// final var defaultDataLake = DatazoneFunctions.getEnvironmentBlueprint(GetEnvironmentBlueprintArgs.builder()
/// .domainId(example.id())
/// .name("DefaultDataLake")
/// .managed(true)
/// .build());
///
/// var exampleEnvironmentBlueprintConfiguration = new EnvironmentBlueprintConfiguration("exampleEnvironmentBlueprintConfiguration", EnvironmentBlueprintConfigurationArgs.builder()
/// .domainId(example.id())
/// .environmentBlueprintId(defaultDataLake.applyValue(_defaultDataLake -> _defaultDataLake.id()))
/// .enabledRegions("us-east-1")
/// .regionalParameters(Map.of("us-east-1", Map.of("s3Location", "s3://my-amazon-datazone-bucket")))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:datazone:Domain
/// properties:
/// name: example_domain
/// domainExecutionRole: ${domainExecutionRole.arn}
/// exampleEnvironmentBlueprintConfiguration:
/// type: aws:datazone:EnvironmentBlueprintConfiguration
/// name: example
/// properties:
/// domainId: ${example.id}
/// environmentBlueprintId: ${defaultDataLake.id}
/// enabledRegions:
/// - us-east-1
/// regionalParameters:
/// us-east-1:
/// s3Location: s3://my-amazon-datazone-bucket
/// variables:
/// defaultDataLake:
/// fn::invoke:
/// function: aws:datazone:getEnvironmentBlueprint
/// arguments:
/// domainId: ${example.id}
/// name: DefaultDataLake
/// managed: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import DataZone Environment Blueprint Configuration using the <span pulumi-lang-nodejs="`domainId`" pulumi-lang-dotnet="`DomainId`" pulumi-lang-go="`domainId`" pulumi-lang-python="`domain_id`" pulumi-lang-yaml="`domainId`" pulumi-lang-java="`domainId`">`domain_id`</span> and <span pulumi-lang-nodejs="`environmentBlueprintId`" pulumi-lang-dotnet="`EnvironmentBlueprintId`" pulumi-lang-go="`environmentBlueprintId`" pulumi-lang-python="`environment_blueprint_id`" pulumi-lang-yaml="`environmentBlueprintId`" pulumi-lang-java="`environmentBlueprintId`">`environment_blueprint_id`</span>, separated by a `/`. For example:
///
/// ```sh
/// $ pulumi import aws:datazone/environmentBlueprintConfiguration:EnvironmentBlueprintConfiguration example domain-id-12345/environment-blueprint-id-54321
/// ```
class EnvironmentBlueprintConfiguration extends CustomResource {
  /// ID of the Domain.
  late final Output<String> domainId;

  /// Regions in which the blueprint is enabled
  ///
  /// The following arguments are optional:
  late final Output<List<String>> enabledRegions;

  /// ID of the Environment Blueprint
  late final Output<String> environmentBlueprintId;

  /// ARN of the manage access role with which this blueprint is created.
  late final Output<String?> manageAccessRoleArn;

  /// ARN of the provisioning role with which this blueprint is created.
  late final Output<String?> provisioningRoleArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Parameters for each region in which the blueprint is enabled
  late final Output<Map<String, Map<String, String>>?> regionalParameters;

  EnvironmentBlueprintConfiguration(
    String name, {
    EnvironmentBlueprintConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:datazone/environmentBlueprintConfiguration:EnvironmentBlueprintConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.domainId = Output.createUnknown<String>();
    this.enabledRegions = Output.createUnknown<List<String>>();
    this.environmentBlueprintId = Output.createUnknown<String>();
    this.manageAccessRoleArn = Output.createUnknown<String?>();
    this.provisioningRoleArn = Output.createUnknown<String?>();
    this.region = Output.createUnknown<String>();
    this.regionalParameters =
        Output.createUnknown<Map<String, Map<String, String>>?>();
  }
}
