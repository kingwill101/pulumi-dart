import 'package:pulumi/pulumi.dart';
import '../sdkvoice_sip_media_application_endpoints/sdkvoice_sip_media_application_endpoints.dart';
import 'sdkvoice_sip_media_application_args.dart';

/// A ChimeSDKVoice SIP Media Application is a managed object that passes values from a SIP rule to a target AWS Lambda function.
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
/// const example = new aws.chime.SdkvoiceSipMediaApplication("example", {
/// awsRegion: "us-east-1",
/// name: "example-sip-media-application",
/// endpoints: {
/// lambdaArn: test.arn,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.chime.SdkvoiceSipMediaApplication("example",
/// aws_region="us-east-1",
/// name="example-sip-media-application",
/// endpoints={
/// "lambda_arn": test["arn"],
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
/// var example = new Aws.Chime.SdkvoiceSipMediaApplication("example", new()
/// {
/// AwsRegion = "us-east-1",
/// Name = "example-sip-media-application",
/// Endpoints = new Aws.Chime.Inputs.SdkvoiceSipMediaApplicationEndpointsArgs
/// {
/// LambdaArn = test.Arn,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/chime"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := chime.NewSdkvoiceSipMediaApplication(ctx, "example", &chime.SdkvoiceSipMediaApplicationArgs{
/// AwsRegion: pulumi.String("us-east-1"),
/// Name:      pulumi.String("example-sip-media-application"),
/// Endpoints: &chime.SdkvoiceSipMediaApplicationEndpointsArgs{
/// LambdaArn: pulumi.Any(test.Arn),
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
/// import com.pulumi.aws.chime.SdkvoiceSipMediaApplication;
/// import com.pulumi.aws.chime.SdkvoiceSipMediaApplicationArgs;
/// import com.pulumi.aws.chime.inputs.SdkvoiceSipMediaApplicationEndpointsArgs;
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
/// var example = new SdkvoiceSipMediaApplication("example", SdkvoiceSipMediaApplicationArgs.builder()
/// .awsRegion("us-east-1")
/// .name("example-sip-media-application")
/// .endpoints(SdkvoiceSipMediaApplicationEndpointsArgs.builder()
/// .lambdaArn(test.arn())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:chime:SdkvoiceSipMediaApplication
/// properties:
/// awsRegion: us-east-1
/// name: example-sip-media-application
/// endpoints:
/// lambdaArn: ${test.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import a ChimeSDKVoice SIP Media Application using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:chime/sdkvoiceSipMediaApplication:SdkvoiceSipMediaApplication example abcdef123456
/// ```
class SdkvoiceSipMediaApplication extends CustomResource {
  /// ARN (Amazon Resource Name) of the AWS Chime SDK Voice Sip Media Application
  late final Output<String> arn;

  /// The AWS Region in which the AWS Chime SDK Voice Sip Media Application is created.
  late final Output<String> awsRegion;

  /// List of endpoints (Lambda Amazon Resource Names) specified for the SIP media application. Currently, only one endpoint is supported. See <span pulumi-lang-nodejs="`endpoints`" pulumi-lang-dotnet="`Endpoints`" pulumi-lang-go="`endpoints`" pulumi-lang-python="`endpoints`" pulumi-lang-yaml="`endpoints`" pulumi-lang-java="`endpoints`">`endpoints`</span>.
  late final Output<SdkvoiceSipMediaApplicationEndpoints> endpoints;

  /// The name of the AWS Chime SDK Voice Sip Media Application.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value mapping of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  SdkvoiceSipMediaApplication(
    String name, {
    SdkvoiceSipMediaApplicationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:chime/sdkvoiceSipMediaApplication:SdkvoiceSipMediaApplication',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.awsRegion = Output.createUnknown<String>();
    this.endpoints =
        Output.createUnknown<SdkvoiceSipMediaApplicationEndpoints>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
