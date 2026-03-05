import 'package:pulumi/pulumi.dart' as pulumi;
import 'nat_gateway_eip_association_args.dart';
import 'nat_gateway_eip_association_state.dart';
import 'nat_gateway_eip_association_timeouts.dart';

/// Resource for managing an AWS VPC NAT Gateway EIP Association.
///
/// !&gt; **WARNING:** You should not use the `aws.ec2.NatGatewayEipAssociation` resource in conjunction with an `aws.ec2.NatGateway` resource that has `secondary_allocation_ids` configured. Doing so may cause perpetual differences, and result in associations being overwritten.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.NatGatewayEipAssociation("example", {
///     allocationId: exampleAwsEip.id,
///     natGatewayId: exampleAwsNatGateway.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.NatGatewayEipAssociation("example",
///     allocation_id=example_aws_eip["id"],
///     nat_gateway_id=example_aws_nat_gateway["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2.NatGatewayEipAssociation("example", new()
///     {
///         AllocationId = exampleAwsEip.Id,
///         NatGatewayId = exampleAwsNatGateway.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.NewNatGatewayEipAssociation(ctx, "example", &ec2.NatGatewayEipAssociationArgs{
/// 			AllocationId: pulumi.Any(exampleAwsEip.Id),
/// 			NatGatewayId: pulumi.Any(exampleAwsNatGateway.Id),
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
/// import com.pulumi.aws.ec2.NatGatewayEipAssociation;
/// import com.pulumi.aws.ec2.NatGatewayEipAssociationArgs;
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
///         var example = new NatGatewayEipAssociation("example", NatGatewayEipAssociationArgs.builder()
///             .allocationId(exampleAwsEip.id())
///             .natGatewayId(exampleAwsNatGateway.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:NatGatewayEipAssociation
///     properties:
///       allocationId: ${exampleAwsEip.id}
///       natGatewayId: ${exampleAwsNatGateway.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC NAT Gateway EIP Association using the `nat_gateway_id,allocation_id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/natGatewayEipAssociation:NatGatewayEipAssociation example nat-1234567890abcdef1,eipalloc-1234567890abcdef1
/// ```
class NatGatewayEipAssociation extends pulumi.CustomResource {
  /// The ID of the Elastic IP Allocation to associate with the NAT Gateway.
  late final pulumi.Output<String> allocationId;
  late final pulumi.Output<String> associationId;

  /// The ID of the NAT Gateway to associate the Elastic IP Allocation to.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> natGatewayId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<NatGatewayEipAssociationTimeouts?> timeouts;

  /// Creates a new [NatGatewayEipAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NatGatewayEipAssociation]. {@macro pulumi_ec2_nat_gateway_eip_association_nat_gateway_eip_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NatGatewayEipAssociation(
    String name, {
    NatGatewayEipAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ec2/natGatewayEipAssociation:NatGatewayEipAssociation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allocationId = registerOutput<String>('allocationId');
    associationId = registerOutput<String>('associationId');
    natGatewayId = registerOutput<String>('natGatewayId');
    region = registerOutput<String>('region');
    timeouts = registerOutput<NatGatewayEipAssociationTimeouts?>(
      'timeouts',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return NatGatewayEipAssociationTimeouts.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }

  /// Gets an existing [NatGatewayEipAssociation] resource's state with the given [name] and [id].
  static NatGatewayEipAssociation get(
    String name,
    pulumi.Input<String> id, {
    NatGatewayEipAssociationState? state,
  }) {
    return NatGatewayEipAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NatGatewayEipAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ec2/natGatewayEipAssociation:NatGatewayEipAssociation',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allocationId = registerOutput<String>('allocationId');
    associationId = registerOutput<String>('associationId');
    natGatewayId = registerOutput<String>('natGatewayId');
    region = registerOutput<String>('region');
    timeouts = registerOutput<NatGatewayEipAssociationTimeouts?>(
      'timeouts',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return NatGatewayEipAssociationTimeouts.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
