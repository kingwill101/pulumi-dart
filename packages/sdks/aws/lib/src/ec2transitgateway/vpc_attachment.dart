import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_attachment_args.dart';
import 'vpc_attachment_state.dart';

/// Manages an EC2 Transit Gateway VPC Attachment. For examples of custom route table association and propagation, see the EC2 Transit Gateway Networking Examples Guide.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2transitgateway.VpcAttachment("example", {
///     subnetIds: [exampleAwsSubnet.id],
///     transitGatewayId: exampleAwsEc2TransitGateway.id,
///     vpcId: exampleAwsVpc.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.VpcAttachment("example",
///     subnet_ids=[example_aws_subnet["id"]],
///     transit_gateway_id=example_aws_ec2_transit_gateway["id"],
///     vpc_id=example_aws_vpc["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2TransitGateway.VpcAttachment("example", new()
///     {
///         SubnetIds = new[]
///         {
///             exampleAwsSubnet.Id,
///         },
///         TransitGatewayId = exampleAwsEc2TransitGateway.Id,
///         VpcId = exampleAwsVpc.Id,
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
/// 		_, err := ec2transitgateway.NewVpcAttachment(ctx, "example", &ec2transitgateway.VpcAttachmentArgs{
/// 			SubnetIds: pulumi.StringArray{
/// 				exampleAwsSubnet.Id,
/// 			},
/// 			TransitGatewayId: pulumi.Any(exampleAwsEc2TransitGateway.Id),
/// 			VpcId:            pulumi.Any(exampleAwsVpc.Id),
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
/// resource "aws_ec2transitgateway_vpcattachment" "example" {
///   subnet_ids         = [exampleAwsSubnet.id]
///   transit_gateway_id = exampleAwsEc2TransitGateway.id
///   vpc_id             = exampleAwsVpc.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2transitgateway.VpcAttachment;
/// import com.pulumi.aws.ec2transitgateway.VpcAttachmentArgs;
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
///         var example = new VpcAttachment("example", VpcAttachmentArgs.builder()
///             .subnetIds(exampleAwsSubnet.id())
///             .transitGatewayId(exampleAwsEc2TransitGateway.id())
///             .vpcId(exampleAwsVpc.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2transitgateway:VpcAttachment
///     properties:
///       subnetIds:
///         - ${exampleAwsSubnet.id}
///       transitGatewayId: ${exampleAwsEc2TransitGateway.id}
///       vpcId: ${exampleAwsVpc.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.ec2transitgateway.VpcAttachment` using the EC2 Transit Gateway Attachment identifier. For example:
///
/// ```sh
/// $ pulumi import aws:ec2transitgateway/vpcAttachment:VpcAttachment example tgw-attach-12345678
/// ```
class VpcAttachment extends pulumi.CustomResource {
  /// Whether Appliance Mode support is enabled. If enabled, a traffic flow between a source and destination uses the same Availability Zone for the VPC attachment for the lifetime of that flow. Valid values: `disable`, `enable`. Default value: `disable`.
  late final pulumi.Output<String?> applianceModeSupport;
  /// ARN of the attachment.
  late final pulumi.Output<String> arn;
  /// Whether DNS support is enabled. Valid values: `disable`, `enable`. Default value: `enable`.
  late final pulumi.Output<String?> dnsSupport;
  /// Whether IPv6 support is enabled. Valid values: `disable`, `enable`. Default value: `disable`.
  late final pulumi.Output<String?> ipv6Support;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Whether Security Group Referencing Support is enabled. Valid values: `disable`, `enable`.
  late final pulumi.Output<String> securityGroupReferencingSupport;
  /// Identifiers of EC2 Subnets.
  late final pulumi.Output<List<String>> subnetIds;
  /// Key-value tags for the EC2 Transit Gateway VPC Attachment. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Boolean whether the VPC Attachment should be associated with the EC2 Transit Gateway association default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways. Default value: `true`. **Setting this argument to** `false` will cause Terraform to remove the default association if it exists. This argument does not simply “ignore” the association; it actively manages (adds or removes) the association in AWS to match the value in your configuration. Do not attempt to manage the same association with both this resource and `aws.ec2transitgateway.RouteTableAssociation`, as this will cause perpetual diffs and resource churn. Use conditional logic to ensure only one resource manages the association at a time.
  late final pulumi.Output<bool> transitGatewayDefaultRouteTableAssociation;
  /// Boolean whether the VPC Attachment should propagate routes with the EC2 Transit Gateway propagation default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways. Default value: `true`. **Setting this argument to** `false` will cause Terraform to remove the default propagation if it exists. This argument does not simply “ignore” the propagation; it actively manages (adds or removes) the propagation in AWS to match the value in your configuration. Do not attempt to manage the same propagation with both this resource and `aws.ec2transitgateway.RouteTablePropagation`, as this will cause perpetual diffs and resource churn. Use conditional logic to ensure only one resource manages the propagation at a time.
  late final pulumi.Output<bool> transitGatewayDefaultRouteTablePropagation;
  /// Identifier of EC2 Transit Gateway.
  late final pulumi.Output<String> transitGatewayId;
  /// Identifier of EC2 VPC.
  late final pulumi.Output<String> vpcId;
  /// Identifier of the AWS account that owns the EC2 VPC.
  late final pulumi.Output<String> vpcOwnerId;

