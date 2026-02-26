import 'package:pulumi/pulumi.dart';
import '../data_quality_job_definition_data_quality_app_specification/data_quality_job_definition_data_quality_app_specification.dart';
import '../data_quality_job_definition_data_quality_baseline_config/data_quality_job_definition_data_quality_baseline_config.dart';
import '../data_quality_job_definition_data_quality_job_input/data_quality_job_definition_data_quality_job_input.dart';
import '../data_quality_job_definition_data_quality_job_output_config/data_quality_job_definition_data_quality_job_output_config.dart';
import '../data_quality_job_definition_job_resources/data_quality_job_definition_job_resources.dart';
import '../data_quality_job_definition_network_config/data_quality_job_definition_network_config.dart';
import '../data_quality_job_definition_stopping_condition/data_quality_job_definition_stopping_condition.dart';
import 'data_quality_job_definition_args.dart';

/// Provides a SageMaker AI data quality job definition resource.
///
/// ## Example Usage
///
/// Basic usage:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.sagemaker.DataQualityJobDefinition("test", {
/// name: "my-data-quality-job-definition",
/// dataQualityAppSpecification: {
/// imageUri: monitor.registryPath,
/// },
/// dataQualityJobInput: {
/// endpointInput: {
/// endpointName: myEndpoint.name,
/// },
/// },
/// dataQualityJobOutputConfig: {
/// monitoringOutputs: {
/// s3Output: {
/// s3Uri: `https://${myBucket.bucketRegionalDomainName}/output`,
/// },
/// },
/// },
/// jobResources: {
/// clusterConfig: {
/// instanceCount: 1,
/// instanceType: "ml.t3.medium",
/// volumeSizeInGb: 20,
/// },
/// },
/// roleArn: myRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.sagemaker.DataQualityJobDefinition("test",
/// name="my-data-quality-job-definition",
/// data_quality_app_specification={
/// "image_uri": monitor["registryPath"],
/// },
/// data_quality_job_input={
/// "endpoint_input": {
/// "endpoint_name": my_endpoint["name"],
/// },
/// },
/// data_quality_job_output_config={
/// "monitoring_outputs": {
/// "s3_output": {
/// "s3_uri": f"https://{my_bucket['bucketRegionalDomainName']}/output",
/// },
/// },
/// },
/// job_resources={
/// "cluster_config": {
/// "instance_count": 1,
/// "instance_type": "ml.t3.medium",
/// "volume_size_in_gb": 20,
/// },
/// },
/// role_arn=my_role["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.Sagemaker.DataQualityJobDefinition("test", new()
/// {
/// Name = "my-data-quality-job-definition",
/// DataQualityAppSpecification = new Aws.Sagemaker.Inputs.DataQualityJobDefinitionDataQualityAppSpecificationArgs
/// {
/// ImageUri = monitor.RegistryPath,
/// },
/// DataQualityJobInput = new Aws.Sagemaker.Inputs.DataQualityJobDefinitionDataQualityJobInputArgs
/// {
/// EndpointInput = new Aws.Sagemaker.Inputs.DataQualityJobDefinitionDataQualityJobInputEndpointInputArgs
/// {
/// EndpointName = myEndpoint.Name,
/// },
/// },
/// DataQualityJobOutputConfig = new Aws.Sagemaker.Inputs.DataQualityJobDefinitionDataQualityJobOutputConfigArgs
/// {
/// MonitoringOutputs = new Aws.Sagemaker.Inputs.DataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputsArgs
/// {
/// S3Output = new Aws.Sagemaker.Inputs.DataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputsS3OutputArgs
/// {
/// S3Uri = $"https://{myBucket.BucketRegionalDomainName}/output",
/// },
/// },
/// },
/// JobResources = new Aws.Sagemaker.Inputs.DataQualityJobDefinitionJobResourcesArgs
/// {
/// ClusterConfig = new Aws.Sagemaker.Inputs.DataQualityJobDefinitionJobResourcesClusterConfigArgs
/// {
/// InstanceCount = 1,
/// InstanceType = "ml.t3.medium",
/// VolumeSizeInGb = 20,
/// },
/// },
/// RoleArn = myRole.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sagemaker.NewDataQualityJobDefinition(ctx, "test", &sagemaker.DataQualityJobDefinitionArgs{
/// Name: pulumi.String("my-data-quality-job-definition"),
/// DataQualityAppSpecification: &sagemaker.DataQualityJobDefinitionDataQualityAppSpecificationArgs{
/// ImageUri: pulumi.Any(monitor.RegistryPath),
/// },
/// DataQualityJobInput: &sagemaker.DataQualityJobDefinitionDataQualityJobInputArgs{
/// EndpointInput: &sagemaker.DataQualityJobDefinitionDataQualityJobInputEndpointInputArgs{
/// EndpointName: pulumi.Any(myEndpoint.Name),
/// },
/// },
/// DataQualityJobOutputConfig: &sagemaker.DataQualityJobDefinitionDataQualityJobOutputConfigArgs{
/// MonitoringOutputs: &sagemaker.DataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputsArgs{
/// S3Output: sagemaker.DataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputsS3OutputArgs{
/// S3Uri: pulumi.Sprintf("https://%v/output", myBucket.BucketRegionalDomainName),
/// },
/// },
/// },
/// JobResources: &sagemaker.DataQualityJobDefinitionJobResourcesArgs{
/// ClusterConfig: &sagemaker.DataQualityJobDefinitionJobResourcesClusterConfigArgs{
/// InstanceCount:  pulumi.Int(1),
/// InstanceType:   pulumi.String("ml.t3.medium"),
/// VolumeSizeInGb: pulumi.Int(20),
/// },
/// },
/// RoleArn: pulumi.Any(myRole.Arn),
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
/// import com.pulumi.aws.sagemaker.DataQualityJobDefinition;
/// import com.pulumi.aws.sagemaker.DataQualityJobDefinitionArgs;
/// import com.pulumi.aws.sagemaker.inputs.DataQualityJobDefinitionDataQualityAppSpecificationArgs;
/// import com.pulumi.aws.sagemaker.inputs.DataQualityJobDefinitionDataQualityJobInputArgs;
/// import com.pulumi.aws.sagemaker.inputs.DataQualityJobDefinitionDataQualityJobInputEndpointInputArgs;
/// import com.pulumi.aws.sagemaker.inputs.DataQualityJobDefinitionDataQualityJobOutputConfigArgs;
/// import com.pulumi.aws.sagemaker.inputs.DataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputsArgs;
/// import com.pulumi.aws.sagemaker.inputs.DataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputsS3OutputArgs;
/// import com.pulumi.aws.sagemaker.inputs.DataQualityJobDefinitionJobResourcesArgs;
/// import com.pulumi.aws.sagemaker.inputs.DataQualityJobDefinitionJobResourcesClusterConfigArgs;
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
/// var test = new DataQualityJobDefinition("test", DataQualityJobDefinitionArgs.builder()
/// .name("my-data-quality-job-definition")
/// .dataQualityAppSpecification(DataQualityJobDefinitionDataQualityAppSpecificationArgs.builder()
/// .imageUri(monitor.registryPath())
/// .build())
/// .dataQualityJobInput(DataQualityJobDefinitionDataQualityJobInputArgs.builder()
/// .endpointInput(DataQualityJobDefinitionDataQualityJobInputEndpointInputArgs.builder()
/// .endpointName(myEndpoint.name())
/// .build())
/// .build())
/// .dataQualityJobOutputConfig(DataQualityJobDefinitionDataQualityJobOutputConfigArgs.builder()
/// .monitoringOutputs(DataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputsArgs.builder()
/// .s3Output(DataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputsS3OutputArgs.builder()
/// .s3Uri(String.format("https://%s/output", myBucket.bucketRegionalDomainName()))
/// .build())
/// .build())
/// .build())
/// .jobResources(DataQualityJobDefinitionJobResourcesArgs.builder()
/// .clusterConfig(DataQualityJobDefinitionJobResourcesClusterConfigArgs.builder()
/// .instanceCount(1)
/// .instanceType("ml.t3.medium")
/// .volumeSizeInGb(20)
/// .build())
/// .build())
/// .roleArn(myRole.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:sagemaker:DataQualityJobDefinition
/// properties:
/// name: my-data-quality-job-definition
/// dataQualityAppSpecification:
/// imageUri: ${monitor.registryPath}
/// dataQualityJobInput:
/// endpointInput:
/// endpointName: ${myEndpoint.name}
/// dataQualityJobOutputConfig:
/// monitoringOutputs:
/// s3Output:
/// s3Uri: https://${myBucket.bucketRegionalDomainName}/output
/// jobResources:
/// clusterConfig:
/// instanceCount: 1
/// instanceType: ml.t3.medium
/// volumeSizeInGb: 20
/// roleArn: ${myRole.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import data quality job definitions using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/dataQualityJobDefinition:DataQualityJobDefinition test_data_quality_job_definition data-quality-job-definition-foo
/// ```
class DataQualityJobDefinition extends CustomResource {
  /// The Amazon Resource Name (ARN) assigned by AWS to this data quality job definition.
  late final Output<String> arn;

