import 'package:pulumi/pulumi.dart';
import '../infrastructure_configuration_instance_metadata_options/infrastructure_configuration_instance_metadata_options.dart';
import '../infrastructure_configuration_logging/infrastructure_configuration_logging.dart';
import '../infrastructure_configuration_placement/infrastructure_configuration_placement.dart';
import 'infrastructure_configuration_args.dart';

/// Manages an Image Builder Infrastructure Configuration.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.imagebuilder.InfrastructureConfiguration("example", {
/// description: "example description",
/// instanceProfileName: exampleAwsIamInstanceProfile.name,
/// instanceTypes: [
/// "t2.nano",
/// "t3.micro",
/// ],
/// keyPair: exampleAwsKeyPair.keyName,
/// name: "example",
/// securityGroupIds: [exampleAwsSecurityGroup.id],
/// snsTopicArn: exampleAwsSnsTopic.arn,
/// subnetId: main.id,
/// terminateInstanceOnFailure: true,
/// logging: {
/// s3Logs: {
/// s3BucketName: exampleAwsS3Bucket.bucket,
/// s3KeyPrefix: "logs",
/// },
/// },
/// tags: {
/// foo: "bar",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.imagebuilder.InfrastructureConfiguration("example",
/// description="example description",
/// instance_profile_name=example_aws_iam_instance_profile["name"],
/// instance_types=[
/// "t2.nano",
/// "t3.micro",
/// ],
/// key_pair=example_aws_key_pair["keyName"],
/// name="example",
/// security_group_ids=[example_aws_security_group["id"]],
/// sns_topic_arn=example_aws_sns_topic["arn"],
/// subnet_id=main["id"],
/// terminate_instance_on_failure=True,
/// logging={
/// "s3_logs": {
/// "s3_bucket_name": example_aws_s3_bucket["bucket"],
/// "s3_key_prefix": "logs",
/// },
/// },
/// tags={
/// "foo": "bar",
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
/// var example = new Aws.ImageBuilder.InfrastructureConfiguration("example", new()
/// {
/// Description = "example description",
/// InstanceProfileName = exampleAwsIamInstanceProfile.Name,
/// InstanceTypes = new[]
/// {
/// "t2.nano",
/// "t3.micro",
/// },
/// KeyPair = exampleAwsKeyPair.KeyName,
/// Name = "example",
/// SecurityGroupIds = new[]
/// {
/// exampleAwsSecurityGroup.Id,
/// },
/// SnsTopicArn = exampleAwsSnsTopic.Arn,
/// SubnetId = main.Id,
/// TerminateInstanceOnFailure = true,
/// Logging = new Aws.ImageBuilder.Inputs.InfrastructureConfigurationLoggingArgs
/// {
/// S3Logs = new Aws.ImageBuilder.Inputs.InfrastructureConfigurationLoggingS3LogsArgs
/// {
/// S3BucketName = exampleAwsS3Bucket.Bucket,
/// S3KeyPrefix = "logs",
/// },
/// },
/// Tags =
/// {
/// { "foo", "bar" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/imagebuilder"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := imagebuilder.NewInfrastructureConfiguration(ctx, "example", &imagebuilder.InfrastructureConfigurationArgs{
/// Description:         pulumi.String("example description"),
/// InstanceProfileName: pulumi.Any(exampleAwsIamInstanceProfile.Name),
/// InstanceTypes: pulumi.StringArray{
/// pulumi.String("t2.nano"),
/// pulumi.String("t3.micro"),
/// },
/// KeyPair: pulumi.Any(exampleAwsKeyPair.KeyName),
/// Name:    pulumi.String("example"),
/// SecurityGroupIds: pulumi.StringArray{
/// exampleAwsSecurityGroup.Id,
/// },
/// SnsTopicArn:                pulumi.Any(exampleAwsSnsTopic.Arn),
/// SubnetId:                   pulumi.Any(main.Id),
/// TerminateInstanceOnFailure: pulumi.Bool(true),
/// Logging: &imagebuilder.InfrastructureConfigurationLoggingArgs{
/// S3Logs: &imagebuilder.InfrastructureConfigurationLoggingS3LogsArgs{
/// S3BucketName: pulumi.Any(exampleAwsS3Bucket.Bucket),
/// S3KeyPrefix:  pulumi.String("logs"),
/// },
/// },
/// Tags: pulumi.StringMap{
/// "foo": pulumi.String("bar"),
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
/// import com.pulumi.aws.imagebuilder.InfrastructureConfiguration;
/// import com.pulumi.aws.imagebuilder.InfrastructureConfigurationArgs;
/// import com.pulumi.aws.imagebuilder.inputs.InfrastructureConfigurationLoggingArgs;
/// import com.pulumi.aws.imagebuilder.inputs.InfrastructureConfigurationLoggingS3LogsArgs;
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
/// var example = new InfrastructureConfiguration("example", InfrastructureConfigurationArgs.builder()
/// .description("example description")
/// .instanceProfileName(exampleAwsIamInstanceProfile.name())
/// .instanceTypes(
/// "t2.nano",
/// "t3.micro")
/// .keyPair(exampleAwsKeyPair.keyName())
/// .name("example")
/// .securityGroupIds(exampleAwsSecurityGroup.id())
/// .snsTopicArn(exampleAwsSnsTopic.arn())
/// .subnetId(main.id())
/// .terminateInstanceOnFailure(true)
/// .logging(InfrastructureConfigurationLoggingArgs.builder()
/// .s3Logs(InfrastructureConfigurationLoggingS3LogsArgs.builder()
/// .s3BucketName(exampleAwsS3Bucket.bucket())
/// .s3KeyPrefix("logs")
/// .build())
/// .build())
/// .tags(Map.of("foo", "bar"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:imagebuilder:InfrastructureConfiguration
/// properties:
/// description: example description
/// instanceProfileName: ${exampleAwsIamInstanceProfile.name}
/// instanceTypes:
/// - t2.nano
/// - t3.micro
/// keyPair: ${exampleAwsKeyPair.keyName}
/// name: example
/// securityGroupIds:
/// - ${exampleAwsSecurityGroup.id}
/// snsTopicArn: ${exampleAwsSnsTopic.arn}
/// subnetId: ${main.id}
/// terminateInstanceOnFailure: true
/// logging:
/// s3Logs:
/// s3BucketName: ${exampleAwsS3Bucket.bucket}
/// s3KeyPrefix: logs
/// tags:
/// foo: bar
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the Image Builder infrastructure configuration.
///
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.imagebuilder.InfrastructureConfiguration`" pulumi-lang-dotnet="`aws.imagebuilder.InfrastructureConfiguration`" pulumi-lang-go="`imagebuilder.InfrastructureConfiguration`" pulumi-lang-python="`imagebuilder.InfrastructureConfiguration`" pulumi-lang-yaml="`aws.imagebuilder.InfrastructureConfiguration`" pulumi-lang-java="`aws.imagebuilder.InfrastructureConfiguration`">`aws.imagebuilder.InfrastructureConfiguration`</span> using the Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:imagebuilder/infrastructureConfiguration:InfrastructureConfiguration example arn:aws:imagebuilder:us-east-1:123456789012:infrastructure-configuration/example
/// ```
class InfrastructureConfiguration extends CustomResource {
  /// Amazon Resource Name (ARN) of the configuration.
  late final Output<String> arn;

