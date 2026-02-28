import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_network_service_association_args.dart';
import 'service_network_service_association_dns_entry.dart';

/// Resource for managing an AWS VPC Lattice Service Network Service Association.
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
/// const example = new aws.vpclattice.ServiceNetworkServiceAssociation("example", {
///     serviceIdentifier: exampleAwsVpclatticeService.id,
///     serviceNetworkIdentifier: exampleAwsVpclatticeServiceNetwork.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpclattice.ServiceNetworkServiceAssociation("example",
///     service_identifier=example_aws_vpclattice_service["id"],
///     service_network_identifier=example_aws_vpclattice_service_network["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.VpcLattice.ServiceNetworkServiceAssociation("example", new()
///     {
///         ServiceIdentifier = exampleAwsVpclatticeService.Id,
///         ServiceNetworkIdentifier = exampleAwsVpclatticeServiceNetwork.Id,
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
/// 		_, err := vpclattice.NewServiceNetworkServiceAssociation(ctx, "example", &vpclattice.ServiceNetworkServiceAssociationArgs{
/// 			ServiceIdentifier:        pulumi.Any(exampleAwsVpclatticeService.Id),
/// 			ServiceNetworkIdentifier: pulumi.Any(exampleAwsVpclatticeServiceNetwork.Id),
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
/// import com.pulumi.aws.vpclattice.ServiceNetworkServiceAssociation;
/// import com.pulumi.aws.vpclattice.ServiceNetworkServiceAssociationArgs;
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
///         var example = new ServiceNetworkServiceAssociation("example", ServiceNetworkServiceAssociationArgs.builder()
///             .serviceIdentifier(exampleAwsVpclatticeService.id())
///             .serviceNetworkIdentifier(exampleAwsVpclatticeServiceNetwork.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:vpclattice:ServiceNetworkServiceAssociation
///     properties:
///       serviceIdentifier: ${exampleAwsVpclatticeService.id}
///       serviceNetworkIdentifier: ${exampleAwsVpclatticeServiceNetwork.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Lattice Service Network Service Association using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:vpclattice/serviceNetworkServiceAssociation:ServiceNetworkServiceAssociation example snsa-05e2474658a88f6ba
/// ```
class ServiceNetworkServiceAssociation extends pulumi.CustomResource {
  /// The ARN of the Association.
  late final pulumi.Output<String> arn;
  /// The account that created the association.
  late final pulumi.Output<String> createdBy;
  /// The custom domain name of the service.
  late final pulumi.Output<String> customDomainName;
  /// The DNS name of the service.
  late final pulumi.Output<List<ServiceNetworkServiceAssociationDnsEntry>> dnsEntries;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The ID or Amazon Resource Identifier (ARN) of the service.
  late final pulumi.Output<String> serviceIdentifier;
  /// The ID or Amazon Resource Identifier (ARN) of the service network. You must use the ARN if the resources specified in the operation are in different accounts.
  late final pulumi.Output<String> serviceNetworkIdentifier;
  /// The operations status. Valid Values are CREATE_IN_PROGRESS | ACTIVE | DELETE_IN_PROGRESS | CREATE_FAILED | DELETE_FAILED
  late final pulumi.Output<String> status;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [ServiceNetworkServiceAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceNetworkServiceAssociation]. {@macro pulumi_vpclattice_service_network_service_association_service_network_service_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceNetworkServiceAssociation(
    String name, {
    ServiceNetworkServiceAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:vpclattice/serviceNetworkServiceAssociation:ServiceNetworkServiceAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.createdBy = registerOutput<String>('createdBy');
    this.customDomainName = registerOutput<String>('customDomainName');
    this.dnsEntries = registerOutput<List<ServiceNetworkServiceAssociationDnsEntry>>('dnsEntries');
    this.region = registerOutput<String>('region');
    this.serviceIdentifier = registerOutput<String>('serviceIdentifier');
    this.serviceNetworkIdentifier = registerOutput<String>('serviceNetworkIdentifier');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
