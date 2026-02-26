import 'package:pulumi/pulumi.dart';
import '../device_fleet_output_config/device_fleet_output_config.dart';
import 'device_fleet_args.dart';

/// Provides a SageMaker AI Device Fleet resource.
///
/// ## Example Usage
///
/// ### Basic usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sagemaker.DeviceFleet("example", {
/// deviceFleetName: "example",
/// roleArn: test.arn,
/// outputConfig: {
/// s3OutputLocation: `s3://${exampleAwsS3Bucket.bucket}/prefix/`,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.DeviceFleet("example",
/// device_fleet_name="example",
/// role_arn=test["arn"],
/// output_config={
/// "s3_output_location": f"s3://{example_aws_s3_bucket['bucket']}/prefix/",
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
/// var example = new Aws.Sagemaker.DeviceFleet("example", new()
/// {
/// DeviceFleetName = "example",
/// RoleArn = test.Arn,
/// OutputConfig = new Aws.Sagemaker.Inputs.DeviceFleetOutputConfigArgs
/// {
/// S3OutputLocation = $"s3://{exampleAwsS3Bucket.Bucket}/prefix/",
/// },
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
/// _, err := sagemaker.NewDeviceFleet(ctx, "example", &sagemaker.DeviceFleetArgs{
/// DeviceFleetName: pulumi.String("example"),
/// RoleArn:         pulumi.Any(test.Arn),
/// OutputConfig: &sagemaker.DeviceFleetOutputConfigArgs{
/// S3OutputLocation: pulumi.Sprintf("s3://%v/prefix/", exampleAwsS3Bucket.Bucket),
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
/// import com.pulumi.aws.sagemaker.DeviceFleet;
/// import com.pulumi.aws.sagemaker.DeviceFleetArgs;
/// import com.pulumi.aws.sagemaker.inputs.DeviceFleetOutputConfigArgs;
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
/// var example = new DeviceFleet("example", DeviceFleetArgs.builder()
/// .deviceFleetName("example")
/// .roleArn(test.arn())
/// .outputConfig(DeviceFleetOutputConfigArgs.builder()
/// .s3OutputLocation(String.format("s3://%s/prefix/", exampleAwsS3Bucket.bucket()))
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:sagemaker:DeviceFleet
/// properties:
/// deviceFleetName: example
/// roleArn: ${test.arn}
/// outputConfig:
/// s3OutputLocation: s3://${exampleAwsS3Bucket.bucket}/prefix/
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI Device Fleets using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/deviceFleet:DeviceFleet example my-fleet
/// ```
class DeviceFleet extends CustomResource {
  /// The Amazon Resource Name (ARN) assigned by AWS to this Device Fleet.
  late final Output<String> arn;

  /// A description of the fleet.
  late final Output<String?> description;

  /// The name of the Device Fleet (must be unique).
  late final Output<String> deviceFleetName;

  /// Whether to create an AWS IoT Role Alias during device fleet creation. The name of the role alias generated will match this pattern: "SageMakerEdge-{DeviceFleetName}".
  late final Output<bool?> enableIotRoleAlias;
  late final Output<String> iotRoleAlias;

  /// Specifies details about the repository. see Output Config details below.
  late final Output<DeviceFleetOutputConfig> outputConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon Resource Name (ARN) that has access to AWS Internet of Things (IoT).
  late final Output<String> roleArn;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  DeviceFleet(
    String name, {
    DeviceFleetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/deviceFleet:DeviceFleet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.deviceFleetName = registerOutput<String>('deviceFleetName');
    this.enableIotRoleAlias = registerOutput<bool?>('enableIotRoleAlias');
    this.iotRoleAlias = registerOutput<String>('iotRoleAlias');
    this.outputConfig = registerOutput<DeviceFleetOutputConfig>('outputConfig');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
