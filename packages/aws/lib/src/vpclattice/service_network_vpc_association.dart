import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_network_vpc_association_args.dart';
import 'service_network_vpc_association_dns_options.dart';

/// Resource for managing an AWS VPC Lattice Service Network VPC Association.
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
/// const example = new aws.vpclattice.ServiceNetworkVpcAssociation("example", {
///     vpcIdentifier: exampleAwsVpc.id,
///     serviceNetworkIdentifier: exampleAwsVpclatticeServiceNetwork.id,
///     securityGroupIds: [exampleAwsSecurityGroup.id],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpclattice.ServiceNetworkVpcAssociation("example",
///     vpc_identifier=example_aws_vpc["id"],
///     service_network_identifier=example_aws_vpclattice_service_network["id"],
///     security_group_ids=[example_aws_security_group["id"]])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.VpcLattice.ServiceNetworkVpcAssociation("example", new()
///     {
///         VpcIdentifier = exampleAwsVpc.Id,
///         ServiceNetworkIdentifier = exampleAwsVpclatticeServiceNetwork.Id,
///         SecurityGroupIds = new[]
///         {
///             exampleAwsSecurityGroup.Id,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpclattice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vpclattice.NewServiceNetworkVpcAssociation(ctx, "example", &vpclattice.ServiceNetworkVpcAssociationArgs{
/// 			VpcIdentifier:            pulumi.Any(exampleAwsVpc.Id),
/// 			ServiceNetworkIdentifier: pulumi.Any(exampleAwsVpclatticeServiceNetwork.Id),
/// 			SecurityGroupIds: pulumi.StringArray{
/// 				exampleAwsSecurityGroup.Id,
/// 			},
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new ServiceNetworkVpcAssociation("example", ServiceNetworkVpcAssociationArgs.builder()
///             .vpcIdentifier(exampleAwsVpc.id())
///             .serviceNetworkIdentifier(exampleAwsVpclatticeServiceNetwork.id())
///             .securityGroupIds(exampleAwsSecurityGroup.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:vpclattice:ServiceNetworkVpcAssociation
///     properties:
///       vpcIdentifier: ${exampleAwsVpc.id}
///       serviceNetworkIdentifier: ${exampleAwsVpclatticeServiceNetwork.id}
///       securityGroupIds:
///         - ${exampleAwsSecurityGroup.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Lattice Service Network VPC Association using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:vpclattice/serviceNetworkVpcAssociation:ServiceNetworkVpcAssociation example snsa-05e2474658a88f6ba
/// ```
class ServiceNetworkVpcAssociation extends pulumi.CustomResource {
  /// The ARN of the Association.
  late final pulumi.Output<String> arn;

  /// The account that created the association.
  late final pulumi.Output<String> createdBy;

  /// Configuration block for DNS option. See `dns_options` block below for details.
  late final pulumi.Output<ServiceNetworkVpcAssociationDnsOptions?> dnsOptions;

  /// Boolean to indicate whether to enable private DNS for the VPC association. Defaults to `false`.
  late final pulumi.Output<bool> privateDnsEnabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The IDs of the security groups.
  late final pulumi.Output<List<String>?> securityGroupIds;

  /// The ID or Amazon Resource Identifier (ARN) of the service network. You must use the ARN if the resources specified in the operation are in different accounts.
  /// The following arguments are optional:
  late final pulumi.Output<String> serviceNetworkIdentifier;

  /// The operations status. Valid Values are CREATE_IN_PROGRESS | ACTIVE | DELETE_IN_PROGRESS | CREATE_FAILED | DELETE_FAILED
  late final pulumi.Output<String> status;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The ID of the VPC.
  late final pulumi.Output<String> vpcIdentifier;

  /// Creates a new [ServiceNetworkVpcAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceNetworkVpcAssociation]. {@macro pulumi_vpclattice_service_network_vpc_association_service_network_vpc_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceNetworkVpcAssociation(
    String name, {
    ServiceNetworkVpcAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:vpclattice/serviceNetworkVpcAssociation:ServiceNetworkVpcAssociation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.arn = registerOutput<String>('arn');
    this.createdBy = registerOutput<String>('createdBy');
    this.dnsOptions = registerOutput<ServiceNetworkVpcAssociationDnsOptions?>(
      'dnsOptions',
    );
    this.privateDnsEnabled = registerOutput<bool>('privateDnsEnabled');
    this.region = registerOutput<String>('region');
    this.securityGroupIds = registerOutput<List<String>?>('securityGroupIds');
    this.serviceNetworkIdentifier = registerOutput<String>(
      'serviceNetworkIdentifier',
    );
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcIdentifier = registerOutput<String>('vpcIdentifier');
  }
}