  /// Date when the configuration was created.
  late final Output<String> dateCreated;

  /// Date when the configuration was updated.
  late final Output<String> dateUpdated;

  /// Description for the configuration.
  late final Output<String?> description;

  /// Configuration block with instance metadata options for the HTTP requests that pipeline builds use to launch EC2 build and test instances. Detailed below.
  late final Output<InfrastructureConfigurationInstanceMetadataOptions?>
      instanceMetadataOptions;

  /// Name of IAM Instance Profile.
  late final Output<String> instanceProfileName;

  /// Set of EC2 Instance Types.
  late final Output<List<String>?> instanceTypes;

  /// Name of EC2 Key Pair.
  late final Output<String?> keyPair;

  /// Configuration block with logging settings. Detailed below.
  late final Output<InfrastructureConfigurationLogging?> logging;

  /// Name for the configuration.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Configuration block with placement settings that define where the instances that are launched from your image will run. Detailed below.
  late final Output<InfrastructureConfigurationPlacement?> placement;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags to assign to infrastructure created by the configuration.
  late final Output<Map<String, String>?> resourceTags;

  /// Set of EC2 Security Group identifiers.
  late final Output<List<String>?> securityGroupIds;

  /// Amazon Resource Name (ARN) of SNS Topic.
  late final Output<String?> snsTopicArn;

  /// EC2 Subnet identifier. Also requires <span pulumi-lang-nodejs="`securityGroupIds`" pulumi-lang-dotnet="`SecurityGroupIds`" pulumi-lang-go="`securityGroupIds`" pulumi-lang-python="`security_group_ids`" pulumi-lang-yaml="`securityGroupIds`" pulumi-lang-java="`securityGroupIds`">`security_group_ids`</span> argument.
  late final Output<String?> subnetId;

  /// Key-value map of resource tags to assign to the configuration. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Enable if the instance should be terminated when the pipeline fails. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> terminateInstanceOnFailure;

  InfrastructureConfiguration(
    String name, {
    InfrastructureConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:imagebuilder/infrastructureConfiguration:InfrastructureConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.dateCreated = registerOutput<String>('dateCreated');
    this.dateUpdated = registerOutput<String>('dateUpdated');
    this.description = registerOutput<String?>('description');
    this.instanceMetadataOptions =
        registerOutput<InfrastructureConfigurationInstanceMetadataOptions?>(
            'instanceMetadataOptions');
    this.instanceProfileName = registerOutput<String>('instanceProfileName');
    this.instanceTypes = registerOutput<List<String>?>('instanceTypes');
    this.keyPair = registerOutput<String?>('keyPair');
    this.logging =
        registerOutput<InfrastructureConfigurationLogging?>('logging');
    this.name = registerOutput<String>('name');
    this.placement =
        registerOutput<InfrastructureConfigurationPlacement?>('placement');
    this.region = registerOutput<String>('region');
    this.resourceTags = registerOutput<Map<String, String>?>('resourceTags');
    this.securityGroupIds = registerOutput<List<String>?>('securityGroupIds');
    this.snsTopicArn = registerOutput<String?>('snsTopicArn');
    this.subnetId = registerOutput<String?>('subnetId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.terminateInstanceOnFailure =
        registerOutput<bool?>('terminateInstanceOnFailure');
  }
}
