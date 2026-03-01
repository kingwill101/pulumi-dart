import 'package:pulumi/pulumi.dart' as pulumi;
import 'transit_gateway_args.dart';
import 'transit_gateway_state.dart';

/// Manages an EC2 Transit Gateway.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2transitgateway.TransitGateway("example", {description: "example"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.TransitGateway("example", description="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2TransitGateway.TransitGateway("example", new()
///     {
///         Description = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2transitgateway.NewTransitGateway(ctx, "example", &ec2transitgateway.TransitGatewayArgs{
/// 			Description: pulumi.String("example"),
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
/// import com.pulumi.aws.ec2transitgateway.TransitGatewayArgs;
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
///         var example = new TransitGateway("example", TransitGatewayArgs.builder()
///             .description("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2transitgateway:TransitGateway
///     properties:
///       description: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.ec2transitgateway.TransitGateway` using the EC2 Transit Gateway identifier. For example:
///
/// ```sh
/// $ pulumi import aws:ec2transitgateway/transitGateway:TransitGateway example tgw-12345678
/// ```
class TransitGateway extends pulumi.CustomResource {
  /// Private Autonomous System Number (ASN) for the Amazon side of a BGP session. The range is `64512` to `65534` for 16-bit ASNs and `4200000000` to `4294967294` for 32-bit ASNs. Default value: `64512`.
  ///
  /// > **NOTE:** Modifying `amazon_side_asn` on a Transit Gateway with active BGP sessions is [not allowed](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyTransitGatewayOptions.html). You must first delete all Transit Gateway attachments that have BGP configured prior to modifying `amazon_side_asn`.
  late final pulumi.Output<int?> amazonSideAsn;
  /// EC2 Transit Gateway Amazon Resource Name (ARN)
  late final pulumi.Output<String> arn;
  /// Identifier of the default association route table
  late final pulumi.Output<String> associationDefaultRouteTableId;
  /// Whether resource attachment requests are automatically accepted. Valid values: `disable`, `enable`. Default value: `disable`.
  late final pulumi.Output<String?> autoAcceptSharedAttachments;
  /// Whether resource attachments are automatically associated with the default association route table. Valid values: `disable`, `enable`. Default value: `enable`.
  late final pulumi.Output<String?> defaultRouteTableAssociation;
  /// Whether resource attachments automatically propagate routes to the default propagation route table. Valid values: `disable`, `enable`. Default value: `enable`.
  late final pulumi.Output<String?> defaultRouteTablePropagation;
  /// Description of the EC2 Transit Gateway.
  late final pulumi.Output<String?> description;
  /// Whether DNS support is enabled. Valid values: `disable`, `enable`. Default value: `enable`.
  late final pulumi.Output<String?> dnsSupport;
  /// Whether encryption support for VPC Encryption Control is enabled. Valid values: `disable`, `enable`. Default value: `disable`. Once set, switching to `disable` requires explicitly specifying `disable` rather than removing the argument.
  late final pulumi.Output<String> encryptionSupport;
  /// Whether Multicast support is enabled. Required to use `ec2_transit_gateway_multicast_domain`. Valid values: `disable`, `enable`. Default value: `disable`.
  late final pulumi.Output<String?> multicastSupport;
  /// Identifier of the AWS account that owns the EC2 Transit Gateway
  late final pulumi.Output<String> ownerId;
  /// Identifier of the default propagation route table
  late final pulumi.Output<String> propagationDefaultRouteTableId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Whether Security Group Referencing Support is enabled. Valid values: `disable`, `enable`. Default value: `disable`.
  late final pulumi.Output<String?> securityGroupReferencingSupport;
  /// Key-value tags for the EC2 Transit Gateway. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// One or more IPv4 or IPv6 CIDR blocks for the transit gateway. Must be a size /24 CIDR block or larger for IPv4, or a size /64 CIDR block or larger for IPv6.
  late final pulumi.Output<List<String>?> transitGatewayCidrBlocks;
  /// Whether VPN Equal Cost Multipath Protocol support is enabled. Valid values: `disable`, `enable`. Default value: `enable`.
  late final pulumi.Output<String?> vpnEcmpSupport;

  /// Creates a new [TransitGateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TransitGateway]. {@macro pulumi_ec2transitgateway_transit_gateway_transit_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TransitGateway(
    String name, {
    TransitGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/transitGateway:TransitGateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.amazonSideAsn = registerOutput<int?>('amazonSideAsn');
    this.arn = registerOutput<String>('arn');
    this.associationDefaultRouteTableId = registerOutput<String>('associationDefaultRouteTableId');
    this.autoAcceptSharedAttachments = registerOutput<String?>('autoAcceptSharedAttachments');
    this.defaultRouteTableAssociation = registerOutput<String?>('defaultRouteTableAssociation');
    this.defaultRouteTablePropagation = registerOutput<String?>('defaultRouteTablePropagation');
    this.description = registerOutput<String?>('description');
    this.dnsSupport = registerOutput<String?>('dnsSupport');
    this.encryptionSupport = registerOutput<String>('encryptionSupport');
    this.multicastSupport = registerOutput<String?>('multicastSupport');
    this.ownerId = registerOutput<String>('ownerId');
    this.propagationDefaultRouteTableId = registerOutput<String>('propagationDefaultRouteTableId');
    this.region = registerOutput<String>('region');
    this.securityGroupReferencingSupport = registerOutput<String?>('securityGroupReferencingSupport');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.transitGatewayCidrBlocks = registerOutput<List<String>?>('transitGatewayCidrBlocks');
    this.vpnEcmpSupport = registerOutput<String?>('vpnEcmpSupport');
  }

  /// Gets an existing [TransitGateway] resource's state with the given [name] and [id].
  static TransitGateway get(
    String name,
    pulumi.Input<String> id, {
    TransitGatewayState? state,
  }) {
    return TransitGateway._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TransitGateway._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/transitGateway:TransitGateway',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.amazonSideAsn = registerOutput<int?>('amazonSideAsn');
    this.arn = registerOutput<String>('arn');
    this.associationDefaultRouteTableId = registerOutput<String>('associationDefaultRouteTableId');
    this.autoAcceptSharedAttachments = registerOutput<String?>('autoAcceptSharedAttachments');
    this.defaultRouteTableAssociation = registerOutput<String?>('defaultRouteTableAssociation');
    this.defaultRouteTablePropagation = registerOutput<String?>('defaultRouteTablePropagation');
    this.description = registerOutput<String?>('description');
    this.dnsSupport = registerOutput<String?>('dnsSupport');
    this.encryptionSupport = registerOutput<String>('encryptionSupport');
    this.multicastSupport = registerOutput<String?>('multicastSupport');
    this.ownerId = registerOutput<String>('ownerId');
    this.propagationDefaultRouteTableId = registerOutput<String>('propagationDefaultRouteTableId');
    this.region = registerOutput<String>('region');
    this.securityGroupReferencingSupport = registerOutput<String?>('securityGroupReferencingSupport');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.transitGatewayCidrBlocks = registerOutput<List<String>?>('transitGatewayCidrBlocks');
    this.vpnEcmpSupport = registerOutput<String?>('vpnEcmpSupport');
  }
}
