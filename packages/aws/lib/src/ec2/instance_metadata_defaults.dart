import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_metadata_defaults_args.dart';

/// Manages regional EC2 instance metadata default settings.
/// More information can be found in the [Configure instance metadata options for new instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-IMDS-new-instances.html) user guide.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const enforce_imdsv2 = new aws.ec2.InstanceMetadataDefaults("enforce-imdsv2", {
///     httpTokens: "required",
///     httpPutResponseHopLimit: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// enforce_imdsv2 = aws.ec2.InstanceMetadataDefaults("enforce-imdsv2",
///     http_tokens="required",
///     http_put_response_hop_limit=1)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var enforce_imdsv2 = new Aws.Ec2.InstanceMetadataDefaults("enforce-imdsv2", new()
///     {
///         HttpTokens = "required",
///         HttpPutResponseHopLimit = 1,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.NewInstanceMetadataDefaults(ctx, "enforce-imdsv2", &ec2.InstanceMetadataDefaultsArgs{
/// 			HttpTokens:              pulumi.String("required"),
/// 			HttpPutResponseHopLimit: pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.InstanceMetadataDefaults;
/// import com.pulumi.aws.ec2.InstanceMetadataDefaultsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var enforce_imdsv2 = new InstanceMetadataDefaults("enforce-imdsv2", InstanceMetadataDefaultsArgs.builder()
///             .httpTokens("required")
///             .httpPutResponseHopLimit(1)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   enforce-imdsv2:
///     type: aws:ec2:InstanceMetadataDefaults
///     properties:
///       httpTokens: required
///       httpPutResponseHopLimit: 1
/// ```
///
///
/// ## Import
///
/// You cannot import this resource.
class InstanceMetadataDefaults extends pulumi.CustomResource {
  /// Whether the metadata service is available. Can be `"enabled"`, `"disabled"`, or `"no-preference"`. Default: `"no-preference"`.
  late final pulumi.Output<String> httpEndpoint;
  /// The desired HTTP PUT response hop limit for instance metadata requests. The larger the number, the further instance metadata requests can travel. Can be an integer from `1` to `64`, or `-1` to indicate no preference. Default: `-1`.
  late final pulumi.Output<int> httpPutResponseHopLimit;
  /// Whether the metadata service requires session tokens, also referred to as _Instance Metadata Service Version 2 (IMDSv2)_. Can be `"optional"`, `"required"`, or `"no-preference"`. Default: `"no-preference"`.
  late final pulumi.Output<String> httpTokens;
  /// Enables or disables access to instance tags from the instance metadata service. Can be `"enabled"`, `"disabled"`, or `"no-preference"`. Default: `"no-preference"`.
  late final pulumi.Output<String> instanceMetadataTags;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [InstanceMetadataDefaults].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceMetadataDefaults]. {@macro pulumi_ec2_instance_metadata_defaults_instance_metadata_defaults_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceMetadataDefaults(
    String name, {
    InstanceMetadataDefaultsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/instanceMetadataDefaults:InstanceMetadataDefaults',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.httpEndpoint = registerOutput<String>('httpEndpoint');
    this.httpPutResponseHopLimit = registerOutput<int>('httpPutResponseHopLimit');
    this.httpTokens = registerOutput<String>('httpTokens');
    this.instanceMetadataTags = registerOutput<String>('instanceMetadataTags');
    this.region = registerOutput<String>('region');
  }
}
