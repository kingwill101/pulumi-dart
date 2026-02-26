import 'package:pulumi/pulumi.dart';
import 'instance_metadata_defaults_args.dart';

/// Manages regional EC2 instance metadata default settings.
/// More information can be found in the [Configure instance metadata options for new instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-IMDS-new-instances.html) user guide.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const enforce_imdsv2 = new aws.ec2.InstanceMetadataDefaults("enforce-imdsv2", {
/// httpTokens: "required",
/// httpPutResponseHopLimit: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// enforce_imdsv2 = aws.ec2.InstanceMetadataDefaults("enforce-imdsv2",
/// http_tokens="required",
/// http_put_response_hop_limit=1)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var enforce_imdsv2 = new Aws.Ec2.InstanceMetadataDefaults("enforce-imdsv2", new()
/// {
/// HttpTokens = "required",
/// HttpPutResponseHopLimit = 1,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2.NewInstanceMetadataDefaults(ctx, "enforce-imdsv2", &ec2.InstanceMetadataDefaultsArgs{
/// HttpTokens:              pulumi.String("required"),
/// HttpPutResponseHopLimit: pulumi.Int(1),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var enforce_imdsv2 = new InstanceMetadataDefaults("enforce-imdsv2", InstanceMetadataDefaultsArgs.builder()
/// .httpTokens("required")
/// .httpPutResponseHopLimit(1)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// enforce-imdsv2:
/// type: aws:ec2:InstanceMetadataDefaults
/// properties:
/// httpTokens: required
/// httpPutResponseHopLimit: 1
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// You cannot import this resource.
class InstanceMetadataDefaults extends CustomResource {
  /// Whether the metadata service is available. Can be `"enabled"`, `"disabled"`, or `"no-preference"`. Default: `"no-preference"`.
  late final Output<String> httpEndpoint;

  /// The desired HTTP PUT response hop limit for instance metadata requests. The larger the number, the further instance metadata requests can travel. Can be an integer from <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span> to <span pulumi-lang-nodejs="`64`" pulumi-lang-dotnet="`64`" pulumi-lang-go="`64`" pulumi-lang-python="`64`" pulumi-lang-yaml="`64`" pulumi-lang-java="`64`">`64`</span>, or `-1` to indicate no preference. Default: `-1`.
  late final Output<int> httpPutResponseHopLimit;

  /// Whether the metadata service requires session tokens, also referred to as _Instance Metadata Service Version 2 (IMDSv2)_. Can be `"optional"`, `"required"`, or `"no-preference"`. Default: `"no-preference"`.
  late final Output<String> httpTokens;

  /// Enables or disables access to instance tags from the instance metadata service. Can be `"enabled"`, `"disabled"`, or `"no-preference"`. Default: `"no-preference"`.
  late final Output<String> instanceMetadataTags;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  InstanceMetadataDefaults(
    String name, {
    InstanceMetadataDefaultsArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/instanceMetadataDefaults:InstanceMetadataDefaults',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.httpEndpoint = Output.createUnknown<String>();
    this.httpPutResponseHopLimit = Output.createUnknown<int>();
    this.httpTokens = Output.createUnknown<String>();
    this.instanceMetadataTags = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
  }
}
