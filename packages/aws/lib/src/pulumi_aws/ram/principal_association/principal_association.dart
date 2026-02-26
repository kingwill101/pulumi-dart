import 'package:pulumi/pulumi.dart';
import 'principal_association_args.dart';

/// Provides a Resource Access Manager (RAM) principal association. Depending if [RAM Sharing with AWS Organizations is enabled](https://docs.aws.amazon.com/ram/latest/userguide/getting-started-sharing.html#getting-started-sharing-orgs), the RAM behavior with different principal types changes.
///
/// When RAM Sharing with AWS Organizations is enabled:
///
/// - For AWS Account ID, Organization, and Organizational Unit principals within the same AWS Organization, no resource share invitation is sent and resources become available automatically after creating the association.
/// - For AWS Account ID principals outside the AWS Organization, a resource share invitation is sent and must be accepted before resources become available. See the <span pulumi-lang-nodejs="`aws.ram.ResourceShareAccepter`" pulumi-lang-dotnet="`aws.ram.ResourceShareAccepter`" pulumi-lang-go="`ram.ResourceShareAccepter`" pulumi-lang-python="`ram.ResourceShareAccepter`" pulumi-lang-yaml="`aws.ram.ResourceShareAccepter`" pulumi-lang-java="`aws.ram.ResourceShareAccepter`">`aws.ram.ResourceShareAccepter`</span> resource to accept these invitations.
///
/// When RAM Sharing with AWS Organizations is not enabled:
///
/// - Organization and Organizational Unit principals cannot be used.
/// - For AWS Account ID principals, a resource share invitation is sent and must be accepted before resources become available. See the <span pulumi-lang-nodejs="`aws.ram.ResourceShareAccepter`" pulumi-lang-dotnet="`aws.ram.ResourceShareAccepter`" pulumi-lang-go="`ram.ResourceShareAccepter`" pulumi-lang-python="`ram.ResourceShareAccepter`" pulumi-lang-yaml="`aws.ram.ResourceShareAccepter`" pulumi-lang-java="`aws.ram.ResourceShareAccepter`">`aws.ram.ResourceShareAccepter`</span> resource to accept these invitations.
///
/// ## Example Usage
///
/// ### AWS Account ID
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ram.ResourceShare("example", {allowExternalPrincipals: true});
/// const examplePrincipalAssociation = new aws.ram.PrincipalAssociation("example", {
/// principal: "111111111111",
/// resourceShareArn: example.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ram.ResourceShare("example", allow_external_principals=True)
/// example_principal_association = aws.ram.PrincipalAssociation("example",
/// principal="111111111111",
/// resource_share_arn=example.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ram.ResourceShare("example", new()
/// {
/// AllowExternalPrincipals = true,
/// });
///
/// var examplePrincipalAssociation = new Aws.Ram.PrincipalAssociation("example", new()
/// {
/// Principal = "111111111111",
/// ResourceShareArn = example.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ram"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := ram.NewResourceShare(ctx, "example", &ram.ResourceShareArgs{
/// AllowExternalPrincipals: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ram.NewPrincipalAssociation(ctx, "example", &ram.PrincipalAssociationArgs{
/// Principal:        pulumi.String("111111111111"),
/// ResourceShareArn: example.Arn,
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
/// import com.pulumi.aws.ram.ResourceShare;
/// import com.pulumi.aws.ram.ResourceShareArgs;
/// import com.pulumi.aws.ram.PrincipalAssociation;
/// import com.pulumi.aws.ram.PrincipalAssociationArgs;
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
/// var example = new ResourceShare("example", ResourceShareArgs.builder()
/// .allowExternalPrincipals(true)
/// .build());
///
/// var examplePrincipalAssociation = new PrincipalAssociation("examplePrincipalAssociation", PrincipalAssociationArgs.builder()
/// .principal("111111111111")
/// .resourceShareArn(example.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ram:ResourceShare
/// properties:
/// allowExternalPrincipals: true
/// examplePrincipalAssociation:
/// type: aws:ram:PrincipalAssociation
/// name: example
/// properties:
/// principal: '111111111111'
/// resourceShareArn: ${example.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### AWS Organization
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ram.PrincipalAssociation("example", {
/// principal: exampleAwsOrganizationsOrganization.arn,
/// resourceShareArn: exampleAwsRamResourceShare.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ram.PrincipalAssociation("example",
/// principal=example_aws_organizations_organization["arn"],
/// resource_share_arn=example_aws_ram_resource_share["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ram.PrincipalAssociation("example", new()
/// {
/// Principal = exampleAwsOrganizationsOrganization.Arn,
/// ResourceShareArn = exampleAwsRamResourceShare.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ram"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ram.NewPrincipalAssociation(ctx, "example", &ram.PrincipalAssociationArgs{
/// Principal:        pulumi.Any(exampleAwsOrganizationsOrganization.Arn),
/// ResourceShareArn: pulumi.Any(exampleAwsRamResourceShare.Arn),
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
/// import com.pulumi.aws.ram.PrincipalAssociation;
/// import com.pulumi.aws.ram.PrincipalAssociationArgs;
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
/// var example = new PrincipalAssociation("example", PrincipalAssociationArgs.builder()
/// .principal(exampleAwsOrganizationsOrganization.arn())
/// .resourceShareArn(exampleAwsRamResourceShare.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ram:PrincipalAssociation
/// properties:
/// principal: ${exampleAwsOrganizationsOrganization.arn}
/// resourceShareArn: ${exampleAwsRamResourceShare.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import RAM Principal Associations using their Resource Share ARN and the <span pulumi-lang-nodejs="`principal`" pulumi-lang-dotnet="`Principal`" pulumi-lang-go="`principal`" pulumi-lang-python="`principal`" pulumi-lang-yaml="`principal`" pulumi-lang-java="`principal`">`principal`</span> separated by a comma. For example:
///
/// ```sh
/// $ pulumi import aws:ram/principalAssociation:PrincipalAssociation example arn:aws:ram:eu-west-1:123456789012:resource-share/73da1ab9-b94a-4ba3-8eb4-45917f7f4b12,123456789012
/// ```
class PrincipalAssociation extends CustomResource {
  /// The principal to associate with the resource share. Possible values are an AWS account ID, an AWS Organizations Organization ARN, or an AWS Organizations Organization Unit ARN.
  late final Output<String> principal;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon Resource Name (ARN) of the resource share.
  late final Output<String> resourceShareArn;

  PrincipalAssociation(
    String name, {
    PrincipalAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ram/principalAssociation:PrincipalAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.principal = registerOutput<String>('principal');
    this.region = registerOutput<String>('region');
    this.resourceShareArn = registerOutput<String>('resourceShareArn');
  }
}
