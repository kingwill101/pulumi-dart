import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_fleet_args.dart';
import 'device_fleet_output_config.dart';
import 'device_fleet_state.dart';

/// Provides a SageMaker AI Device Fleet resource.
///
/// ## Example Usage
///
/// ### Basic usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sagemaker.DeviceFleet("example", {
///     outputConfig: {
///         s3OutputLocation: `s3://${exampleAwsS3Bucket.bucket}/prefix/`,
///     },
///     deviceFleetName: "example",
///     roleArn: test.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.DeviceFleet("example",
///     output_config={
///         "s3_output_location": f"s3://{example_aws_s3_bucket['bucket']}/prefix/",
///     },
///     device_fleet_name="example",
///     role_arn=test["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Sagemaker.DeviceFleet("example", new()
///     {
///         OutputConfig = new Aws.Sagemaker.Inputs.DeviceFleetOutputConfigArgs
///         {
///             S3OutputLocation = $"s3://{exampleAwsS3Bucket.Bucket}/prefix/",
///         },
///         DeviceFleetName = "example",
///         RoleArn = test.Arn,
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
/// 		_, err := sagemaker.NewDeviceFleet(ctx, "example", &sagemaker.DeviceFleetArgs{
/// 			OutputConfig: &sagemaker.DeviceFleetOutputConfigArgs{
/// 				S3OutputLocation: pulumi.Sprintf("s3://%v/prefix/", exampleAwsS3Bucket.Bucket),
/// 			},
/// 			DeviceFleetName: pulumi.String("example"),
/// 			RoleArn:         pulumi.Any(test.Arn),
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
/// resource "aws_sagemaker_devicefleet" "example" {
///   output_config = {
///     s3_output_location ="s3://${exampleAwsS3Bucket.bucket}/prefix/"
///   }
///   device_fleet_name = "example"
///   role_arn          = test.arn
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
///         var example = new DeviceFleet("example", DeviceFleetArgs.builder()
///             .outputConfig(DeviceFleetOutputConfigArgs.builder()
///                 .s3OutputLocation(String.format("s3://%s/prefix/", exampleAwsS3Bucket.bucket()))
///                 .build())
///             .deviceFleetName("example")
///             .roleArn(test.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sagemaker:DeviceFleet
///     properties:
///       outputConfig:
///         s3OutputLocation: s3://${exampleAwsS3Bucket.bucket}/prefix/
///       deviceFleetName: example
///       roleArn: ${test.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI Device Fleets using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/deviceFleet:DeviceFleet example my-fleet
/// ```
class DeviceFleet extends pulumi.CustomResource {
  /// ARN assigned by AWS to this Device Fleet.
  late final pulumi.Output<String> arn;
  /// A description of the fleet.
  late final pulumi.Output<String?> description;
  /// The name of the Device Fleet (must be unique).
  late final pulumi.Output<String> deviceFleetName;
  /// Whether to create an AWS IoT Role Alias during device fleet creation. The name of the role alias generated will match this pattern: "SageMakerEdge-{DeviceFleetName}".
  late final pulumi.Output<bool?> enableIotRoleAlias;
  late final pulumi.Output<String> iotRoleAlias;
  /// Specifies details about the repository. see Output Config details below.
  late final pulumi.Output<DeviceFleetOutputConfig> outputConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN that has access to AWS Internet of Things (IoT).
  late final pulumi.Output<String> roleArn;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [DeviceFleet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeviceFleet]. {@macro pulumi_sagemaker_device_fleet_device_fleet_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeviceFleet(
    String name, {
    DeviceFleetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/deviceFleet:DeviceFleet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    deviceFleetName = registerOutput<String>('deviceFleetName');
    enableIotRoleAlias = registerOutput<bool?>('enableIotRoleAlias');
    iotRoleAlias = registerOutput<String>('iotRoleAlias');
    outputConfig = registerOutput<DeviceFleetOutputConfig>('outputConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeviceFleetOutputConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [DeviceFleet] resource's state with the given [name] and [id].
  static DeviceFleet get(
    String name,
    pulumi.Input<String> id, {
    DeviceFleetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DeviceFleet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DeviceFleet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/deviceFleet:DeviceFleet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    deviceFleetName = registerOutput<String>('deviceFleetName');
    enableIotRoleAlias = registerOutput<bool?>('enableIotRoleAlias');
    iotRoleAlias = registerOutput<String>('iotRoleAlias');
    outputConfig = registerOutput<DeviceFleetOutputConfig>('outputConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeviceFleetOutputConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [DeviceFleet] resource.
  DeviceFleet.reference(String urn)
    : super(
        'aws:sagemaker/deviceFleet:DeviceFleet',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    deviceFleetName = registerOutput<String>('deviceFleetName');
    enableIotRoleAlias = registerOutput<bool?>('enableIotRoleAlias');
    iotRoleAlias = registerOutput<String>('iotRoleAlias');
    outputConfig = registerOutput<DeviceFleetOutputConfig>('outputConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeviceFleetOutputConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
