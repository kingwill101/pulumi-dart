import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_group_vpc_association_args.dart';
import 'security_group_vpc_association_timeouts.dart';

/// Resource for managing Security Group VPC Associations.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.vpc.SecurityGroupVpcAssociation("example", {
///     securityGroupId: "sg-05f1f54ab49bb39a3",
///     vpcId: "vpc-01df9d105095412ba",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpc.SecurityGroupVpcAssociation("example",
///     security_group_id="sg-05f1f54ab49bb39a3",
///     vpc_id="vpc-01df9d105095412ba")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Vpc.SecurityGroupVpcAssociation("example", new()
///     {
///         SecurityGroupId = "sg-05f1f54ab49bb39a3",
///         VpcId = "vpc-01df9d105095412ba",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vpc.NewSecurityGroupVpcAssociation(ctx, "example", &vpc.SecurityGroupVpcAssociationArgs{
/// 			SecurityGroupId: pulumi.String("sg-05f1f54ab49bb39a3"),
/// 			VpcId:           pulumi.String("vpc-01df9d105095412ba"),
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
/// import com.pulumi.aws.vpc.SecurityGroupVpcAssociation;
/// import com.pulumi.aws.vpc.SecurityGroupVpcAssociationArgs;
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
///         var example = new SecurityGroupVpcAssociation("example", SecurityGroupVpcAssociationArgs.builder()
///             .securityGroupId("sg-05f1f54ab49bb39a3")
///             .vpcId("vpc-01df9d105095412ba")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:vpc:SecurityGroupVpcAssociation
///     properties:
///       securityGroupId: sg-05f1f54ab49bb39a3
///       vpcId: vpc-01df9d105095412ba
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `vpc_id` (String) VPC ID.
/// * `security_group_id` (String) Security Group ID.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import a Security Group VPC Association using the `security_group_id` and `vpc_id` arguments, separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:vpc/securityGroupVpcAssociation:SecurityGroupVpcAssociation example sg-12345,vpc-67890
/// ```
class SecurityGroupVpcAssociation extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The ID of the security group.
  late final pulumi.Output<String> securityGroupId;
  /// State of the VPC association. See the [AWS documentation](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SecurityGroupVpcAssociation.html) for possible values.
  late final pulumi.Output<String> state;
  late final pulumi.Output<SecurityGroupVpcAssociationTimeouts?> timeouts;
  /// The ID of the VPC to make the association with.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [SecurityGroupVpcAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityGroupVpcAssociation]. {@macro pulumi_vpc_security_group_vpc_association_security_group_vpc_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityGroupVpcAssociation(
    String name, {
    SecurityGroupVpcAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:vpc/securityGroupVpcAssociation:SecurityGroupVpcAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.securityGroupId = registerOutput<String>('securityGroupId');
    this.state = registerOutput<String>('state');
    this.timeouts = registerOutput<SecurityGroupVpcAssociationTimeouts?>('timeouts');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
