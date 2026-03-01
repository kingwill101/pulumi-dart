import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_network_resource_association_args.dart';
import 'service_network_resource_association_dns_entry.dart';
import 'service_network_resource_association_state.dart';
import 'service_network_resource_association_timeouts.dart';

/// Resource for managing an AWS VPC Lattice Service Network Resource Association.
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
/// const example = new aws.vpclattice.ServiceNetworkResourceAssociation("example", {
///     resourceConfigurationIdentifier: exampleAwsVpclatticeResourceConfiguration.id,
///     serviceNetworkIdentifier: exampleAwsVpclatticeServiceNetwork.id,
///     tags: {
///         Name: "Example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpclattice.ServiceNetworkResourceAssociation("example",
///     resource_configuration_identifier=example_aws_vpclattice_resource_configuration["id"],
///     service_network_identifier=example_aws_vpclattice_service_network["id"],
///     tags={
///         "Name": "Example",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.VpcLattice.ServiceNetworkResourceAssociation("example", new()
///     {
///         ResourceConfigurationIdentifier = exampleAwsVpclatticeResourceConfiguration.Id,
///         ServiceNetworkIdentifier = exampleAwsVpclatticeServiceNetwork.Id,
///         Tags =
///         {
///             { "Name", "Example" },
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
/// 		_, err := vpclattice.NewServiceNetworkResourceAssociation(ctx, "example", &vpclattice.ServiceNetworkResourceAssociationArgs{
/// 			ResourceConfigurationIdentifier: pulumi.Any(exampleAwsVpclatticeResourceConfiguration.Id),
/// 			ServiceNetworkIdentifier:        pulumi.Any(exampleAwsVpclatticeServiceNetwork.Id),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("Example"),
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
/// import com.pulumi.aws.vpclattice.ServiceNetworkResourceAssociation;
/// import com.pulumi.aws.vpclattice.ServiceNetworkResourceAssociationArgs;
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
///         var example = new ServiceNetworkResourceAssociation("example", ServiceNetworkResourceAssociationArgs.builder()
///             .resourceConfigurationIdentifier(exampleAwsVpclatticeResourceConfiguration.id())
///             .serviceNetworkIdentifier(exampleAwsVpclatticeServiceNetwork.id())
///             .tags(Map.of("Name", "Example"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:vpclattice:ServiceNetworkResourceAssociation
///     properties:
///       resourceConfigurationIdentifier: ${exampleAwsVpclatticeResourceConfiguration.id}
///       serviceNetworkIdentifier: ${exampleAwsVpclatticeServiceNetwork.id}
///       tags:
///         Name: Example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Lattice Service Network Resource Association using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:vpclattice/serviceNetworkResourceAssociation:ServiceNetworkResourceAssociation example snra-1234567890abcef12
/// ```
class ServiceNetworkResourceAssociation extends pulumi.CustomResource {
  /// ARN of the Service Network Resource Association.
  late final pulumi.Output<String> arn;
  /// DNS entry of the association in the service network.
  late final pulumi.Output<List<ServiceNetworkResourceAssociationDnsEntry>> dnsEntries;
  /// Boolean indicating whether private DNS is enabled for the service network resource association. Defaults to `false`. When set to `true`, the resource configuration identified by `resource_configuration_identifier` must have a custom domain name or a group domain for private DNS.
  late final pulumi.Output<bool> privateDnsEnabled;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Identifier of Resource Configuration to associate to the Service Network.
  late final pulumi.Output<String> resourceConfigurationIdentifier;
  /// Identifier of the Service Network to associate the Resource to.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> serviceNetworkIdentifier;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<ServiceNetworkResourceAssociationTimeouts?> timeouts;

  /// Creates a new [ServiceNetworkResourceAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceNetworkResourceAssociation]. {@macro pulumi_vpclattice_service_network_resource_association_service_network_resource_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceNetworkResourceAssociation(
    String name, {
    ServiceNetworkResourceAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:vpclattice/serviceNetworkResourceAssociation:ServiceNetworkResourceAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.dnsEntries = registerOutput<List<ServiceNetworkResourceAssociationDnsEntry>>('dnsEntries');
    this.privateDnsEnabled = registerOutput<bool>('privateDnsEnabled');
    this.region = registerOutput<String>('region');
    this.resourceConfigurationIdentifier = registerOutput<String>('resourceConfigurationIdentifier');
    this.serviceNetworkIdentifier = registerOutput<String>('serviceNetworkIdentifier');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<ServiceNetworkResourceAssociationTimeouts?>('timeouts');
  }

  /// Gets an existing [ServiceNetworkResourceAssociation] resource's state with the given [name] and [id].
  static ServiceNetworkResourceAssociation get(
    String name,
    pulumi.Input<String> id, {
    ServiceNetworkResourceAssociationState? state,
  }) {
    return ServiceNetworkResourceAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServiceNetworkResourceAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:vpclattice/serviceNetworkResourceAssociation:ServiceNetworkResourceAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.dnsEntries = registerOutput<List<ServiceNetworkResourceAssociationDnsEntry>>('dnsEntries');
    this.privateDnsEnabled = registerOutput<bool>('privateDnsEnabled');
    this.region = registerOutput<String>('region');
    this.resourceConfigurationIdentifier = registerOutput<String>('resourceConfigurationIdentifier');
    this.serviceNetworkIdentifier = registerOutput<String>('serviceNetworkIdentifier');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<ServiceNetworkResourceAssociationTimeouts?>('timeouts');
  }
}
