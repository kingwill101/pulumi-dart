import 'package:pulumi/pulumi.dart';
import '../security_group_vpc_association_timeouts/security_group_vpc_association_timeouts.dart';
import 'security_group_vpc_association_args.dart';

/// Resource for managing Security Group VPC Associations.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.vpc.SecurityGroupVpcAssociation("example", {
/// securityGroupId: "sg-05f1f54ab49bb39a3",
/// vpcId: "vpc-01df9d105095412ba",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpc.SecurityGroupVpcAssociation("example",
/// security_group_id="sg-05f1f54ab49bb39a3",
/// vpc_id="vpc-01df9d105095412ba")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Vpc.SecurityGroupVpcAssociation("example", new()
/// {
/// SecurityGroupId = "sg-05f1f54ab49bb39a3",
/// VpcId = "vpc-01df9d105095412ba",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpc"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := vpc.NewSecurityGroupVpcAssociation(ctx, "example", &vpc.SecurityGroupVpcAssociationArgs{
/// SecurityGroupId: pulumi.String("sg-05f1f54ab49bb39a3"),
/// VpcId:           pulumi.String("vpc-01df9d105095412ba"),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new SecurityGroupVpcAssociation("example", SecurityGroupVpcAssociationArgs.builder()
/// .securityGroupId("sg-05f1f54ab49bb39a3")
/// .vpcId("vpc-01df9d105095412ba")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:vpc:SecurityGroupVpcAssociation
/// properties:
/// securityGroupId: sg-05f1f54ab49bb39a3
/// vpcId: vpc-01df9d105095412ba
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`vpcId`" pulumi-lang-dotnet="`VpcId`" pulumi-lang-go="`vpcId`" pulumi-lang-python="`vpc_id`" pulumi-lang-yaml="`vpcId`" pulumi-lang-java="`vpcId`">`vpc_id`</span> (String) VPC ID.
/// * <span pulumi-lang-nodejs="`securityGroupId`" pulumi-lang-dotnet="`SecurityGroupId`" pulumi-lang-go="`securityGroupId`" pulumi-lang-python="`security_group_id`" pulumi-lang-yaml="`securityGroupId`" pulumi-lang-java="`securityGroupId`">`security_group_id`</span> (String) Security Group ID.
///
/// #### Optional
///
/// * <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> (String) AWS Account where this resource is managed.
/// * <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span> (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import a Security Group VPC Association using the <span pulumi-lang-nodejs="`securityGroupId`" pulumi-lang-dotnet="`SecurityGroupId`" pulumi-lang-go="`securityGroupId`" pulumi-lang-python="`security_group_id`" pulumi-lang-yaml="`securityGroupId`" pulumi-lang-java="`securityGroupId`">`security_group_id`</span> and <span pulumi-lang-nodejs="`vpcId`" pulumi-lang-dotnet="`VpcId`" pulumi-lang-go="`vpcId`" pulumi-lang-python="`vpc_id`" pulumi-lang-yaml="`vpcId`" pulumi-lang-java="`vpcId`">`vpc_id`</span> arguments, separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:vpc/securityGroupVpcAssociation:SecurityGroupVpcAssociation example sg-12345,vpc-67890
/// ```
class SecurityGroupVpcAssociation extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ID of the security group.
  late final Output<String> securityGroupId;

  /// State of the VPC association. See the [AWS documentation](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SecurityGroupVpcAssociation.html) for possible values.
  late final Output<String> state;
  late final Output<SecurityGroupVpcAssociationTimeouts?> timeouts;

  /// The ID of the VPC to make the association with.
  late final Output<String> vpcId;

  SecurityGroupVpcAssociation(
    String name, {
    SecurityGroupVpcAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:vpc/securityGroupVpcAssociation:SecurityGroupVpcAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = Output.createUnknown<String>();
    this.securityGroupId = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.timeouts =
        Output.createUnknown<SecurityGroupVpcAssociationTimeouts?>();
    this.vpcId = Output.createUnknown<String>();
  }
}
