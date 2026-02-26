import 'package:pulumi/pulumi.dart';
import 'security_group_association_args.dart';

/// Provides a resource to create an association between a VPC endpoint and a security group.
///
/// > **NOTE on VPC Endpoints and VPC Endpoint Security Group Associations:** The provider provides
/// both a standalone VPC Endpoint Security Group Association (an association between a VPC endpoint
/// and a single <span pulumi-lang-nodejs="`securityGroupId`" pulumi-lang-dotnet="`SecurityGroupId`" pulumi-lang-go="`securityGroupId`" pulumi-lang-python="`security_group_id`" pulumi-lang-yaml="`securityGroupId`" pulumi-lang-java="`securityGroupId`">`security_group_id`</span>) and a VPC Endpoint resource with a <span pulumi-lang-nodejs="`securityGroupIds`" pulumi-lang-dotnet="`SecurityGroupIds`" pulumi-lang-go="`securityGroupIds`" pulumi-lang-python="`security_group_ids`" pulumi-lang-yaml="`securityGroupIds`" pulumi-lang-java="`securityGroupIds`">`security_group_ids`</span>
/// attribute. Do not use the same security group ID in both a VPC Endpoint resource and a VPC Endpoint Security
/// Group Association resource. Doing so will cause a conflict of associations and will overwrite the association.
///
/// ## Example Usage
///
/// Basic usage:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const sgEc2 = new aws.ec2.SecurityGroupAssociation("sg_ec2", {
/// vpcEndpointId: ec2.id,
/// securityGroupId: sg.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// sg_ec2 = aws.ec2.SecurityGroupAssociation("sg_ec2",
/// vpc_endpoint_id=ec2["id"],
/// security_group_id=sg["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var sgEc2 = new Aws.Ec2.SecurityGroupAssociation("sg_ec2", new()
/// {
/// VpcEndpointId = ec2.Id,
/// SecurityGroupId = sg.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2.NewSecurityGroupAssociation(ctx, "sg_ec2", &ec2.SecurityGroupAssociationArgs{
/// VpcEndpointId:   pulumi.Any(ec2.Id),
/// SecurityGroupId: pulumi.Any(sg.Id),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var sgEc2 = new SecurityGroupAssociation("sgEc2", SecurityGroupAssociationArgs.builder()
/// .vpcEndpointId(ec2.id())
/// .securityGroupId(sg.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// sgEc2:
/// type: aws:ec2:SecurityGroupAssociation
/// name: sg_ec2
/// properties:
/// vpcEndpointId: ${ec2.id}
/// securityGroupId: ${sg.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import VPC Endpoint Security Group Associations using <span pulumi-lang-nodejs="`vpcEndpointId`" pulumi-lang-dotnet="`VpcEndpointId`" pulumi-lang-go="`vpcEndpointId`" pulumi-lang-python="`vpc_endpoint_id`" pulumi-lang-yaml="`vpcEndpointId`" pulumi-lang-java="`vpcEndpointId`">`vpc_endpoint_id`</span> together with <span pulumi-lang-nodejs="`securityGroupId`" pulumi-lang-dotnet="`SecurityGroupId`" pulumi-lang-go="`securityGroupId`" pulumi-lang-python="`security_group_id`" pulumi-lang-yaml="`securityGroupId`" pulumi-lang-java="`securityGroupId`">`security_group_id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/securityGroupAssociation:SecurityGroupAssociation example vpce-aaaaaaaa/sg-bbbbbbbbbbbbbbbbb
/// ```
class SecurityGroupAssociation extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Whether this association should replace the association with the VPC's default security group that is created when no security groups are specified during VPC endpoint creation. At most 1 association per-VPC endpoint should be configured with <span pulumi-lang-nodejs="`replaceDefaultAssociation " pulumi-lang-dotnet="`ReplaceDefaultAssociation " pulumi-lang-go="`replaceDefaultAssociation " pulumi-lang-python="`replace_default_association " pulumi-lang-yaml="`replaceDefaultAssociation " pulumi-lang-java="`replaceDefaultAssociation ">`replace_default_association </span>= true`. <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> should be used when importing resources.
  late final Output<bool?> replaceDefaultAssociation;

  /// The ID of the security group to be associated with the VPC endpoint.
  late final Output<String> securityGroupId;

  /// The ID of the VPC endpoint with which the security group will be associated.
  late final Output<String> vpcEndpointId;

  SecurityGroupAssociation(
    String name, {
    SecurityGroupAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/securityGroupAssociation:SecurityGroupAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = Output.createUnknown<String>();
    this.replaceDefaultAssociation = Output.createUnknown<bool?>();
    this.securityGroupId = Output.createUnknown<String>();
    this.vpcEndpointId = Output.createUnknown<String>();
  }
}
