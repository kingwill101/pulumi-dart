import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_args.dart';
import 'tag_state.dart';

/// Manages an individual EC2 resource tag. This resource should only be used in cases where EC2 resources are created outside the provider (e.g. AMIs), being shared via Resource Access Manager (RAM), or implicitly created by other means (e.g. Transit Gateway VPN Attachments).
///
/// &gt; **NOTE:** This tagging resource should not be combined with the providers resource for managing the parent resource. For example, using `aws.ec2.Vpc` and `aws.ec2.Tag` to manage tags of the same VPC will cause a perpetual difference where the `aws.ec2.Vpc` resource will try to remove the tag being added by the `aws.ec2.Tag` resource.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2transitgateway.TransitGateway("example", {});
/// const exampleCustomerGateway = new aws.ec2.CustomerGateway("example", {
///     bgpAsn: "65000",
///     ipAddress: "172.0.0.1",
///     type: "ipsec.1",
/// });
/// const exampleVpnConnection = new aws.ec2.VpnConnection("example", {
///     customerGatewayId: exampleCustomerGateway.id,
///     transitGatewayId: example.id,
///     type: exampleCustomerGateway.type,
/// });
/// const exampleTag = new aws.ec2.Tag("example", {
///     resourceId: exampleVpnConnection.transitGatewayAttachmentId,
///     key: "Name",
///     value: "Hello World",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.TransitGateway("example")
/// example_customer_gateway = aws.ec2.CustomerGateway("example",
///     bgp_asn="65000",
///     ip_address="172.0.0.1",
///     type="ipsec.1")
/// example_vpn_connection = aws.ec2.VpnConnection("example",
///     customer_gateway_id=example_customer_gateway.id,
///     transit_gateway_id=example.id,
///     type=example_customer_gateway.type)
/// example_tag = aws.ec2.Tag("example",
///     resource_id=example_vpn_connection.transit_gateway_attachment_id,
///     key="Name",
///     value="Hello World")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2TransitGateway.TransitGateway("example");
///
///     var exampleCustomerGateway = new Aws.Ec2.CustomerGateway("example", new()
///     {
///         BgpAsn = "65000",
///         IpAddress = "172.0.0.1",
///         Type = "ipsec.1",
///     });
///
///     var exampleVpnConnection = new Aws.Ec2.VpnConnection("example", new()
///     {
///         CustomerGatewayId = exampleCustomerGateway.Id,
///         TransitGatewayId = example.Id,
///         Type = exampleCustomerGateway.Type,
///     });
///
///     var exampleTag = new Aws.Ec2.Tag("example", new()
///     {
///         ResourceId = exampleVpnConnection.TransitGatewayAttachmentId,
///         Key = "Name",
///         Value = "Hello World",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ec2transitgateway.NewTransitGateway(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleCustomerGateway, err := ec2.NewCustomerGateway(ctx, "example", &ec2.CustomerGatewayArgs{
/// 			BgpAsn:    pulumi.String("65000"),
/// 			IpAddress: pulumi.String("172.0.0.1"),
/// 			Type:      pulumi.String("ipsec.1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVpnConnection, err := ec2.NewVpnConnection(ctx, "example", &ec2.VpnConnectionArgs{
/// 			CustomerGatewayId: exampleCustomerGateway.ID(),
/// 			TransitGatewayId:  example.ID(),
/// 			Type:              exampleCustomerGateway.Type,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewTag(ctx, "example", &ec2.TagArgs{
/// 			ResourceId: exampleVpnConnection.TransitGatewayAttachmentId,
/// 			Key:        pulumi.String("Name"),
/// 			Value:      pulumi.String("Hello World"),
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
/// import com.pulumi.aws.ec2transitgateway.TransitGateway;
/// import com.pulumi.aws.ec2.CustomerGateway;
/// import com.pulumi.aws.ec2.CustomerGatewayArgs;
/// import com.pulumi.aws.ec2.VpnConnection;
/// import com.pulumi.aws.ec2.VpnConnectionArgs;
/// import com.pulumi.aws.ec2.Tag;
/// import com.pulumi.aws.ec2.TagArgs;
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
///         var example = new TransitGateway("example");
///
///         var exampleCustomerGateway = new CustomerGateway("exampleCustomerGateway", CustomerGatewayArgs.builder()
///             .bgpAsn("65000")
///             .ipAddress("172.0.0.1")
///             .type("ipsec.1")
///             .build());
///
///         var exampleVpnConnection = new VpnConnection("exampleVpnConnection", VpnConnectionArgs.builder()
///             .customerGatewayId(exampleCustomerGateway.id())
///             .transitGatewayId(example.id())
///             .type(exampleCustomerGateway.type())
///             .build());
///
///         var exampleTag = new Tag("exampleTag", TagArgs.builder()
///             .resourceId(exampleVpnConnection.transitGatewayAttachmentId())
///             .key("Name")
///             .value("Hello World")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2transitgateway:TransitGateway
///   exampleCustomerGateway:
///     type: aws:ec2:CustomerGateway
///     name: example
///     properties:
///       bgpAsn: 65000
///       ipAddress: 172.0.0.1
///       type: ipsec.1
///   exampleVpnConnection:
///     type: aws:ec2:VpnConnection
///     name: example
///     properties:
///       customerGatewayId: ${exampleCustomerGateway.id}
///       transitGatewayId: ${example.id}
///       type: ${exampleCustomerGateway.type}
///   exampleTag:
///     type: aws:ec2:Tag
///     name: example
///     properties:
///       resourceId: ${exampleVpnConnection.transitGatewayAttachmentId}
///       key: Name
///       value: Hello World
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.ec2.Tag` using the EC2 resource identifier and key, separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:ec2/tag:Tag example tgw-attach-1234567890abcdef,Name
/// ```
class Tag extends pulumi.CustomResource {
  /// The tag name.
  late final pulumi.Output<String> key;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ID of the EC2 resource to manage the tag for.
  late final pulumi.Output<String> resourceId;

  /// The value of the tag.
  late final pulumi.Output<String> value;

  /// Creates a new [Tag].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Tag]. {@macro pulumi_ec2_tag_tag_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Tag(String name, {TagArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:ec2/tag:Tag',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    key = registerOutput<String>('key');
    region = registerOutput<String>('region');
    resourceId = registerOutput<String>('resourceId');
    value = registerOutput<String>('value');
  }

  /// Gets an existing [Tag] resource's state with the given [name] and [id].
  static Tag get(String name, pulumi.Input<String> id, {TagState? state}) {
    return Tag._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Tag._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ec2/tag:Tag',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    key = registerOutput<String>('key');
    region = registerOutput<String>('region');
    resourceId = registerOutput<String>('resourceId');
    value = registerOutput<String>('value');
  }
}
