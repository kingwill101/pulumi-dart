import 'package:pulumi/pulumi.dart';
import '../multicast_group_range_log_config/multicast_group_range_log_config.dart';
import '../multicast_group_range_state/multicast_group_range_state.dart';
import 'multicast_group_range_args.dart';

/// Create a multicast group range in the current project.
///
///
/// To get more information about MulticastGroupRange, see:
///
/// * [API documentation](https://docs.cloud.google.com/vpc/docs/multicast/reference/rest/v1/projects.locations.multicastGroupRanges)
/// * How-to Guides
/// * [Create Multicast Group Range](https://docs.cloud.google.com/vpc/docs/multicast/create-group-ranges#create_a_group_range)
///
/// ## Example Usage
///
/// ### Network Services Multicast Group Range Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network = new gcp.compute.Network("network", {
/// name: "test-mgr-network",
/// autoCreateSubnetworks: false,
/// });
/// const multicastDomain = new gcp.networkservices.MulticastDomain("multicast_domain", {
/// multicastDomainId: "test-mgr-domain",
/// location: "global",
/// adminNetwork: network.id,
/// connectionConfig: {
/// connectionType: "SAME_VPC",
/// },
/// }, {
/// dependsOn: [network],
/// });
/// const internalRange = new gcp.networkconnectivity.InternalRange("internal_range", {
/// name: "test-mgr-internal-range",
/// network: network.selfLink,
/// usage: "FOR_VPC",
/// peering: "FOR_SELF",
/// ipCidrRange: "224.2.0.2/32",
/// });
/// const mgrTest = new gcp.networkservices.MulticastGroupRange("mgr_test", {
/// multicastGroupRangeId: "test-mgr-group-range",
/// location: "global",
/// reservedInternalRange: internalRange.id,
/// multicastDomain: multicastDomain.id,
/// distributionScope: "INTRA_ZONE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network = gcp.compute.Network("network",
/// name="test-mgr-network",
/// auto_create_subnetworks=False)
/// multicast_domain = gcp.networkservices.MulticastDomain("multicast_domain",
/// multicast_domain_id="test-mgr-domain",
/// location="global",
/// admin_network=network.id,
/// connection_config={
/// "connection_type": "SAME_VPC",
/// },
/// opts = pulumi.ResourceOptions(depends_on=[network]))
/// internal_range = gcp.networkconnectivity.InternalRange("internal_range",
/// name="test-mgr-internal-range",
/// network=network.self_link,
/// usage="FOR_VPC",
/// peering="FOR_SELF",
/// ip_cidr_range="224.2.0.2/32")
/// mgr_test = gcp.networkservices.MulticastGroupRange("mgr_test",
/// multicast_group_range_id="test-mgr-group-range",
/// location="global",
/// reserved_internal_range=internal_range.id,
/// multicast_domain=multicast_domain.id,
/// distribution_scope="INTRA_ZONE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var network = new Gcp.Compute.Network("network", new()
/// {
/// Name = "test-mgr-network",
/// AutoCreateSubnetworks = false,
/// });
///
/// var multicastDomain = new Gcp.NetworkServices.MulticastDomain("multicast_domain", new()
/// {
/// MulticastDomainId = "test-mgr-domain",
/// Location = "global",
/// AdminNetwork = network.Id,
/// ConnectionConfig = new Gcp.NetworkServices.Inputs.MulticastDomainConnectionConfigArgs
/// {
/// ConnectionType = "SAME_VPC",
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// network,
/// },
/// });
///
/// var internalRange = new Gcp.NetworkConnectivity.InternalRange("internal_range", new()
/// {
/// Name = "test-mgr-internal-range",
/// Network = network.SelfLink,
/// Usage = "FOR_VPC",
/// Peering = "FOR_SELF",
/// IpCidrRange = "224.2.0.2/32",
/// });
///
/// var mgrTest = new Gcp.NetworkServices.MulticastGroupRange("mgr_test", new()
/// {
/// MulticastGroupRangeId = "test-mgr-group-range",
/// Location = "global",
/// ReservedInternalRange = internalRange.Id,
/// MulticastDomain = multicastDomain.Id,
/// DistributionScope = "INTRA_ZONE",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkservices"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// Name:                  pulumi.String("test-mgr-network"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// multicastDomain, err := networkservices.NewMulticastDomain(ctx, "multicast_domain", &networkservices.MulticastDomainArgs{
/// MulticastDomainId: pulumi.String("test-mgr-domain"),
/// Location:          pulumi.String("global"),
/// AdminNetwork:      network.ID(),
/// ConnectionConfig: &networkservices.MulticastDomainConnectionConfigArgs{
/// ConnectionType: pulumi.String("SAME_VPC"),
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// network,
/// }))
/// if err != nil {
/// return err
/// }
/// internalRange, err := networkconnectivity.NewInternalRange(ctx, "internal_range", &networkconnectivity.InternalRangeArgs{
/// Name:        pulumi.String("test-mgr-internal-range"),
/// Network:     network.SelfLink,
/// Usage:       pulumi.String("FOR_VPC"),
/// Peering:     pulumi.String("FOR_SELF"),
/// IpCidrRange: pulumi.String("224.2.0.2/32"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = networkservices.NewMulticastGroupRange(ctx, "mgr_test", &networkservices.MulticastGroupRangeArgs{
/// MulticastGroupRangeId: pulumi.String("test-mgr-group-range"),
/// Location:              pulumi.String("global"),
/// ReservedInternalRange: internalRange.ID(),
/// MulticastDomain:       multicastDomain.ID(),
/// DistributionScope:     pulumi.String("INTRA_ZONE"),
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.networkservices.MulticastDomain;
/// import com.pulumi.gcp.networkservices.MulticastDomainArgs;
/// import com.pulumi.gcp.networkservices.inputs.MulticastDomainConnectionConfigArgs;
/// import com.pulumi.gcp.networkconnectivity.InternalRange;
/// import com.pulumi.gcp.networkconnectivity.InternalRangeArgs;
/// import com.pulumi.gcp.networkservices.MulticastGroupRange;
/// import com.pulumi.gcp.networkservices.MulticastGroupRangeArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// var network = new Network("network", NetworkArgs.builder()
/// .name("test-mgr-network")
/// .autoCreateSubnetworks(false)
/// .build());
///
/// var multicastDomain = new MulticastDomain("multicastDomain", MulticastDomainArgs.builder()
/// .multicastDomainId("test-mgr-domain")
/// .location("global")
/// .adminNetwork(network.id())
/// .connectionConfig(MulticastDomainConnectionConfigArgs.builder()
/// .connectionType("SAME_VPC")
/// .build())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(network)
/// .build());
///
/// var internalRange = new InternalRange("internalRange", InternalRangeArgs.builder()
/// .name("test-mgr-internal-range")
/// .network(network.selfLink())
/// .usage("FOR_VPC")
/// .peering("FOR_SELF")
/// .ipCidrRange("224.2.0.2/32")
/// .build());
///
/// var mgrTest = new MulticastGroupRange("mgrTest", MulticastGroupRangeArgs.builder()
/// .multicastGroupRangeId("test-mgr-group-range")
/// .location("global")
/// .reservedInternalRange(internalRange.id())
/// .multicastDomain(multicastDomain.id())
/// .distributionScope("INTRA_ZONE")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// network:
/// type: gcp:compute:Network
/// properties:
/// name: test-mgr-network
/// autoCreateSubnetworks: false
/// multicastDomain:
/// type: gcp:networkservices:MulticastDomain
/// name: multicast_domain
/// properties:
/// multicastDomainId: test-mgr-domain
/// location: global
/// adminNetwork: ${network.id}
/// connectionConfig:
/// connectionType: SAME_VPC
/// options:
/// dependsOn:
/// - ${network}
/// internalRange:
/// type: gcp:networkconnectivity:InternalRange
/// name: internal_range
/// properties:
/// name: test-mgr-internal-range
/// network: ${network.selfLink}
/// usage: FOR_VPC
/// peering: FOR_SELF
/// ipCidrRange: 224.2.0.2/32
/// mgrTest:
/// type: gcp:networkservices:MulticastGroupRange
/// name: mgr_test
/// properties:
/// multicastGroupRangeId: test-mgr-group-range
/// location: global
/// reservedInternalRange: ${internalRange.id}
/// multicastDomain: ${multicastDomain.id}
/// distributionScope: INTRA_ZONE
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// MulticastGroupRange can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/multicastGroupRanges/{{multicast_group_range_id}}`
///
/// * `{{project}}/{{location}}/{{multicast_group_range_id}}`
///
/// * `{{location}}/{{multicast_group_range_id}}`
///
/// When using the `pulumi import` command, MulticastGroupRange can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastGroupRange:MulticastGroupRange default projects/{{project}}/locations/{{location}}/multicastGroupRanges/{{multicast_group_range_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastGroupRange:MulticastGroupRange default {{project}}/{{location}}/{{multicast_group_range_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastGroupRange:MulticastGroupRange default {{location}}/{{multicast_group_range_id}}
/// ```
class MulticastGroupRange extends CustomResource {
  /// A list of consumer projects that are allowed to subscribe to the multicast
  /// IP addresses within the range defined by this MulticastGroupRange. The
  /// project can be specified using its project ID or project number. If left
  /// empty, then all consumer projects are allowed (unless<span pulumi-lang-nodejs="
  /// requireExplicitAccept " pulumi-lang-dotnet="
  /// RequireExplicitAccept " pulumi-lang-go="
  /// requireExplicitAccept " pulumi-lang-python="
  /// require_explicit_accept " pulumi-lang-yaml="
  /// requireExplicitAccept " pulumi-lang-java="
  /// requireExplicitAccept ">
  /// require_explicit_accept </span>is set to true) once they have VPC networks
  /// associated to the multicast domain. The current max length of the accept
  /// list is 100.
  late final Output<List<String>?> consumerAcceptLists;

