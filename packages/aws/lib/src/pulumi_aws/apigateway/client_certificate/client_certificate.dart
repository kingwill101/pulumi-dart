import 'package:pulumi/pulumi.dart';
import 'client_certificate_args.dart';

/// Provides an API Gateway Client Certificate.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const demo = new aws.apigateway.ClientCertificate("demo", {description: "My client certificate"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// demo = aws.apigateway.ClientCertificate("demo", description="My client certificate")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var demo = new Aws.ApiGateway.ClientCertificate("demo", new()
/// {
/// Description = "My client certificate",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := apigateway.NewClientCertificate(ctx, "demo", &apigateway.ClientCertificateArgs{
/// Description: pulumi.String("My client certificate"),
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
/// import com.pulumi.aws.apigateway.ClientCertificate;
/// import com.pulumi.aws.apigateway.ClientCertificateArgs;
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
/// var demo = new ClientCertificate("demo", ClientCertificateArgs.builder()
/// .description("My client certificate")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// demo:
/// type: aws:apigateway:ClientCertificate
/// properties:
/// description: My client certificate
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import API Gateway Client Certificates using the id. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/clientCertificate:ClientCertificate demo ab1cqe
/// ```
class ClientCertificate extends CustomResource {
  /// ARN
  late final Output<String> arn;

  /// Date when the client certificate was created.
  late final Output<String> createdDate;

  /// Description of the client certificate.
  late final Output<String?> description;

  /// Date when the client certificate will expire.
  late final Output<String> expirationDate;

  /// The PEM-encoded public key of the client certificate.
  late final Output<String> pemEncodedCertificate;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  ClientCertificate(
    String name, {
    ClientCertificateArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/clientCertificate:ClientCertificate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.createdDate = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.expirationDate = Output.createUnknown<String>();
    this.pemEncodedCertificate = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
