import 'package:pulumi/pulumi.dart';
import '../endpoint_deployment_config/endpoint_deployment_config.dart';
import 'endpoint_args4.dart';

/// Provides a SageMaker AI Endpoint resource.
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
/// const e = new aws.sagemaker.Endpoint("e", {
/// name: "my-endpoint",
/// endpointConfigName: ec.name,
/// tags: {
/// Name: "foo",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// e = aws.sagemaker.Endpoint("e",
/// name="my-endpoint",
/// endpoint_config_name=ec["name"],
/// tags={
/// "Name": "foo",
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
/// var e = new Aws.Sagemaker.Endpoint("e", new()
/// {
/// Name = "my-endpoint",
/// EndpointConfigName = ec.Name,
/// Tags =
/// {
/// { "Name", "foo" },
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
/// _, err := sagemaker.NewEndpoint(ctx, "e", &sagemaker.EndpointArgs{
/// Name:               pulumi.String("my-endpoint"),
/// EndpointConfigName: pulumi.Any(ec.Name),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("foo"),
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
/// import com.pulumi.aws.sagemaker.Endpoint;
/// import com.pulumi.aws.sagemaker.EndpointArgs;
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
/// var e = new Endpoint("e", EndpointArgs.builder()
/// .name("my-endpoint")
/// .endpointConfigName(ec.name())
/// .tags(Map.of("Name", "foo"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// e:
/// type: aws:sagemaker:Endpoint
/// properties:
/// name: my-endpoint
/// endpointConfigName: ${ec.name}
/// tags:
/// Name: foo
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import endpoints using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/endpoint:Endpoint test_endpoint my-endpoint
/// ```
class Endpoint4 extends CustomResource {
  /// The Amazon Resource Name (ARN) assigned by AWS to this endpoint.
  late final Output<String> arn;

  /// The deployment configuration for an endpoint, which contains the desired deployment strategy and rollback configurations. See Deployment Config.
  late final Output<EndpointDeploymentConfig?> deploymentConfig;

  /// The name of the endpoint configuration to use.
  late final Output<String> endpointConfigName;

  /// The name of the endpoint. If omitted, the provider will assign a random, unique name.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Endpoint4(
    String name, {
    EndpointArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/endpoint:Endpoint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.deploymentConfig =
        registerOutput<EndpointDeploymentConfig?>('deploymentConfig');
    this.endpointConfigName = registerOutput<String>('endpointConfigName');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
