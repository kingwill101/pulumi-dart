import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_args.dart';
import 'tag_state.dart';

/// Manages an individual Transfer Family resource tag. This resource should only be used in cases where Transfer Family resources are created outside the provider (e.g., Servers without AWS Management Console) or the tag key has the `aws:` prefix.
///
/// &gt; **NOTE:** This tagging resource should not be combined with the resource for managing the parent resource. For example, using `aws.transfer.Server` and `aws.transfer.Tag` to manage tags of the same server will cause a perpetual difference where the `aws.transfer.Server` resource will try to remove the tag being added by the `aws.transfer.Tag` resource.
///
/// &gt; **NOTE:** This tagging resource does not use the provider `ignoreTags` configuration.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.transfer.Server("example", {identityProviderType: "SERVICE_MANAGED"});
/// const zoneId = new aws.transfer.Tag("zone_id", {
///     resourceArn: example.arn,
///     key: "transfer:route53HostedZoneId",
///     value: "/hostedzone/MyHostedZoneId",
/// });
/// const hostname = new aws.transfer.Tag("hostname", {
///     resourceArn: example.arn,
///     key: "transfer:customHostname",
///     value: "example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.transfer.Server("example", identity_provider_type="SERVICE_MANAGED")
/// zone_id = aws.transfer.Tag("zone_id",
///     resource_arn=example.arn,
///     key="transfer:route53HostedZoneId",
///     value="/hostedzone/MyHostedZoneId")
/// hostname = aws.transfer.Tag("hostname",
///     resource_arn=example.arn,
///     key="transfer:customHostname",
///     value="example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Transfer.Server("example", new()
///     {
///         IdentityProviderType = "SERVICE_MANAGED",
///     });
///
///     var zoneId = new Aws.Transfer.Tag("zone_id", new()
///     {
///         ResourceArn = example.Arn,
///         Key = "transfer:route53HostedZoneId",
///         Value = "/hostedzone/MyHostedZoneId",
///     });
///
///     var hostname = new Aws.Transfer.Tag("hostname", new()
///     {
///         ResourceArn = example.Arn,
///         Key = "transfer:customHostname",
///         Value = "example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/transfer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := transfer.NewServer(ctx, "example", &transfer.ServerArgs{
/// 			IdentityProviderType: pulumi.String("SERVICE_MANAGED"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = transfer.NewTag(ctx, "zone_id", &transfer.TagArgs{
/// 			ResourceArn: example.Arn,
/// 			Key:         pulumi.String("transfer:route53HostedZoneId"),
/// 			Value:       pulumi.String("/hostedzone/MyHostedZoneId"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = transfer.NewTag(ctx, "hostname", &transfer.TagArgs{
/// 			ResourceArn: example.Arn,
/// 			Key:         pulumi.String("transfer:customHostname"),
/// 			Value:       pulumi.String("example.com"),
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
/// resource "aws_transfer_server" "example" {
///   identity_provider_type = "SERVICE_MANAGED"
/// }
/// resource "aws_transfer_tag" "zone_id" {
///   resource_arn = aws_transfer_server.example.arn
///   key          = "transfer:route53HostedZoneId"
///   value        = "/hostedzone/MyHostedZoneId"
/// }
/// resource "aws_transfer_tag" "hostname" {
///   resource_arn = aws_transfer_server.example.arn
///   key          = "transfer:customHostname"
///   value        = "example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.transfer.Server;
/// import com.pulumi.aws.transfer.ServerArgs;
/// import com.pulumi.aws.transfer.Tag;
/// import com.pulumi.aws.transfer.TagArgs;
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
///         var example = new Server("example", ServerArgs.builder()
///             .identityProviderType("SERVICE_MANAGED")
///             .build());
///
///         var zoneId = new Tag("zoneId", TagArgs.builder()
///             .resourceArn(example.arn())
///             .key("transfer:route53HostedZoneId")
///             .value("/hostedzone/MyHostedZoneId")
///             .build());
///
///         var hostname = new Tag("hostname", TagArgs.builder()
///             .resourceArn(example.arn())
///             .key("transfer:customHostname")
///             .value("example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:transfer:Server
///     properties:
///       identityProviderType: SERVICE_MANAGED
///   zoneId:
///     type: aws:transfer:Tag
///     name: zone_id
///     properties:
///       resourceArn: ${example.arn}
///       key: transfer:route53HostedZoneId
///       value: /hostedzone/MyHostedZoneId
///   hostname:
///     type: aws:transfer:Tag
///     properties:
///       resourceArn: ${example.arn}
///       key: transfer:customHostname
///       value: example.com
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.transfer.Tag` using the Transfer Family resource identifier and key, separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:transfer/tag:Tag example arn:aws:transfer:us-east-1:123456789012:server/s-1234567890abcdef0,Name
/// ```
class Tag extends pulumi.CustomResource {
  /// Tag name.
  late final pulumi.Output<String> key;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the Transfer Family resource to tag.
  late final pulumi.Output<String> resourceArn;
  /// Tag value.
  late final pulumi.Output<String> value;

  /// Creates a new [Tag].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Tag]. {@macro pulumi_transfer_tag_tag_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Tag(
    String name, {
    TagArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:transfer/tag:Tag',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    key = registerOutput<String>('key');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
    value = registerOutput<String>('value');
  }

  /// Gets an existing [Tag] resource's state with the given [name] and [id].
  static Tag get(
    String name,
    pulumi.Input<String> id, {
    TagState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Tag._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Tag._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:transfer/tag:Tag',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    key = registerOutput<String>('key');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
    value = registerOutput<String>('value');
  }

  /// Creates a typed reference to an existing [Tag] resource.
  Tag.reference(String urn)
    : super(
        'aws:transfer/tag:Tag',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    key = registerOutput<String>('key');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
    value = registerOutput<String>('value');
  }
}
