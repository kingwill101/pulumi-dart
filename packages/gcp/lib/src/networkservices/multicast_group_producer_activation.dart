import 'package:pulumi/pulumi.dart' as pulumi;
import 'multicast_group_producer_activation_args.dart';
import 'multicast_group_producer_activation_state.dart';

/// Create a multicast group producer activation in the specified location of the current project.
///
///
/// To get more information about MulticastGroupProducerActivation, see:
///
/// * [API documentation](https://docs.cloud.google.com/vpc/docs/multicast/reference/rest/v1/projects.locations.multicastGroupProducerActivations)
/// * How-to Guides
/// * [Create Multicast Group Producer Activation](https://docs.cloud.google.com/vpc/docs/multicast/enable-producer-network#activate-producer)
///
/// ## Example Usage
///
/// ### Network Services Multicast Group Producer Activation Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network = new gcp.compute.Network("network", {
///     name: "test-network-mgpa",
///     autoCreateSubnetworks: false,
/// });
/// const multicastDomain = new gcp.networkservices.MulticastDomain("multicast_domain", {
///     multicastDomainId: "test-domain-mgpa",
///     location: "global",
///     adminNetwork: network.id,
///     connectionConfig: {
///         connectionType: "SAME_VPC",
///     },
/// }, {
///     dependsOn: [network],
/// });
/// const multicastDomainActivation = new gcp.networkservices.MulticastDomainActivation("multicast_domain_activation", {
///     multicastDomainActivationId: "test-domain-activation-mgpa",
///     location: "us-central1-b",
///     multicastDomain: multicastDomain.id,
/// });
/// const producerAssociation = new gcp.networkservices.MulticastProducerAssociation("producer_association", {
///     multicastProducerAssociationId: "test-producer-association-mgpa",
///     location: "us-central1-b",
///     network: network.id,
///     multicastDomainActivation: multicastDomainActivation.id,
/// }, {
///     dependsOn: [network],
/// });
/// const internalRange = new gcp.networkconnectivity.InternalRange("internal_range", {
///     name: "test-internal-range-mgpa",
///     network: network.selfLink,
///     usage: "FOR_VPC",
///     peering: "FOR_SELF",
///     ipCidrRange: "224.2.0.2/32",
/// });
/// const groupRange = new gcp.networkservices.MulticastGroupRange("group_range", {
///     multicastGroupRangeId: "test-group-range-mgpa",
///     location: "global",
///     reservedInternalRange: internalRange.id,
///     multicastDomain: multicastDomain.id,
/// });
/// const groupRangeActivation = new gcp.networkservices.MulticastGroupRangeActivation("group_range_activation", {
///     multicastGroupRangeActivationId: "test-mgra-mgpa",
///     location: "us-central1-b",
///     multicastGroupRange: groupRange.id,
///     multicastDomainActivation: multicastDomainActivation.id,
/// });
/// const mgpaTest = new gcp.networkservices.MulticastGroupProducerActivation("mgpa_test", {
///     multicastGroupProducerActivationId: "test-mgpa-mgpa",
///     location: "us-central1-b",
///     multicastGroupRangeActivation: groupRangeActivation.id,
///     multicastProducerAssociation: producerAssociation.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network = gcp.compute.Network("network",
///     name="test-network-mgpa",
///     auto_create_subnetworks=False)
/// multicast_domain = gcp.networkservices.MulticastDomain("multicast_domain",
///     multicast_domain_id="test-domain-mgpa",
///     location="global",
///     admin_network=network.id,
///     connection_config={
///         "connection_type": "SAME_VPC",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[network]))
/// multicast_domain_activation = gcp.networkservices.MulticastDomainActivation("multicast_domain_activation",
///     multicast_domain_activation_id="test-domain-activation-mgpa",
///     location="us-central1-b",
///     multicast_domain=multicast_domain.id)
/// producer_association = gcp.networkservices.MulticastProducerAssociation("producer_association",
///     multicast_producer_association_id="test-producer-association-mgpa",
///     location="us-central1-b",
///     network=network.id,
///     multicast_domain_activation=multicast_domain_activation.id,
///     opts = pulumi.ResourceOptions(depends_on=[network]))
/// internal_range = gcp.networkconnectivity.InternalRange("internal_range",
///     name="test-internal-range-mgpa",
///     network=network.self_link,
///     usage="FOR_VPC",
///     peering="FOR_SELF",
///     ip_cidr_range="224.2.0.2/32")
/// group_range = gcp.networkservices.MulticastGroupRange("group_range",
///     multicast_group_range_id="test-group-range-mgpa",
///     location="global",
///     reserved_internal_range=internal_range.id,
///     multicast_domain=multicast_domain.id)
/// group_range_activation = gcp.networkservices.MulticastGroupRangeActivation("group_range_activation",
///     multicast_group_range_activation_id="test-mgra-mgpa",
///     location="us-central1-b",
///     multicast_group_range=group_range.id,
///     multicast_domain_activation=multicast_domain_activation.id)
/// mgpa_test = gcp.networkservices.MulticastGroupProducerActivation("mgpa_test",
///     multicast_group_producer_activation_id="test-mgpa-mgpa",
///     location="us-central1-b",
///     multicast_group_range_activation=group_range_activation.id,
///     multicast_producer_association=producer_association.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var network = new Gcp.Compute.Network("network", new()
///     {
///         Name = "test-network-mgpa",
///         AutoCreateSubnetworks = false,
///     });
///
///     var multicastDomain = new Gcp.NetworkServices.MulticastDomain("multicast_domain", new()
///     {
///         MulticastDomainId = "test-domain-mgpa",
///         Location = "global",
///         AdminNetwork = network.Id,
///         ConnectionConfig = new Gcp.NetworkServices.Inputs.MulticastDomainConnectionConfigArgs
///         {
///             ConnectionType = "SAME_VPC",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             network,
///         },
///     });
///
///     var multicastDomainActivation = new Gcp.NetworkServices.MulticastDomainActivation("multicast_domain_activation", new()
///     {
///         MulticastDomainActivationId = "test-domain-activation-mgpa",
///         Location = "us-central1-b",
///         MulticastDomain = multicastDomain.Id,
///     });
///
///     var producerAssociation = new Gcp.NetworkServices.MulticastProducerAssociation("producer_association", new()
///     {
///         MulticastProducerAssociationId = "test-producer-association-mgpa",
///         Location = "us-central1-b",
///         Network = network.Id,
///         MulticastDomainActivation = multicastDomainActivation.Id,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             network,
///         },
///     });
///
///     var internalRange = new Gcp.NetworkConnectivity.InternalRange("internal_range", new()
///     {
///         Name = "test-internal-range-mgpa",
///         Network = network.SelfLink,
///         Usage = "FOR_VPC",
///         Peering = "FOR_SELF",
///         IpCidrRange = "224.2.0.2/32",
///     });
///
///     var groupRange = new Gcp.NetworkServices.MulticastGroupRange("group_range", new()
///     {
///         MulticastGroupRangeId = "test-group-range-mgpa",
///         Location = "global",
///         ReservedInternalRange = internalRange.Id,
///         MulticastDomain = multicastDomain.Id,
///     });
///
///     var groupRangeActivation = new Gcp.NetworkServices.MulticastGroupRangeActivation("group_range_activation", new()
///     {
///         MulticastGroupRangeActivationId = "test-mgra-mgpa",
///         Location = "us-central1-b",
///         MulticastGroupRange = groupRange.Id,
///         MulticastDomainActivation = multicastDomainActivation.Id,
///     });
///
///     var mgpaTest = new Gcp.NetworkServices.MulticastGroupProducerActivation("mgpa_test", new()
///     {
///         MulticastGroupProducerActivationId = "test-mgpa-mgpa",
///         Location = "us-central1-b",
///         MulticastGroupRangeActivation = groupRangeActivation.Id,
///         MulticastProducerAssociation = producerAssociation.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkservices"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("test-network-mgpa"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		multicastDomain, err := networkservices.NewMulticastDomain(ctx, "multicast_domain", &networkservices.MulticastDomainArgs{
/// 			MulticastDomainId: pulumi.String("test-domain-mgpa"),
/// 			Location:          pulumi.String("global"),
/// 			AdminNetwork:      network.ID(),
/// 			ConnectionConfig: &networkservices.MulticastDomainConnectionConfigArgs{
/// 				ConnectionType: pulumi.String("SAME_VPC"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			network,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		multicastDomainActivation, err := networkservices.NewMulticastDomainActivation(ctx, "multicast_domain_activation", &networkservices.MulticastDomainActivationArgs{
/// 			MulticastDomainActivationId: pulumi.String("test-domain-activation-mgpa"),
/// 			Location:                    pulumi.String("us-central1-b"),
/// 			MulticastDomain:             multicastDomain.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		producerAssociation, err := networkservices.NewMulticastProducerAssociation(ctx, "producer_association", &networkservices.MulticastProducerAssociationArgs{
/// 			MulticastProducerAssociationId: pulumi.String("test-producer-association-mgpa"),
/// 			Location:                       pulumi.String("us-central1-b"),
/// 			Network:                        network.ID(),
/// 			MulticastDomainActivation:      multicastDomainActivation.ID(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			network,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		internalRange, err := networkconnectivity.NewInternalRange(ctx, "internal_range", &networkconnectivity.InternalRangeArgs{
/// 			Name:        pulumi.String("test-internal-range-mgpa"),
/// 			Network:     network.SelfLink,
/// 			Usage:       pulumi.String("FOR_VPC"),
/// 			Peering:     pulumi.String("FOR_SELF"),
/// 			IpCidrRange: pulumi.String("224.2.0.2/32"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		groupRange, err := networkservices.NewMulticastGroupRange(ctx, "group_range", &networkservices.MulticastGroupRangeArgs{
/// 			MulticastGroupRangeId: pulumi.String("test-group-range-mgpa"),
/// 			Location:              pulumi.String("global"),
/// 			ReservedInternalRange: internalRange.ID(),
/// 			MulticastDomain:       multicastDomain.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		groupRangeActivation, err := networkservices.NewMulticastGroupRangeActivation(ctx, "group_range_activation", &networkservices.MulticastGroupRangeActivationArgs{
/// 			MulticastGroupRangeActivationId: pulumi.String("test-mgra-mgpa"),
/// 			Location:                        pulumi.String("us-central1-b"),
/// 			MulticastGroupRange:             groupRange.ID(),
/// 			MulticastDomainActivation:       multicastDomainActivation.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkservices.NewMulticastGroupProducerActivation(ctx, "mgpa_test", &networkservices.MulticastGroupProducerActivationArgs{
/// 			MulticastGroupProducerActivationId: pulumi.String("test-mgpa-mgpa"),
/// 			Location:                           pulumi.String("us-central1-b"),
/// 			MulticastGroupRangeActivation:      groupRangeActivation.ID(),
/// 			MulticastProducerAssociation:       producerAssociation.ID(),
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.networkservices.MulticastDomain;
/// import com.pulumi.gcp.networkservices.MulticastDomainArgs;
/// import com.pulumi.gcp.networkservices.inputs.MulticastDomainConnectionConfigArgs;
/// import com.pulumi.gcp.networkservices.MulticastDomainActivation;
/// import com.pulumi.gcp.networkservices.MulticastDomainActivationArgs;
/// import com.pulumi.gcp.networkservices.MulticastProducerAssociation;
/// import com.pulumi.gcp.networkservices.MulticastProducerAssociationArgs;
/// import com.pulumi.gcp.networkconnectivity.InternalRange;
/// import com.pulumi.gcp.networkconnectivity.InternalRangeArgs;
/// import com.pulumi.gcp.networkservices.MulticastGroupRange;
/// import com.pulumi.gcp.networkservices.MulticastGroupRangeArgs;
/// import com.pulumi.gcp.networkservices.MulticastGroupRangeActivation;
/// import com.pulumi.gcp.networkservices.MulticastGroupRangeActivationArgs;
/// import com.pulumi.gcp.networkservices.MulticastGroupProducerActivation;
/// import com.pulumi.gcp.networkservices.MulticastGroupProducerActivationArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var network = new Network("network", NetworkArgs.builder()
///             .name("test-network-mgpa")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var multicastDomain = new MulticastDomain("multicastDomain", MulticastDomainArgs.builder()
///             .multicastDomainId("test-domain-mgpa")
///             .location("global")
///             .adminNetwork(network.id())
///             .connectionConfig(MulticastDomainConnectionConfigArgs.builder()
///                 .connectionType("SAME_VPC")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(network)
///                 .build());
///
///         var multicastDomainActivation = new MulticastDomainActivation("multicastDomainActivation", MulticastDomainActivationArgs.builder()
///             .multicastDomainActivationId("test-domain-activation-mgpa")
///             .location("us-central1-b")
///             .multicastDomain(multicastDomain.id())
///             .build());
///
///         var producerAssociation = new MulticastProducerAssociation("producerAssociation", MulticastProducerAssociationArgs.builder()
///             .multicastProducerAssociationId("test-producer-association-mgpa")
///             .location("us-central1-b")
///             .network(network.id())
///             .multicastDomainActivation(multicastDomainActivation.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(network)
///                 .build());
///
///         var internalRange = new InternalRange("internalRange", InternalRangeArgs.builder()
///             .name("test-internal-range-mgpa")
///             .network(network.selfLink())
///             .usage("FOR_VPC")
///             .peering("FOR_SELF")
///             .ipCidrRange("224.2.0.2/32")
///             .build());
///
///         var groupRange = new MulticastGroupRange("groupRange", MulticastGroupRangeArgs.builder()
///             .multicastGroupRangeId("test-group-range-mgpa")
///             .location("global")
///             .reservedInternalRange(internalRange.id())
///             .multicastDomain(multicastDomain.id())
///             .build());
///
///         var groupRangeActivation = new MulticastGroupRangeActivation("groupRangeActivation", MulticastGroupRangeActivationArgs.builder()
///             .multicastGroupRangeActivationId("test-mgra-mgpa")
///             .location("us-central1-b")
///             .multicastGroupRange(groupRange.id())
///             .multicastDomainActivation(multicastDomainActivation.id())
///             .build());
///
///         var mgpaTest = new MulticastGroupProducerActivation("mgpaTest", MulticastGroupProducerActivationArgs.builder()
///             .multicastGroupProducerActivationId("test-mgpa-mgpa")
///             .location("us-central1-b")
///             .multicastGroupRangeActivation(groupRangeActivation.id())
///             .multicastProducerAssociation(producerAssociation.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   network:
///     type: gcp:compute:Network
///     properties:
///       name: test-network-mgpa
///       autoCreateSubnetworks: false
///   multicastDomain:
///     type: gcp:networkservices:MulticastDomain
///     name: multicast_domain
///     properties:
///       multicastDomainId: test-domain-mgpa
///       location: global
///       adminNetwork: ${network.id}
///       connectionConfig:
///         connectionType: SAME_VPC
///     options:
///       dependsOn:
///         - ${network}
///   multicastDomainActivation:
///     type: gcp:networkservices:MulticastDomainActivation
///     name: multicast_domain_activation
///     properties:
///       multicastDomainActivationId: test-domain-activation-mgpa
///       location: us-central1-b
///       multicastDomain: ${multicastDomain.id}
///   producerAssociation:
///     type: gcp:networkservices:MulticastProducerAssociation
///     name: producer_association
///     properties:
///       multicastProducerAssociationId: test-producer-association-mgpa
///       location: us-central1-b
///       network: ${network.id}
///       multicastDomainActivation: ${multicastDomainActivation.id}
///     options:
///       dependsOn:
///         - ${network}
///   internalRange:
///     type: gcp:networkconnectivity:InternalRange
///     name: internal_range
///     properties:
///       name: test-internal-range-mgpa
///       network: ${network.selfLink}
///       usage: FOR_VPC
///       peering: FOR_SELF
///       ipCidrRange: 224.2.0.2/32
///   groupRange:
///     type: gcp:networkservices:MulticastGroupRange
///     name: group_range
///     properties:
///       multicastGroupRangeId: test-group-range-mgpa
///       location: global
///       reservedInternalRange: ${internalRange.id}
///       multicastDomain: ${multicastDomain.id}
///   groupRangeActivation:
///     type: gcp:networkservices:MulticastGroupRangeActivation
///     name: group_range_activation
///     properties:
///       multicastGroupRangeActivationId: test-mgra-mgpa
///       location: us-central1-b
///       multicastGroupRange: ${groupRange.id}
///       multicastDomainActivation: ${multicastDomainActivation.id}
///   mgpaTest:
///     type: gcp:networkservices:MulticastGroupProducerActivation
///     name: mgpa_test
///     properties:
///       multicastGroupProducerActivationId: test-mgpa-mgpa
///       location: us-central1-b
///       multicastGroupRangeActivation: ${groupRangeActivation.id}
///       multicastProducerAssociation: ${producerAssociation.id}
/// ```
///
///
/// ## Import
///
/// MulticastGroupProducerActivation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/multicastGroupProducerActivations/{{multicast_group_producer_activation_id}}`
///
/// * `{{project}}/{{location}}/{{multicast_group_producer_activation_id}}`
///
/// * `{{location}}/{{multicast_group_producer_activation_id}}`
///
/// When using the `pulumi import` command, MulticastGroupProducerActivation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastGroupProducerActivation:MulticastGroupProducerActivation default projects/{{project}}/locations/{{location}}/multicastGroupProducerActivations/{{multicast_group_producer_activation_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastGroupProducerActivation:MulticastGroupProducerActivation default {{project}}/{{location}}/{{multicast_group_producer_activation_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastGroupProducerActivation:MulticastGroupProducerActivation default {{location}}/{{multicast_group_producer_activation_id}}
/// ```
class MulticastGroupProducerActivation extends pulumi.CustomResource {
  /// The timestamp when the multicast group producer activation was created.
  late final pulumi.Output<String> createTime;

