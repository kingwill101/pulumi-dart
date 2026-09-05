import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_quality_job_definition_args.dart';
import 'data_quality_job_definition_data_quality_app_specification.dart';
import 'data_quality_job_definition_data_quality_baseline_config.dart';
import 'data_quality_job_definition_data_quality_job_input.dart';
import 'data_quality_job_definition_data_quality_job_output_config.dart';
import 'data_quality_job_definition_job_resources.dart';
import 'data_quality_job_definition_network_config.dart';
import 'data_quality_job_definition_state.dart';
import 'data_quality_job_definition_stopping_condition.dart';

/// Provides a SageMaker AI data quality job definition resource.
///
/// ## Example Usage
///
/// Basic usage:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.sagemaker.DataQualityJobDefinition("test", {
///     dataQualityAppSpecification: {
///         imageUri: monitor.registryPath,
///     },
///     dataQualityJobInput: {
///         endpointInput: {
///             endpointName: myEndpoint.name,
///         },
///     },
///     dataQualityJobOutputConfig: {
///         monitoringOutputs: {
///             s3Output: {
///                 s3Uri: `https://${myBucket.bucketRegionalDomainName}/output`,
///             },
///         },
///     },
///     jobResources: {
///         clusterConfig: {
///             instanceCount: 1,
///             instanceType: "ml.t3.medium",
///             volumeSizeInGb: 20,
///         },
///     },
///     name: "my-data-quality-job-definition",
///     roleArn: myRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.sagemaker.DataQualityJobDefinition("test",
///     data_quality_app_specification={
///         "image_uri": monitor["registryPath"],
///     },
///     data_quality_job_input={
///         "endpoint_input": {
///             "endpoint_name": my_endpoint["name"],
///         },
///     },
///     data_quality_job_output_config={
///         "monitoring_outputs": {
///             "s3_output": {
///                 "s3_uri": f"https://{my_bucket['bucketRegionalDomainName']}/output",
///             },
///         },
///     },
///     job_resources={
///         "cluster_config": {
///             "instance_count": 1,
///             "instance_type": "ml.t3.medium",
///             "volume_size_in_gb": 20,
///         },
///     },
///     name="my-data-quality-job-definition",
///     role_arn=my_role["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Sagemaker.DataQualityJobDefinition("test", new()
///     {
///         DataQualityAppSpecification = new Aws.Sagemaker.Inputs.DataQualityJobDefinitionDataQualityAppSpecificationArgs
///         {
///             ImageUri = monitor.RegistryPath,
///         },
///         DataQualityJobInput = new Aws.Sagemaker.Inputs.DataQualityJobDefinitionDataQualityJobInputArgs
///         {
///             EndpointInput = new Aws.Sagemaker.Inputs.DataQualityJobDefinitionDataQualityJobInputEndpointInputArgs
///             {
///                 EndpointName = myEndpoint.Name,
///             },
///         },
///         DataQualityJobOutputConfig = new Aws.Sagemaker.Inputs.DataQualityJobDefinitionDataQualityJobOutputConfigArgs
///         {
///             MonitoringOutputs = new Aws.Sagemaker.Inputs.DataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputsArgs
///             {
///                 S3Output = new Aws.Sagemaker.Inputs.DataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputsS3OutputArgs
///                 {
///                     S3Uri = $"https://{myBucket.BucketRegionalDomainName}/output",
///                 },
///             },
///         },
///         JobResources = new Aws.Sagemaker.Inputs.DataQualityJobDefinitionJobResourcesArgs
///         {
///             ClusterConfig = new Aws.Sagemaker.Inputs.DataQualityJobDefinitionJobResourcesClusterConfigArgs
///             {
///                 InstanceCount = 1,
///                 InstanceType = "ml.t3.medium",
///                 VolumeSizeInGb = 20,
///             },
///         },
///         Name = "my-data-quality-job-definition",
///         RoleArn = myRole.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sagemaker.NewDataQualityJobDefinition(ctx, "test", &sagemaker.DataQualityJobDefinitionArgs{
/// 			DataQualityAppSpecification: &sagemaker.DataQualityJobDefinitionDataQualityAppSpecificationArgs{
/// 				ImageUri: pulumi.Any(monitor.RegistryPath),
/// 			},
/// 			DataQualityJobInput: &sagemaker.DataQualityJobDefinitionDataQualityJobInputArgs{
/// 				EndpointInput: &sagemaker.DataQualityJobDefinitionDataQualityJobInputEndpointInputArgs{
/// 					EndpointName: pulumi.Any(myEndpoint.Name),
/// 				},
/// 			},
/// 			DataQualityJobOutputConfig: &sagemaker.DataQualityJobDefinitionDataQualityJobOutputConfigArgs{
/// 				MonitoringOutputs: &sagemaker.DataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputsArgs{
/// 					S3Output: sagemaker.DataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputsS3OutputArgs{
/// 						S3Uri: pulumi.Sprintf("https://%v/output", myBucket.BucketRegionalDomainName),
/// 					},
/// 				},
/// 			},
/// 			JobResources: &sagemaker.DataQualityJobDefinitionJobResourcesArgs{
/// 				ClusterConfig: &sagemaker.DataQualityJobDefinitionJobResourcesClusterConfigArgs{
/// 					InstanceCount:  pulumi.Int(1),
/// 					InstanceType:   pulumi.String("ml.t3.medium"),
/// 					VolumeSizeInGb: pulumi.Int(20),
/// 				},
/// 			},
/// 			Name:    pulumi.String("my-data-quality-job-definition"),
/// 			RoleArn: pulumi.Any(myRole.Arn),
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
/// resource "aws_sagemaker_dataqualityjobdefinition" "test" {
///   data_quality_app_specification = {
///     image_uri = monitor.registryPath
///   }
///   data_quality_job_input = {
///     endpoint_input = {
///       endpoint_name = myEndpoint.name
///     }
///   }
///   data_quality_job_output_config = {
///     monitoring_outputs = {
///       s3_output = {
///         s3_uri ="https://${myBucket.bucketRegionalDomainName}/output"
///       }
///     }
///   }
///   job_resources = {
///     cluster_config = {
///       instance_count    = 1
///       instance_type     = "ml.t3.medium"
///       volume_size_in_gb = 20
///     }
///   }
///   name     = "my-data-quality-job-definition"
///   role_arn = myRole.arn
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
///         var test = new DataQualityJobDefinition("test", DataQualityJobDefinitionArgs.builder()
///             .dataQualityAppSpecification(DataQualityJobDefinitionDataQualityAppSpecificationArgs.builder()
///                 .imageUri(monitor.registryPath())
///                 .build())
///             .dataQualityJobInput(DataQualityJobDefinitionDataQualityJobInputArgs.builder()
///                 .endpointInput(DataQualityJobDefinitionDataQualityJobInputEndpointInputArgs.builder()
///                     .endpointName(myEndpoint.name())
///                     .build())
///                 .build())
///             .dataQualityJobOutputConfig(DataQualityJobDefinitionDataQualityJobOutputConfigArgs.builder()
///                 .monitoringOutputs(DataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputsArgs.builder()
///                     .s3Output(DataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputsS3OutputArgs.builder()
///                         .s3Uri(String.format("https://%s/output", myBucket.bucketRegionalDomainName()))
///                         .build())
///                     .build())
///                 .build())
///             .jobResources(DataQualityJobDefinitionJobResourcesArgs.builder()
///                 .clusterConfig(DataQualityJobDefinitionJobResourcesClusterConfigArgs.builder()
///                     .instanceCount(1)
///                     .instanceType("ml.t3.medium")
///                     .volumeSizeInGb(20)
///                     .build())
///                 .build())
///             .name("my-data-quality-job-definition")
///             .roleArn(myRole.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:sagemaker:DataQualityJobDefinition
///     properties:
///       dataQualityAppSpecification:
///         imageUri: ${monitor.registryPath}
///       dataQualityJobInput:
///         endpointInput:
///           endpointName: ${myEndpoint.name}
///       dataQualityJobOutputConfig:
///         monitoringOutputs:
///           s3Output:
///             s3Uri: https://${myBucket.bucketRegionalDomainName}/output
///       jobResources:
///         clusterConfig:
///           instanceCount: 1
///           instanceType: ml.t3.medium
///           volumeSizeInGb: 20
///       name: my-data-quality-job-definition
///       roleArn: ${myRole.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import data quality job definitions using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/dataQualityJobDefinition:DataQualityJobDefinition test_data_quality_job_definition data-quality-job-definition-foo
/// ```
class DataQualityJobDefinition extends pulumi.CustomResource {
  /// ARN assigned by AWS to this data quality job definition.
  late final pulumi.Output<String> arn;
  /// Specifies the container that runs the monitoring job. Fields are documented below.
  late final pulumi.Output<DataQualityJobDefinitionDataQualityAppSpecification> dataQualityAppSpecification;
  /// Configures the constraints and baselines for the monitoring job. Fields are documented below.
  late final pulumi.Output<DataQualityJobDefinitionDataQualityBaselineConfig?> dataQualityBaselineConfig;
  /// A list of inputs for the monitoring job. Fields are documented below.
  late final pulumi.Output<DataQualityJobDefinitionDataQualityJobInput> dataQualityJobInput;
  /// The output configuration for monitoring jobs. Fields are documented below.
  late final pulumi.Output<DataQualityJobDefinitionDataQualityJobOutputConfig> dataQualityJobOutputConfig;
  /// Identifies the resources to deploy for a monitoring job. Fields are documented below.
  late final pulumi.Output<DataQualityJobDefinitionJobResources> jobResources;
  /// The name of the data quality job definition. If omitted, the provider will assign a random, unique name.
  late final pulumi.Output<String> name;
  /// Specifies networking configuration for the monitoring job. Fields are documented below.
  late final pulumi.Output<DataQualityJobDefinitionNetworkConfig?> networkConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of an IAM role that Amazon SageMaker AI can assume to perform tasks on your behalf.
  late final pulumi.Output<String> roleArn;
  /// A time limit for how long the monitoring job is allowed to run before stopping. Fields are documented below.
  late final pulumi.Output<DataQualityJobDefinitionStoppingCondition> stoppingCondition;
  /// A mapping of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [DataQualityJobDefinition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataQualityJobDefinition]. {@macro pulumi_sagemaker_data_quality_job_definition_data_quality_job_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataQualityJobDefinition(
    String name, {
    DataQualityJobDefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/dataQualityJobDefinition:DataQualityJobDefinition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    dataQualityAppSpecification = registerOutput<DataQualityJobDefinitionDataQualityAppSpecification>('dataQualityAppSpecification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataQualityJobDefinitionDataQualityAppSpecification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataQualityBaselineConfig = registerOutput<DataQualityJobDefinitionDataQualityBaselineConfig?>('dataQualityBaselineConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataQualityJobDefinitionDataQualityBaselineConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataQualityJobInput = registerOutput<DataQualityJobDefinitionDataQualityJobInput>('dataQualityJobInput', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataQualityJobDefinitionDataQualityJobInput.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataQualityJobOutputConfig = registerOutput<DataQualityJobDefinitionDataQualityJobOutputConfig>('dataQualityJobOutputConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataQualityJobDefinitionDataQualityJobOutputConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    jobResources = registerOutput<DataQualityJobDefinitionJobResources>('jobResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataQualityJobDefinitionJobResources.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    networkConfig = registerOutput<DataQualityJobDefinitionNetworkConfig?>('networkConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataQualityJobDefinitionNetworkConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    stoppingCondition = registerOutput<DataQualityJobDefinitionStoppingCondition>('stoppingCondition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataQualityJobDefinitionStoppingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [DataQualityJobDefinition] resource's state with the given [name] and [id].
  static DataQualityJobDefinition get(
    String name,
    pulumi.Input<String> id, {
    DataQualityJobDefinitionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DataQualityJobDefinition._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DataQualityJobDefinition._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/dataQualityJobDefinition:DataQualityJobDefinition',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    dataQualityAppSpecification = registerOutput<DataQualityJobDefinitionDataQualityAppSpecification>('dataQualityAppSpecification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataQualityJobDefinitionDataQualityAppSpecification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataQualityBaselineConfig = registerOutput<DataQualityJobDefinitionDataQualityBaselineConfig?>('dataQualityBaselineConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataQualityJobDefinitionDataQualityBaselineConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataQualityJobInput = registerOutput<DataQualityJobDefinitionDataQualityJobInput>('dataQualityJobInput', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataQualityJobDefinitionDataQualityJobInput.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataQualityJobOutputConfig = registerOutput<DataQualityJobDefinitionDataQualityJobOutputConfig>('dataQualityJobOutputConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataQualityJobDefinitionDataQualityJobOutputConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    jobResources = registerOutput<DataQualityJobDefinitionJobResources>('jobResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataQualityJobDefinitionJobResources.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    networkConfig = registerOutput<DataQualityJobDefinitionNetworkConfig?>('networkConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataQualityJobDefinitionNetworkConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    stoppingCondition = registerOutput<DataQualityJobDefinitionStoppingCondition>('stoppingCondition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataQualityJobDefinitionStoppingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [DataQualityJobDefinition] resource.
  DataQualityJobDefinition.reference(String urn)
    : super(
        'aws:sagemaker/dataQualityJobDefinition:DataQualityJobDefinition',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    dataQualityAppSpecification = registerOutput<DataQualityJobDefinitionDataQualityAppSpecification>('dataQualityAppSpecification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataQualityJobDefinitionDataQualityAppSpecification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataQualityBaselineConfig = registerOutput<DataQualityJobDefinitionDataQualityBaselineConfig?>('dataQualityBaselineConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataQualityJobDefinitionDataQualityBaselineConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataQualityJobInput = registerOutput<DataQualityJobDefinitionDataQualityJobInput>('dataQualityJobInput', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataQualityJobDefinitionDataQualityJobInput.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataQualityJobOutputConfig = registerOutput<DataQualityJobDefinitionDataQualityJobOutputConfig>('dataQualityJobOutputConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataQualityJobDefinitionDataQualityJobOutputConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    jobResources = registerOutput<DataQualityJobDefinitionJobResources>('jobResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataQualityJobDefinitionJobResources.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    networkConfig = registerOutput<DataQualityJobDefinitionNetworkConfig?>('networkConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataQualityJobDefinitionNetworkConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    stoppingCondition = registerOutput<DataQualityJobDefinitionStoppingCondition>('stoppingCondition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataQualityJobDefinitionStoppingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
