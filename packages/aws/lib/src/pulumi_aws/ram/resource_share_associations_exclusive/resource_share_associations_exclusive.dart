import 'package:pulumi/pulumi.dart';
import 'resource_share_associations_exclusive_args.dart';

/// Resource for maintaining exclusive management of principal and resource associations for an AWS RAM (Resource Access Manager) Resource Share.
///
/// !> This resource takes exclusive ownership over principal and resource associations for a resource share. This includes removal of principals and resources which are not explicitly configured.
///
/// > Destruction of this resource will disassociate all configured principals and resources from the resource share.
///
/// > **NOTE:** This resource cannot be used in conjunction with <span pulumi-lang-nodejs="`aws.ram.PrincipalAssociation`" pulumi-lang-dotnet="`aws.ram.PrincipalAssociation`" pulumi-lang-go="`ram.PrincipalAssociation`" pulumi-lang-python="`ram.PrincipalAssociation`" pulumi-lang-yaml="`aws.ram.PrincipalAssociation`" pulumi-lang-java="`aws.ram.PrincipalAssociation`">`aws.ram.PrincipalAssociation`</span> or <span pulumi-lang-nodejs="`aws.ram.ResourceAssociation`" pulumi-lang-dotnet="`aws.ram.ResourceAssociation`" pulumi-lang-go="`ram.ResourceAssociation`" pulumi-lang-python="`ram.ResourceAssociation`" pulumi-lang-yaml="`aws.ram.ResourceAssociation`" pulumi-lang-java="`aws.ram.ResourceAssociation`">`aws.ram.ResourceAssociation`</span> for the same resource share. Using them together will cause persistent drift and conflicts.
///
/// ## Example Usage
///
/// ### Basic Usage with Principals
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ram.ResourceShare("example", {
/// name: "example",
/// allowExternalPrincipals: true,
/// });
/// const exampleVpc = new aws.ec2.Vpc("example", {cidrBlock: "10.0.0.0/16"});
/// const exampleSubnet = new aws.ec2.Subnet("example", {
/// vpcId: exampleVpc.id,
/// cidrBlock: "10.0.1.0/24",
/// });
/// const exampleResourceShareAssociationsExclusive = new aws.ram.ResourceShareAssociationsExclusive("example", {
/// resourceShareArn: example.arn,
/// principals: [
/// "111111111111",
/// "222222222222",
/// ],
/// resourceArns: [exampleSubnet.arn],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ram.ResourceShare("example",
/// name="example",
/// allow_external_principals=True)
/// example_vpc = aws.ec2.Vpc("example", cidr_block="10.0.0.0/16")
/// example_subnet = aws.ec2.Subnet("example",
/// vpc_id=example_vpc.id,
/// cidr_block="10.0.1.0/24")
/// example_resource_share_associations_exclusive = aws.ram.ResourceShareAssociationsExclusive("example",
/// resource_share_arn=example.arn,
/// principals=[
/// "111111111111",
/// "222222222222",
/// ],
/// resource_arns=[example_subnet.arn])
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
/// Name = "example",
/// AllowExternalPrincipals = true,
/// });
///
/// var exampleVpc = new Aws.Ec2.Vpc("example", new()
/// {
/// CidrBlock = "10.0.0.0/16",
/// });
///
/// var exampleSubnet = new Aws.Ec2.Subnet("example", new()
/// {
/// VpcId = exampleVpc.Id,
/// CidrBlock = "10.0.1.0/24",
/// });
///
/// var exampleResourceShareAssociationsExclusive = new Aws.Ram.ResourceShareAssociationsExclusive("example", new()
/// {
/// ResourceShareArn = example.Arn,
/// Principals = new[]
/// {
/// "111111111111",
/// "222222222222",
/// },
/// ResourceArns = new[]
/// {
/// exampleSubnet.Arn,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ram"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := ram.NewResourceShare(ctx, "example", &ram.ResourceShareArgs{
/// Name:                    pulumi.String("example"),
/// AllowExternalPrincipals: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// exampleVpc, err := ec2.NewVpc(ctx, "example", &ec2.VpcArgs{
/// CidrBlock: pulumi.String("10.0.0.0/16"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleSubnet, err := ec2.NewSubnet(ctx, "example", &ec2.SubnetArgs{
/// VpcId:     exampleVpc.ID(),
/// CidrBlock: pulumi.String("10.0.1.0/24"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ram.NewResourceShareAssociationsExclusive(ctx, "example", &ram.ResourceShareAssociationsExclusiveArgs{
/// ResourceShareArn: example.Arn,
/// Principals: pulumi.StringArray{
/// pulumi.String("111111111111"),
/// pulumi.String("222222222222"),
/// },
/// ResourceArns: pulumi.StringArray{
/// exampleSubnet.Arn,
/// },
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
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.ec2.Subnet;
/// import com.pulumi.aws.ec2.SubnetArgs;
/// import com.pulumi.aws.ram.ResourceShareAssociationsExclusive;
/// import com.pulumi.aws.ram.ResourceShareAssociationsExclusiveArgs;
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
/// .name("example")
/// .allowExternalPrincipals(true)
/// .build());
///
/// var exampleVpc = new Vpc("exampleVpc", VpcArgs.builder()
/// .cidrBlock("10.0.0.0/16")
/// .build());
///
/// var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
/// .vpcId(exampleVpc.id())
/// .cidrBlock("10.0.1.0/24")
/// .build());
///
/// var exampleResourceShareAssociationsExclusive = new ResourceShareAssociationsExclusive("exampleResourceShareAssociationsExclusive", ResourceShareAssociationsExclusiveArgs.builder()
/// .resourceShareArn(example.arn())
/// .principals(
/// "111111111111",
/// "222222222222")
/// .resourceArns(exampleSubnet.arn())
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
/// name: example
/// allowExternalPrincipals: true
/// exampleVpc:
/// type: aws:ec2:Vpc
/// name: example
/// properties:
/// cidrBlock: 10.0.0.0/16
/// exampleSubnet:
/// type: aws:ec2:Subnet
/// name: example
/// properties:
/// vpcId: ${exampleVpc.id}
/// cidrBlock: 10.0.1.0/24
/// exampleResourceShareAssociationsExclusive:
/// type: aws:ram:ResourceShareAssociationsExclusive
/// name: example
/// properties:
/// resourceShareArn: ${example.arn}
/// principals:
/// - '111111111111'
/// - '222222222222'
/// resourceArns:
/// - ${exampleSubnet.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With Organization Principal
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = new aws.ram.ResourceShare("example", {name: "example"});
/// const exampleVpc = new aws.ec2.Vpc("example", {cidrBlock: "10.0.0.0/16"});
/// const exampleSubnet: aws.ec2.Subnet[] = [];
/// for (const range = {value: 0}; range.value < 2; range.value++) {
/// exampleSubnet.push(new aws.ec2.Subnet(`example-${range.value}`, {
/// vpcId: exampleVpc.id,
/// cidrBlock: exampleVpc.cidrBlock.apply(cidrBlock => std.cidrsubnetOutput({
/// input: cidrBlock,
/// newbits: 8,
/// netnum: range.value,
/// })).apply(invoke => invoke.result),
/// }));
/// }
/// const exampleResourceShareAssociationsExclusive = new aws.ram.ResourceShareAssociationsExclusive("example", {
/// resourceShareArn: example.arn,
/// principals: [exampleAwsOrganizationsOrganization.arn],
/// resourceArns: exampleSubnet.map(__item => __item.arn),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.ram.ResourceShare("example", name="example")
/// example_vpc = aws.ec2.Vpc("example", cidr_block="10.0.0.0/16")
/// example_subnet = []
/// for range in [{"value": i} for i in range(0, 2)]:
/// example_subnet.append(aws.ec2.Subnet(f"example-{range['value']}",
/// vpc_id=example_vpc.id,
/// cidr_block=example_vpc.cidr_block.apply(lambda cidr_block: std.cidrsubnet_output(input=cidr_block,
/// newbits=8,
/// netnum=range["value"])).apply(lambda invoke: invoke.result)))
/// example_resource_share_associations_exclusive = aws.ram.ResourceShareAssociationsExclusive("example",
/// resource_share_arn=example.arn,
/// principals=[example_aws_organizations_organization["arn"]],
/// resource_arns=[__item.arn for __item in example_subnet])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ram.ResourceShare("example", new()
/// {
/// Name = "example",
/// });
///
/// var exampleVpc = new Aws.Ec2.Vpc("example", new()
/// {
/// CidrBlock = "10.0.0.0/16",
/// });
///
/// var exampleSubnet = new List<Aws.Ec2.Subnet>();
/// for (var rangeIndex = 0; rangeIndex < 2; rangeIndex++)
/// {
/// var range = new { Value = rangeIndex };
/// exampleSubnet.Add(new Aws.Ec2.Subnet($"example-{range.Value}", new()
/// {
/// VpcId = exampleVpc.Id,
/// CidrBlock = exampleVpc.CidrBlock.Apply(cidrBlock => Std.Cidrsubnet.Invoke(new()
/// {
/// Input = cidrBlock,
/// Newbits = 8,
/// Netnum = range.Value,
/// })).Apply(invoke => invoke.Result),
/// }));
/// }
/// var exampleResourceShareAssociationsExclusive = new Aws.Ram.ResourceShareAssociationsExclusive("example", new()
/// {
/// ResourceShareArn = example.Arn,
/// Principals = new[]
/// {
/// exampleAwsOrganizationsOrganization.Arn,
/// },
/// ResourceArns = exampleSubnet.Select(__item => __item.Arn).ToList(),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ram"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := ram.NewResourceShare(ctx, "example", &ram.ResourceShareArgs{
/// Name: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleVpc, err := ec2.NewVpc(ctx, "example", &ec2.VpcArgs{
/// CidrBlock: pulumi.String("10.0.0.0/16"),
/// })
/// if err != nil {
/// return err
/// }
/// invokeCidrsubnet, err := std.Cidrsubnet(ctx, &std.CidrsubnetArgs{
/// Input: cidrBlock,
/// Newbits: 8,
/// Netnum: val0,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// var exampleSubnet []*ec2.Subnet
/// for index := 0; index < 2; index++ {
/// key0 := index
/// _ := index
/// __res, err := ec2.NewSubnet(ctx, fmt.Sprintf("example-%v", key0), &ec2.SubnetArgs{
/// VpcId: exampleVpc.ID(),
/// CidrBlock: pulumi.String(exampleVpc.CidrBlock.ApplyT(func(cidrBlock string) (std.CidrsubnetResult, error) {
/// %!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference)).(std.CidrsubnetResultOutput).ApplyT(func(invoke std.CidrsubnetResult) (*string, error) {
/// return invoke.Result, nil
/// }).(pulumi.StringPtrOutput)),
/// })
/// if err != nil {
/// return err
/// }
/// exampleSubnet = append(exampleSubnet, __res)
/// }
/// var splat0 pulumi.StringArray
/// for _, val0 := range exampleSubnet {
/// splat0 = append(splat0, val0.Arn)
/// }
/// _, err = ram.NewResourceShareAssociationsExclusive(ctx, "example", &ram.ResourceShareAssociationsExclusiveArgs{
/// ResourceShareArn: example.Arn,
/// Principals: pulumi.StringArray{
/// exampleAwsOrganizationsOrganization.Arn,
/// },
/// ResourceArns: splat0,
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
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.ec2.Subnet;
/// import com.pulumi.aws.ec2.SubnetArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.CidrsubnetArgs;
/// import com.pulumi.aws.ram.ResourceShareAssociationsExclusive;
/// import com.pulumi.aws.ram.ResourceShareAssociationsExclusiveArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
/// .name("example")
/// .build());
///
/// var exampleVpc = new Vpc("exampleVpc", VpcArgs.builder()
/// .cidrBlock("10.0.0.0/16")
/// .build());
///
/// for (var i = 0; i < 2; i++) {
/// new Subnet("exampleSubnet-" + i, SubnetArgs.builder()
/// .vpcId(exampleVpc.id())
/// .cidrBlock(exampleVpc.cidrBlock().applyValue(_cidrBlock -> StdFunctions.cidrsubnet(CidrsubnetArgs.builder()
/// .input(_cidrBlock)
/// .newbits(8)
/// .netnum(range.value())
/// .build())).applyValue(_invoke -> _invoke.result()))
/// .build());
///
///
/// }
/// var exampleResourceShareAssociationsExclusive = new ResourceShareAssociationsExclusive("exampleResourceShareAssociationsExclusive", ResourceShareAssociationsExclusiveArgs.builder()
/// .resourceShareArn(example.arn())
/// .principals(exampleAwsOrganizationsOrganization.arn())
/// .resourceArns(exampleSubnet.stream().map(element -> element.arn()).collect(toList()))
/// .build());
///
/// }
/// }
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With Service Principals
///
/// When sharing resources with AWS services, use service principals. Service principals follow the pattern `service-id.amazonaws.com` (e.g., `pca-connector-ad.amazonaws.com`, `elasticmapreduce.amazonaws.com`). The <span pulumi-lang-nodejs="`sources`" pulumi-lang-dotnet="`Sources`" pulumi-lang-go="`sources`" pulumi-lang-python="`sources`" pulumi-lang-yaml="`sources`" pulumi-lang-java="`sources`">`sources`</span> argument can be used to restrict which AWS accounts the service can access the shared resources from.
///
/// > **NOTE:** Service principals cannot be mixed with other principal types (AWS account IDs, organization ARNs, OU ARNs, IAM role ARNs, or IAM user ARNs) in the same resource.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ram.ResourceShare("example", {
/// name: "example-service-share",
/// allowExternalPrincipals: true,
/// });
/// const exampleCertificateAuthority = new aws.acmpca.CertificateAuthority("example", {
/// type: "ROOT",
/// certificateAuthorityConfiguration: {
/// keyAlgorithm: "RSA_4096",
/// signingAlgorithm: "SHA512WITHRSA",
/// subject: {
/// commonName: "example.com",
/// },
/// },
/// });
/// const exampleResourceShareAssociationsExclusive = new aws.ram.ResourceShareAssociationsExclusive("example", {
/// resourceShareArn: example.arn,
/// principals: ["pca-connector-ad.amazonaws.com"],
/// resourceArns: [exampleCertificateAuthority.arn],
/// sources: [
/// "111111111111",
/// "222222222222",
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ram.ResourceShare("example",
/// name="example-service-share",
/// allow_external_principals=True)
/// example_certificate_authority = aws.acmpca.CertificateAuthority("example",
/// type="ROOT",
/// certificate_authority_configuration={
/// "key_algorithm": "RSA_4096",
/// "signing_algorithm": "SHA512WITHRSA",
/// "subject": {
/// "common_name": "example.com",
/// },
/// })
/// example_resource_share_associations_exclusive = aws.ram.ResourceShareAssociationsExclusive("example",
/// resource_share_arn=example.arn,
/// principals=["pca-connector-ad.amazonaws.com"],
/// resource_arns=[example_certificate_authority.arn],
/// sources=[
/// "111111111111",
/// "222222222222",
/// ])
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
/// Name = "example-service-share",
/// AllowExternalPrincipals = true,
/// });
///
/// var exampleCertificateAuthority = new Aws.Acmpca.CertificateAuthority("example", new()
/// {
/// Type = "ROOT",
/// CertificateAuthorityConfiguration = new Aws.Acmpca.Inputs.CertificateAuthorityCertificateAuthorityConfigurationArgs
/// {
/// KeyAlgorithm = "RSA_4096",
/// SigningAlgorithm = "SHA512WITHRSA",
/// Subject = new Aws.Acmpca.Inputs.CertificateAuthorityCertificateAuthorityConfigurationSubjectArgs
/// {
/// CommonName = "example.com",
/// },
/// },
/// });
///
/// var exampleResourceShareAssociationsExclusive = new Aws.Ram.ResourceShareAssociationsExclusive("example", new()
/// {
/// ResourceShareArn = example.Arn,
/// Principals = new[]
/// {
/// "pca-connector-ad.amazonaws.com",
/// },
/// ResourceArns = new[]
/// {
/// exampleCertificateAuthority.Arn,
/// },
/// Sources = new[]
/// {
/// "111111111111",
/// "222222222222",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/acmpca"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ram"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := ram.NewResourceShare(ctx, "example", &ram.ResourceShareArgs{
/// Name:                    pulumi.String("example-service-share"),
/// AllowExternalPrincipals: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// exampleCertificateAuthority, err := acmpca.NewCertificateAuthority(ctx, "example", &acmpca.CertificateAuthorityArgs{
/// Type: pulumi.String("ROOT"),
/// CertificateAuthorityConfiguration: &acmpca.CertificateAuthorityCertificateAuthorityConfigurationArgs{
/// KeyAlgorithm:     pulumi.String("RSA_4096"),
/// SigningAlgorithm: pulumi.String("SHA512WITHRSA"),
/// Subject: &acmpca.CertificateAuthorityCertificateAuthorityConfigurationSubjectArgs{
/// CommonName: pulumi.String("example.com"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ram.NewResourceShareAssociationsExclusive(ctx, "example", &ram.ResourceShareAssociationsExclusiveArgs{
/// ResourceShareArn: example.Arn,
/// Principals: pulumi.StringArray{
/// pulumi.String("pca-connector-ad.amazonaws.com"),
/// },
/// ResourceArns: pulumi.StringArray{
/// exampleCertificateAuthority.Arn,
/// },
/// Sources: pulumi.StringArray{
/// pulumi.String("111111111111"),
/// pulumi.String("222222222222"),
/// },
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
/// import com.pulumi.aws.acmpca.CertificateAuthority;
/// import com.pulumi.aws.acmpca.CertificateAuthorityArgs;
/// import com.pulumi.aws.acmpca.inputs.CertificateAuthorityCertificateAuthorityConfigurationArgs;
/// import com.pulumi.aws.acmpca.inputs.CertificateAuthorityCertificateAuthorityConfigurationSubjectArgs;
/// import com.pulumi.aws.ram.ResourceShareAssociationsExclusive;
/// import com.pulumi.aws.ram.ResourceShareAssociationsExclusiveArgs;
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
/// .name("example-service-share")
/// .allowExternalPrincipals(true)
/// .build());
///
/// var exampleCertificateAuthority = new CertificateAuthority("exampleCertificateAuthority", CertificateAuthorityArgs.builder()
/// .type("ROOT")
/// .certificateAuthorityConfiguration(CertificateAuthorityCertificateAuthorityConfigurationArgs.builder()
/// .keyAlgorithm("RSA_4096")
/// .signingAlgorithm("SHA512WITHRSA")
/// .subject(CertificateAuthorityCertificateAuthorityConfigurationSubjectArgs.builder()
/// .commonName("example.com")
/// .build())
/// .build())
/// .build());
///
/// var exampleResourceShareAssociationsExclusive = new ResourceShareAssociationsExclusive("exampleResourceShareAssociationsExclusive", ResourceShareAssociationsExclusiveArgs.builder()
/// .resourceShareArn(example.arn())
/// .principals("pca-connector-ad.amazonaws.com")
/// .resourceArns(exampleCertificateAuthority.arn())
/// .sources(
/// "111111111111",
/// "222222222222")
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
/// name: example-service-share
/// allowExternalPrincipals: true
/// exampleCertificateAuthority:
/// type: aws:acmpca:CertificateAuthority
/// name: example
/// properties:
/// type: ROOT
/// certificateAuthorityConfiguration:
/// keyAlgorithm: RSA_4096
/// signingAlgorithm: SHA512WITHRSA
/// subject:
/// commonName: example.com
/// exampleResourceShareAssociationsExclusive:
/// type: aws:ram:ResourceShareAssociationsExclusive
/// name: example
/// properties:
/// resourceShareArn: ${example.arn}
/// principals:
/// - pca-connector-ad.amazonaws.com
/// resourceArns:
/// - ${exampleCertificateAuthority.arn}
/// sources:
/// - '111111111111'
/// - '222222222222'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Disallow All Associations
///
/// To automatically remove any configured associations, omit the <span pulumi-lang-nodejs="`principals`" pulumi-lang-dotnet="`Principals`" pulumi-lang-go="`principals`" pulumi-lang-python="`principals`" pulumi-lang-yaml="`principals`" pulumi-lang-java="`principals`">`principals`</span> and <span pulumi-lang-nodejs="`resourceArns`" pulumi-lang-dotnet="`ResourceArns`" pulumi-lang-go="`resourceArns`" pulumi-lang-python="`resource_arns`" pulumi-lang-yaml="`resourceArns`" pulumi-lang-java="`resourceArns`">`resource_arns`</span> arguments or set them to empty lists.
///
/// > This will not **prevent** associations from being created via Terraform (or any other interface). This resource enables bringing associations into a configured state, however, this reconciliation happens only when <span pulumi-lang-nodejs="`apply`" pulumi-lang-dotnet="`Apply`" pulumi-lang-go="`apply`" pulumi-lang-python="`apply`" pulumi-lang-yaml="`apply`" pulumi-lang-java="`apply`">`apply`</span> is proactively run.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ram.ResourceShareAssociationsExclusive("example", {resourceShareArn: exampleAwsRamResourceShare.arn});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ram.ResourceShareAssociationsExclusive("example", resource_share_arn=example_aws_ram_resource_share["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ram.ResourceShareAssociationsExclusive("example", new()
/// {
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
/// _, err := ram.NewResourceShareAssociationsExclusive(ctx, "example", &ram.ResourceShareAssociationsExclusiveArgs{
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
/// import com.pulumi.aws.ram.ResourceShareAssociationsExclusive;
/// import com.pulumi.aws.ram.ResourceShareAssociationsExclusiveArgs;
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
/// var example = new ResourceShareAssociationsExclusive("example", ResourceShareAssociationsExclusiveArgs.builder()
/// .resourceShareArn(exampleAwsRamResourceShare.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ram:ResourceShareAssociationsExclusive
/// properties:
/// resourceShareArn: ${exampleAwsRamResourceShare.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import RAM Resource Share Association Exclusive using the <span pulumi-lang-nodejs="`resourceShareArn`" pulumi-lang-dotnet="`ResourceShareArn`" pulumi-lang-go="`resourceShareArn`" pulumi-lang-python="`resource_share_arn`" pulumi-lang-yaml="`resourceShareArn`" pulumi-lang-java="`resourceShareArn`">`resource_share_arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ram/resourceShareAssociationsExclusive:ResourceShareAssociationsExclusive example arn:aws:ram:eu-west-1:123456789012:resource-share/73da1ab9-b94a-4ba3-8eb4-45917f7f4b12
/// ```
class ResourceShareAssociationsExclusive extends CustomResource {
  /// A set of principals to associate with the resource share. Principals not configured in this argument will be removed. Valid values include:
  /// * AWS account ID (exactly 12 digits, e.g., <span pulumi-lang-nodejs="`123456789012`" pulumi-lang-dotnet="`123456789012`" pulumi-lang-go="`123456789012`" pulumi-lang-python="`123456789012`" pulumi-lang-yaml="`123456789012`" pulumi-lang-java="`123456789012`">`123456789012`</span>)
  /// * AWS Organizations Organization ARN (e.g., `arn:aws:organizations::123456789012:organization/o-exampleorgid`)
  /// * AWS Organizations Organizational Unit ARN (e.g., `arn:aws:organizations::123456789012:ou/o-exampleorgid/ou-examplerootid-exampleouid`)
  /// * IAM role ARN (e.g., `arn:aws:iam::123456789012:role/example-role`)
  /// * IAM user ARN (e.g., `arn:aws:iam::123456789012:user/example-user`)
  /// * Service principal (e.g., `ec2.amazonaws.com`)
  late final Output<List<String>?> principals;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A set of Amazon Resource Names (ARNs) of resources to associate with the resource share. Resources not configured in this argument will be removed.
  late final Output<List<String>?> resourceArns;

  /// The Amazon Resource Name (ARN) of the resource share. Changing this value forces creation of a new resource.
  late final Output<String> resourceShareArn;

  /// A set of AWS account IDs that restrict which accounts a service principal can access resources from. This argument can only be specified when <span pulumi-lang-nodejs="`principals`" pulumi-lang-dotnet="`Principals`" pulumi-lang-go="`principals`" pulumi-lang-python="`principals`" pulumi-lang-yaml="`principals`" pulumi-lang-java="`principals`">`principals`</span> contains only service principals. When specified, it limits the source accounts from which the service can access the shared resources.
  late final Output<List<String>?> sources;

  ResourceShareAssociationsExclusive(
    String name, {
    ResourceShareAssociationsExclusiveArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ram/resourceShareAssociationsExclusive:ResourceShareAssociationsExclusive',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.principals = Output.createUnknown<List<String>?>();
    this.region = Output.createUnknown<String>();
    this.resourceArns = Output.createUnknown<List<String>?>();
    this.resourceShareArn = Output.createUnknown<String>();
    this.sources = Output.createUnknown<List<String>?>();
  }
}
