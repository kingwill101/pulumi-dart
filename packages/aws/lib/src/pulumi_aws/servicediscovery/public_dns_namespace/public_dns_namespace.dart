import 'package:pulumi/pulumi.dart';
import 'public_dns_namespace_args.dart';

/// Provides a Service Discovery Public DNS Namespace resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.servicediscovery.PublicDnsNamespace("example", {
/// name: "hoge.example.com",
/// description: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.servicediscovery.PublicDnsNamespace("example",
/// name="hoge.example.com",
/// description="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.ServiceDiscovery.PublicDnsNamespace("example", new()
/// {
/// Name = "hoge.example.com",
/// Description = "example",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/servicediscovery"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := servicediscovery.NewPublicDnsNamespace(ctx, "example", &servicediscovery.PublicDnsNamespaceArgs{
/// Name:        pulumi.String("hoge.example.com"),
/// Description: pulumi.String("example"),
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
/// import com.pulumi.aws.servicediscovery.PublicDnsNamespace;
/// import com.pulumi.aws.servicediscovery.PublicDnsNamespaceArgs;
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
/// var example = new PublicDnsNamespace("example", PublicDnsNamespaceArgs.builder()
/// .name("hoge.example.com")
/// .description("example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:servicediscovery:PublicDnsNamespace
/// properties:
/// name: hoge.example.com
/// description: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Service Discovery Public DNS Namespace using the namespace ID. For example:
///
/// ```sh
/// $ pulumi import aws:servicediscovery/publicDnsNamespace:PublicDnsNamespace example 0123456789
/// ```
class PublicDnsNamespace extends CustomResource {
  /// The ARN that Amazon Route 53 assigns to the namespace when you create it.
  late final Output<String> arn;

  /// The description that you specify for the namespace when you create it.
  late final Output<String?> description;

  /// The ID for the hosted zone that Amazon Route 53 creates when you create a namespace.
  late final Output<String> hostedZone;

  /// The name of the namespace.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the namespace. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  PublicDnsNamespace(
    String name, {
    PublicDnsNamespaceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:servicediscovery/publicDnsNamespace:PublicDnsNamespace',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.hostedZone = registerOutput<String>('hostedZone');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