  /// Specifies the container that runs the monitoring job. Fields are documented below.
  late final Output<DataQualityJobDefinitionDataQualityAppSpecification>
      dataQualityAppSpecification;

  /// Configures the constraints and baselines for the monitoring job. Fields are documented below.
  late final Output<DataQualityJobDefinitionDataQualityBaselineConfig?>
      dataQualityBaselineConfig;

  /// A list of inputs for the monitoring job. Fields are documented below.
  late final Output<DataQualityJobDefinitionDataQualityJobInput>
      dataQualityJobInput;

  /// The output configuration for monitoring jobs. Fields are documented below.
  late final Output<DataQualityJobDefinitionDataQualityJobOutputConfig>
      dataQualityJobOutputConfig;

  /// Identifies the resources to deploy for a monitoring job. Fields are documented below.
  late final Output<DataQualityJobDefinitionJobResources> jobResources;

  /// The name of the data quality job definition. If omitted, the provider will assign a random, unique name.
  late final Output<String> name;

  /// Specifies networking configuration for the monitoring job. Fields are documented below.
  late final Output<DataQualityJobDefinitionNetworkConfig?> networkConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker AI can assume to perform tasks on your behalf.
  late final Output<String> roleArn;

  /// A time limit for how long the monitoring job is allowed to run before stopping. Fields are documented below.
  late final Output<DataQualityJobDefinitionStoppingCondition>
      stoppingCondition;

  /// A mapping of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  DataQualityJobDefinition(
    String name, {
    DataQualityJobDefinitionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/dataQualityJobDefinition:DataQualityJobDefinition',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.dataQualityAppSpecification = Output.createUnknown<
        DataQualityJobDefinitionDataQualityAppSpecification>();
    this.dataQualityBaselineConfig = Output.createUnknown<
        DataQualityJobDefinitionDataQualityBaselineConfig?>();
    this.dataQualityJobInput =
        Output.createUnknown<DataQualityJobDefinitionDataQualityJobInput>();
    this.dataQualityJobOutputConfig = Output.createUnknown<
        DataQualityJobDefinitionDataQualityJobOutputConfig>();
    this.jobResources =
        Output.createUnknown<DataQualityJobDefinitionJobResources>();
    this.name = Output.createUnknown<String>();
    this.networkConfig =
        Output.createUnknown<DataQualityJobDefinitionNetworkConfig?>();
    this.region = Output.createUnknown<String>();
    this.roleArn = Output.createUnknown<String>();
    this.stoppingCondition =
        Output.createUnknown<DataQualityJobDefinitionStoppingCondition>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