  /// Creates a new [VpcAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcAttachment]. {@macro pulumi_ec2transitgateway_vpc_attachment_vpc_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcAttachment(
    String name, {
    VpcAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/vpcAttachment:VpcAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    applianceModeSupport = registerOutput<String?>('applianceModeSupport');
    arn = registerOutput<String>('arn');
    dnsSupport = registerOutput<String?>('dnsSupport');
    ipv6Support = registerOutput<String?>('ipv6Support');
    region = registerOutput<String>('region');
    securityGroupReferencingSupport = registerOutput<String>('securityGroupReferencingSupport');
    subnetIds = registerOutput<List<String>>('subnetIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    transitGatewayDefaultRouteTableAssociation = registerOutput<bool>('transitGatewayDefaultRouteTableAssociation');
    transitGatewayDefaultRouteTablePropagation = registerOutput<bool>('transitGatewayDefaultRouteTablePropagation');
    transitGatewayId = registerOutput<String>('transitGatewayId');
    vpcId = registerOutput<String>('vpcId');
    vpcOwnerId = registerOutput<String>('vpcOwnerId');
  }

  /// Gets an existing [VpcAttachment] resource's state with the given [name] and [id].
  static VpcAttachment get(
    String name,
    pulumi.Input<String> id, {
    VpcAttachmentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return VpcAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  VpcAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/vpcAttachment:VpcAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applianceModeSupport = registerOutput<String?>('applianceModeSupport');
    arn = registerOutput<String>('arn');
    dnsSupport = registerOutput<String?>('dnsSupport');
    ipv6Support = registerOutput<String?>('ipv6Support');
    region = registerOutput<String>('region');
    securityGroupReferencingSupport = registerOutput<String>('securityGroupReferencingSupport');
    subnetIds = registerOutput<List<String>>('subnetIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    transitGatewayDefaultRouteTableAssociation = registerOutput<bool>('transitGatewayDefaultRouteTableAssociation');
    transitGatewayDefaultRouteTablePropagation = registerOutput<bool>('transitGatewayDefaultRouteTablePropagation');
    transitGatewayId = registerOutput<String>('transitGatewayId');
    vpcId = registerOutput<String>('vpcId');
    vpcOwnerId = registerOutput<String>('vpcOwnerId');
  }

  /// Creates a typed reference to an existing [VpcAttachment] resource.
  VpcAttachment.reference(String urn)
    : super(
        'aws:ec2transitgateway/vpcAttachment:VpcAttachment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    applianceModeSupport = registerOutput<String?>('applianceModeSupport');
    arn = registerOutput<String>('arn');
    dnsSupport = registerOutput<String?>('dnsSupport');
    ipv6Support = registerOutput<String?>('ipv6Support');
    region = registerOutput<String>('region');
    securityGroupReferencingSupport = registerOutput<String>('securityGroupReferencingSupport');
    subnetIds = registerOutput<List<String>>('subnetIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    transitGatewayDefaultRouteTableAssociation = registerOutput<bool>('transitGatewayDefaultRouteTableAssociation');
    transitGatewayDefaultRouteTablePropagation = registerOutput<bool>('transitGatewayDefaultRouteTablePropagation');
    transitGatewayId = registerOutput<String>('transitGatewayId');
    vpcId = registerOutput<String>('vpcId');
    vpcOwnerId = registerOutput<String>('vpcOwnerId');
  }
}