  /// An optional text description of the multicast group producer activation.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Labels as key-value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;

  /// A unique name for the multicast group producer activation.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  late final pulumi.Output<String> multicastGroupProducerActivationId;

  /// The resource name of the multicast group range activationcreated by the
  /// admin in the same zone as this multicast group producer activation. Use the
  /// following format:
  /// // `projects/*/locations/*/multicastGroupRangeActivations/*`.
  late final pulumi.Output<String> multicastGroupRangeActivation;

  /// The resource name of the multicast producer association that is in the
  /// same zone as this multicast group producer activation.
  /// Use the following format:
  /// `projects/*/locations/*/multicastProducerAssociations/*`.
  late final pulumi.Output<String> multicastProducerAssociation;

  /// Identifier. The resource name of the multicast group producer activation.
  /// Use the following format:
  /// `projects/*/locations/*/multicastGroupProducerActivations/*`.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// (Output)
  /// The state of the multicast resource.
  /// Possible values:
  /// CREATING
  /// ACTIVE
  /// DELETING
  /// DELETE_FAILED
  /// UPDATING
  /// UPDATE_FAILED
  /// INACTIVE
  late final pulumi.Output<List<MulticastGroupProducerActivationState>> states;

  /// The Google-generated UUID for the resource. This value is
  /// unique across all multicast group producer activation resources. If a group
  /// producer activation is deleted and another with the same name is created,
  /// the new group producer activation is assigned a different unique_id.
  late final pulumi.Output<String> uniqueId;

  /// The timestamp when the multicast group producer activation
  /// was most recently updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [MulticastGroupProducerActivation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MulticastGroupProducerActivation]. {@macro pulumi_networkservices_multicast_group_producer_activation_multicast_group_producer_activation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MulticastGroupProducerActivation(
    String name, {
    MulticastGroupProducerActivationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/multicastGroupProducerActivation:MulticastGroupProducerActivation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.multicastGroupProducerActivationId =
        registerOutput<String>('multicastGroupProducerActivationId');
    this.multicastGroupRangeActivation =
        registerOutput<String>('multicastGroupRangeActivation');
    this.multicastProducerAssociation =
        registerOutput<String>('multicastProducerAssociation');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.states =
        registerOutput<List<MulticastGroupProducerActivationState>>('states');
    this.uniqueId = registerOutput<String>('uniqueId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