  /// [Output only] The timestamp when the multicast group range was
  /// created.
  late final Output<String> createTime;

  /// An optional text description of the multicast group range.
  late final Output<String?> description;

  /// Multicast group range's distribution scope. Intra-zone or intra-region
  /// cross-zone is supported, with default value being intra-region. Cross
  /// region distribution is not supported.
  /// Possible values:
  /// INTRA_ZONE
  /// INTRA_REGION
  late final Output<String?> distributionScope;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// [Output only] The multicast group IP address range.
  late final Output<String> ipCidrRange;

  /// Labels as key-value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> location;

  /// The logging configuration.
  /// Structure is documented below.
  late final Output<MulticastGroupRangeLogConfig?> logConfig;

  /// The resource name of the multicast domain in which to create this
  /// multicast group range.
  /// Use the following format:
  /// `projects/*/locations/global/multicastDomains/*`.
  late final Output<String> multicastDomain;

  /// A unique name for the multicast group range.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  late final Output<String> multicastGroupRangeId;

  /// Identifier. The resource name of the multicast group range.
  /// Use the following format:
  /// `projects/*/locations/global/multicastGroupRanges/*`.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Whether an empty<span pulumi-lang-nodejs=" consumerAcceptList " pulumi-lang-dotnet=" ConsumerAcceptList " pulumi-lang-go=" consumerAcceptList " pulumi-lang-python=" consumer_accept_list " pulumi-lang-yaml=" consumerAcceptList " pulumi-lang-java=" consumerAcceptList "> consumer_accept_list </span>will deny all consumer projects.
  late final Output<bool?> requireExplicitAccept;

