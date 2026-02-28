import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_table_association_args.dart';

/// Manages an EC2 Transit Gateway Policy Table association.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2transitgateway.PolicyTableAssociation("example", {
///     transitGatewayAttachmentId: exampleAwsNetworkmanagerTransitGatewayPeering.transitGatewayPeeringAttachmentId,
///     transitGatewayPolicyTableId: exampleAwsEc2TransitGatewayPolicyTable.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.PolicyTableAssociation("example",
///     transit_gateway_attachment_id=example_aws_networkmanager_transit_gateway_peering["transitGatewayPeeringAttachmentId"],
///     transit_gateway_policy_table_id=example_aws_ec2_transit_gateway_policy_table["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2TransitGateway.PolicyTableAssociation("example", new()
///     {
///         TransitGatewayAttachmentId = exampleAwsNetworkmanagerTransitGatewayPeering.TransitGatewayPeeringAttachmentId,
///         TransitGatewayPolicyTableId = exampleAwsEc2TransitGatewayPolicyTable.Id,
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
/// 		_, err := ec2transitgateway.NewPolicyTableAssociation(ctx, "example", &ec2transitgateway.PolicyTableAssociationArgs{
/// 			TransitGatewayAttachmentId:  pulumi.Any(exampleAwsNetworkmanagerTransitGatewayPeering.TransitGatewayPeeringAttachmentId),
/// 			TransitGatewayPolicyTableId: pulumi.Any(exampleAwsEc2TransitGatewayPolicyTable.Id),
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
/// import com.pulumi.aws.ec2transitgateway.PolicyTableAssociation;
/// import com.pulumi.aws.ec2transitgateway.PolicyTableAssociationArgs;
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
///         var example = new PolicyTableAssociation("example", PolicyTableAssociationArgs.builder()
///             .transitGatewayAttachmentId(exampleAwsNetworkmanagerTransitGatewayPeering.transitGatewayPeeringAttachmentId())
///             .transitGatewayPolicyTableId(exampleAwsEc2TransitGatewayPolicyTable.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2transitgateway:PolicyTableAssociation
///     properties:
///       transitGatewayAttachmentId: ${exampleAwsNetworkmanagerTransitGatewayPeering.transitGatewayPeeringAttachmentId}
///       transitGatewayPolicyTableId: ${exampleAwsEc2TransitGatewayPolicyTable.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.ec2transitgateway.PolicyTableAssociation` using the EC2 Transit Gateway Policy Table identifier, an underscore, and the EC2 Transit Gateway Attachment identifier. For example:
///
/// ```sh
/// $ pulumi import aws:ec2transitgateway/policyTableAssociation:PolicyTableAssociation example tgw-rtb-12345678_tgw-attach-87654321
/// ```
class PolicyTableAssociation extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Identifier of the resource
  late final pulumi.Output<String> resourceId;

  /// Type of the resource
  late final pulumi.Output<String> resourceType;

  /// Identifier of EC2 Transit Gateway Attachment.
  late final pulumi.Output<String> transitGatewayAttachmentId;

  /// Identifier of EC2 Transit Gateway Policy Table.
  late final pulumi.Output<String> transitGatewayPolicyTableId;

  /// Creates a new [PolicyTableAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PolicyTableAssociation]. {@macro pulumi_ec2transitgateway_policy_table_association_policy_table_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PolicyTableAssociation(
    String name, {
    PolicyTableAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/policyTableAssociation:PolicyTableAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.resourceId = registerOutput<String>('resourceId');
    this.resourceType = registerOutput<String>('resourceType');
    this.transitGatewayAttachmentId =
        registerOutput<String>('transitGatewayAttachmentId');
    this.transitGatewayPolicyTableId =
        registerOutput<String>('transitGatewayPolicyTableId');
  }
}
