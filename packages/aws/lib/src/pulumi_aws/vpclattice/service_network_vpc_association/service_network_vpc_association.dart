import 'package:pulumi/pulumi.dart';
import '../service_network_vpc_association_dns_options/service_network_vpc_association_dns_options.dart';
import 'service_network_vpc_association_args.dart';

/// Resource for managing an AWS VPC Lattice Service Network VPC Association.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.vpclattice.ServiceNetworkVpcAssociation("example", {
/// vpcIdentifier: exampleAwsVpc.id,
/// serviceNetworkIdentifier: exampleAwsVpclatticeServiceNetwork.id,
/// securityGroupIds: [exampleAwsSecurityGroup.id],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpclattice.ServiceNetworkVpcAssociation("example",
/// vpc_identifier=example_aws_vpc["id"],
/// service_network_identifier=example_aws_vpclattice_service_network["id"],
/// security_group_ids=[example_aws_security_group["id"]])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.VpcLattice.ServiceNetworkVpcAssociation("example", new()
/// {
/// VpcIdentifier = exampleAwsVpc.Id,
/// ServiceNetworkIdentifier = exampleAwsVpclatticeServiceNetwork.Id,
/// SecurityGroupIds = new[]
/// {
/// exampleAwsSecurityGroup.Id,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpclattice"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := vpclattice.NewServiceNetworkVpcAssociation(ctx, "example", &vpclattice.ServiceNetworkVpcAssociationArgs{
/// VpcIdentifier:            pulumi.Any(exampleAwsVpc.Id),
/// ServiceNetworkIdentifier: pulumi.Any(exampleAwsVpclatticeServiceNetwork.Id),
/// SecurityGroupIds: pulumi.StringArray{
/// exampleAwsSecurityGroup.Id,
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
/// import com.pulumi.aws.vpclattice.ServiceNetworkVpcAssociation;
/// import com.pulumi.aws.vpclattice.ServiceNetworkVpcAssociationArgs;
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
/// var example = new ServiceNetworkVpcAssociation("example", ServiceNetworkVpcAssociationArgs.builder()
/// .vpcIdentifier(exampleAwsVpc.id())
/// .serviceNetworkIdentifier(exampleAwsVpclatticeServiceNetwork.id())
/// .securityGroupIds(exampleAwsSecurityGroup.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:vpclattice:ServiceNetworkVpcAssociation
/// properties:
/// vpcIdentifier: ${exampleAwsVpc.id}
/// serviceNetworkIdentifier: ${exampleAwsVpclatticeServiceNetwork.id}
/// securityGroupIds:
/// - ${exampleAwsSecurityGroup.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import VPC Lattice Service Network VPC Association using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:vpclattice/serviceNetworkVpcAssociation:ServiceNetworkVpcAssociation example snsa-05e2474658a88f6ba
/// ```
class ServiceNetworkVpcAssociation extends CustomResource {
  /// The ARN of the Association.
  late final Output<String> arn;

  /// The account that created the association.
  late final Output<String> createdBy;

  /// Configuration block for DNS option. See <span pulumi-lang-nodejs="`dnsOptions`" pulumi-lang-dotnet="`DnsOptions`" pulumi-lang-go="`dnsOptions`" pulumi-lang-python="`dns_options`" pulumi-lang-yaml="`dnsOptions`" pulumi-lang-java="`dnsOptions`">`dns_options`</span> block below for details.
  late final Output<ServiceNetworkVpcAssociationDnsOptions?> dnsOptions;

  /// Boolean to indicate whether to enable private DNS for the VPC association. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool> privateDnsEnabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The IDs of the security groups.
  late final Output<List<String>?> securityGroupIds;

  /// The ID or Amazon Resource Identifier (ARN) of the service network. You must use the ARN if the resources specified in the operation are in different accounts.
  /// The following arguments are optional:
  late final Output<String> serviceNetworkIdentifier;

  /// The operations status. Valid Values are CREATE_IN_PROGRESS | ACTIVE | DELETE_IN_PROGRESS | CREATE_FAILED | DELETE_FAILED
  late final Output<String> status;

  /// Key-value mapping of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The ID of the VPC.
  late final Output<String> vpcIdentifier;

  ServiceNetworkVpcAssociation(
    String name, {
    ServiceNetworkVpcAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:vpclattice/serviceNetworkVpcAssociation:ServiceNetworkVpcAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.createdBy = Output.createUnknown<String>();
    this.dnsOptions =
        Output.createUnknown<ServiceNetworkVpcAssociationDnsOptions?>();
    this.privateDnsEnabled = Output.createUnknown<bool>();
    this.region = Output.createUnknown<String>();
    this.securityGroupIds = Output.createUnknown<List<String>?>();
    this.serviceNetworkIdentifier = Output.createUnknown<String>();
    this.status = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.vpcIdentifier = Output.createUnknown<String>();
  }
}
