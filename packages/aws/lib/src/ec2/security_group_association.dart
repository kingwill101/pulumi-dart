import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_group_association_args.dart';

/// Provides a resource to create an association between a VPC endpoint and a security group.
///
/// > **NOTE on VPC Endpoints and VPC Endpoint Security Group Associations:** The provider provides
/// both a standalone VPC Endpoint Security Group Association (an association between a VPC endpoint
/// and a single `security_group_id`) and a VPC Endpoint resource with a `security_group_ids`
/// attribute. Do not use the same security group ID in both a VPC Endpoint resource and a VPC Endpoint Security
/// Group Association resource. Doing so will cause a conflict of associations and will overwrite the association.
///
/// ## Example Usage
///
/// Basic usage:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const sgEc2 = new aws.ec2.SecurityGroupAssociation("sg_ec2", {
///     vpcEndpointId: ec2.id,
///     securityGroupId: sg.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// sg_ec2 = aws.ec2.SecurityGroupAssociation("sg_ec2",
///     vpc_endpoint_id=ec2["id"],
///     security_group_id=sg["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sgEc2 = new Aws.Ec2.SecurityGroupAssociation("sg_ec2", new()
///     {
///         VpcEndpointId = ec2.Id,
///         SecurityGroupId = sg.Id,
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
/// 		_, err := ec2.NewSecurityGroupAssociation(ctx, "sg_ec2", &ec2.SecurityGroupAssociationArgs{
/// 			VpcEndpointId:   pulumi.Any(ec2.Id),
/// 			SecurityGroupId: pulumi.Any(sg.Id),
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
/// import com.pulumi.aws.ec2.SecurityGroupAssociation;
/// import com.pulumi.aws.ec2.SecurityGroupAssociationArgs;
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
///         var sgEc2 = new SecurityGroupAssociation("sgEc2", SecurityGroupAssociationArgs.builder()
///             .vpcEndpointId(ec2.id())
///             .securityGroupId(sg.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sgEc2:
///     type: aws:ec2:SecurityGroupAssociation
///     name: sg_ec2
///     properties:
///       vpcEndpointId: ${ec2.id}
///       securityGroupId: ${sg.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Endpoint Security Group Associations using `vpc_endpoint_id` together with `security_group_id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/securityGroupAssociation:SecurityGroupAssociation example vpce-aaaaaaaa/sg-bbbbbbbbbbbbbbbbb
/// ```
class SecurityGroupAssociation extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Whether this association should replace the association with the VPC's default security group that is created when no security groups are specified during VPC endpoint creation. At most 1 association per-VPC endpoint should be configured with `replace_default_association = true`. `false` should be used when importing resources.
  late final pulumi.Output<bool?> replaceDefaultAssociation;

  /// The ID of the security group to be associated with the VPC endpoint.
  late final pulumi.Output<String> securityGroupId;

  /// The ID of the VPC endpoint with which the security group will be associated.
  late final pulumi.Output<String> vpcEndpointId;

  /// Creates a new [SecurityGroupAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityGroupAssociation]. {@macro pulumi_ec2_security_group_association_security_group_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityGroupAssociation(
    String name, {
    SecurityGroupAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ec2/securityGroupAssociation:SecurityGroupAssociation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.region = registerOutput<String>('region');
    this.replaceDefaultAssociation = registerOutput<bool?>(
      'replaceDefaultAssociation',
    );
    this.securityGroupId = registerOutput<String>('securityGroupId');
    this.vpcEndpointId = registerOutput<String>('vpcEndpointId');
  }
}