  /// The resource name of the internal range reserved for this
  /// multicast group range.
  /// The internal range must be a Class D address (224.0.0.0 to 239.255.255.255)
  /// and have a prefix length >= 23.
  /// Use the following format:
  /// `projects/*/locations/global/internalRanges/*`.
  late final Output<String> reservedInternalRange;

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
  late final Output<List<MulticastGroupRangeState>> states;

  /// [Output only] The Google-generated UUID for the resource. This value is
  /// unique across all multicast group range resources. If a group
  /// range is deleted and another with the same name is created, the new
  /// group range is assigned a different unique_id.
  late final Output<String> uniqueId;

  /// [Output only] The timestamp when the multicast group range was most
  /// recently updated.
  late final Output<String> updateTime;

  MulticastGroupRange(
    String name, {
    MulticastGroupRangeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/multicastGroupRange:MulticastGroupRange',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.consumerAcceptLists =
        registerOutput<List<String>?>('consumerAcceptLists');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.distributionScope = registerOutput<String?>('distributionScope');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.ipCidrRange = registerOutput<String>('ipCidrRange');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.logConfig = registerOutput<MulticastGroupRangeLogConfig?>('logConfig');
    this.multicastDomain = registerOutput<String>('multicastDomain');
    this.multicastGroupRangeId =
        registerOutput<String>('multicastGroupRangeId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.requireExplicitAccept = registerOutput<bool?>('requireExplicitAccept');
    this.reservedInternalRange =
        registerOutput<String>('reservedInternalRange');
    this.states = registerOutput<List<MulticastGroupRangeState>>('states');
    this.uniqueId = registerOutput<String>('uniqueId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
