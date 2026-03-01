import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_certificate_args.dart';

/// Provides an API Gateway Client Certificate.
///
/// ## Example Usage
///
///
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
///     var demo = new Aws.ApiGateway.ClientCertificate("demo", new()
///     {
///         Description = "My client certificate",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigateway.NewClientCertificate(ctx, "demo", &apigateway.ClientCertificateArgs{
/// 			Description: pulumi.String("My client certificate"),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var demo = new ClientCertificate("demo", ClientCertificateArgs.builder()
///             .description("My client certificate")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   demo:
///     type: aws:apigateway:ClientCertificate
///     properties:
///       description: My client certificate
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import API Gateway Client Certificates using the id. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/clientCertificate:ClientCertificate demo ab1cqe
/// ```
class ClientCertificate extends pulumi.CustomResource {
  /// ARN
  late final pulumi.Output<String> arn;
  /// Date when the client certificate was created.
  late final pulumi.Output<String> createdDate;
  /// Description of the client certificate.
  late final pulumi.Output<String?> description;
  /// Date when the client certificate will expire.
  late final pulumi.Output<String> expirationDate;
  /// The PEM-encoded public key of the client certificate.
  late final pulumi.Output<String> pemEncodedCertificate;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [ClientCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClientCertificate]. {@macro pulumi_apigateway_client_certificate_client_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClientCertificate(
    String name, {
    ClientCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/clientCertificate:ClientCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.createdDate = registerOutput<String>('createdDate');
    this.description = registerOutput<String?>('description');
    this.expirationDate = registerOutput<String>('expirationDate');
    this.pemEncodedCertificate = registerOutput<String>('pemEncodedCertificate');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
