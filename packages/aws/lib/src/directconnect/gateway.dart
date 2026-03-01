import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_args.dart';

/// Provides a Direct Connect Gateway.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.directconnect.Gateway("example", {
///     name: "tf-dxg-example",
///     amazonSideAsn: "64512",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.directconnect.Gateway("example",
///     name="tf-dxg-example",
///     amazon_side_asn="64512")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DirectConnect.Gateway("example", new()
///     {
///         Name = "tf-dxg-example",
///         AmazonSideAsn = "64512",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directconnect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := directconnect.NewGateway(ctx, "example", &directconnect.GatewayArgs{
/// 			Name:          pulumi.String("tf-dxg-example"),
/// 			AmazonSideAsn: pulumi.String("64512"),
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
/// import com.pulumi.aws.directconnect.Gateway;
/// import com.pulumi.aws.directconnect.GatewayArgs;
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
///         var example = new Gateway("example", GatewayArgs.builder()
///             .name("tf-dxg-example")
///             .amazonSideAsn("64512")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:directconnect:Gateway
///     properties:
///       name: tf-dxg-example
///       amazonSideAsn: '64512'
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` (String) ID of the Direct Connect Gateway.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Direct Connect Gateways using the gateway `id`. For example:
///
/// ```sh
/// $ pulumi import aws:directconnect/gateway:Gateway example abcd1234-dcba-5678-be23-cdef9876ab45
/// ```
class Gateway extends pulumi.CustomResource {
  /// The ASN to be configured on the Amazon side of the connection. The ASN must be in the private range of 64,512 to 65,534 or 4,200,000,000 to 4,294,967,294.
  late final pulumi.Output<String> amazonSideAsn;

  /// The ARN of the gateway.
  late final pulumi.Output<String> arn;

  /// The name of the connection.
  late final pulumi.Output<String> name;

  /// AWS Account ID of the gateway.
  late final pulumi.Output<String> ownerAccountId;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Gateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Gateway]. {@macro pulumi_directconnect_gateway_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Gateway(
    String name, {
    GatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:directconnect/gateway:Gateway',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.amazonSideAsn = registerOutput<String>('amazonSideAsn');
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.ownerAccountId = registerOutput<String>('ownerAccountId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
