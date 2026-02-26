import 'package:pulumi/pulumi.dart';
import 'vpc_ipam_organization_admin_account_args.dart';

/// Enables the IPAM Service and promotes a delegated administrator.
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
/// const delegated = aws.getCallerIdentity({});
/// const example = new aws.ec2.VpcIpamOrganizationAdminAccount("example", {delegatedAdminAccountId: delegated.then(delegated => delegated.accountId)});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// delegated = aws.get_caller_identity()
/// example = aws.ec2.VpcIpamOrganizationAdminAccount("example", delegated_admin_account_id=delegated.account_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var delegated = Aws.GetCallerIdentity.Invoke();
///
/// var example = new Aws.Ec2.VpcIpamOrganizationAdminAccount("example", new()
/// {
/// DelegatedAdminAccountId = delegated.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// delegated, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewVpcIpamOrganizationAdminAccount(ctx, "example", &ec2.VpcIpamOrganizationAdminAccountArgs{
/// DelegatedAdminAccountId: pulumi.String(delegated.AccountId),
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.ec2.VpcIpamOrganizationAdminAccount;
/// import com.pulumi.aws.ec2.VpcIpamOrganizationAdminAccountArgs;
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
/// final var delegated = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
/// .build());
///
/// var example = new VpcIpamOrganizationAdminAccount("example", VpcIpamOrganizationAdminAccountArgs.builder()
/// .delegatedAdminAccountId(delegated.accountId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:VpcIpamOrganizationAdminAccount
/// properties:
/// delegatedAdminAccountId: ${delegated.accountId}
/// variables:
/// delegated:
/// fn::invoke:
/// function: aws:getCallerIdentity
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import IPAMs using the delegate account <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcIpamOrganizationAdminAccount:VpcIpamOrganizationAdminAccount example 12345678901
/// ```
class VpcIpamOrganizationAdminAccount extends CustomResource {
  /// The Organizations ARN for the delegate account.
  late final Output<String> arn;
  late final Output<String> delegatedAdminAccountId;

  /// The Organizations email for the delegate account.
  late final Output<String> email;

  /// The Organizations name for the delegate account.
  late final Output<String> name;

  /// The AWS service principal.
  late final Output<String> servicePrincipal;

  VpcIpamOrganizationAdminAccount(
    String name, {
    VpcIpamOrganizationAdminAccountArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcIpamOrganizationAdminAccount:VpcIpamOrganizationAdminAccount',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.delegatedAdminAccountId = Output.createUnknown<String>();
    this.email = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.servicePrincipal = Output.createUnknown<String>();
  }
}
