import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_address_args.dart';

/// Represents a Global Address resource. Global addresses are used for
/// HTTP(S) load balancing.
///
///
/// To get more information about GlobalAddress, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/v1/globalAddresses)
/// * How-to Guides
/// * [Reserving a Static External IP Address](https://cloud.google.com/compute/docs/ip-addresses/reserve-static-external-ip-address)
///
/// ## Example Usage
///
/// ### Global Address Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.GlobalAddress("default", {name: "global-appserver-ip"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.GlobalAddress("default", name="global-appserver-ip")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.GlobalAddress("default", new()
///     {
///         Name = "global-appserver-ip",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewGlobalAddress(ctx, "default", &compute.GlobalAddressArgs{
/// 			Name: pulumi.String("global-appserver-ip"),
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
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
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
///         var default_ = new GlobalAddress("default", GlobalAddressArgs.builder()
///             .name("global-appserver-ip")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:GlobalAddress
///     properties:
///       name: global-appserver-ip
/// ```
///
/// ### Global Address Private Services Connect
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network = new gcp.compute.Network("network", {
///     name: "my-network-name",
///     autoCreateSubnetworks: false,
/// });
/// const _default = new gcp.compute.GlobalAddress("default", {
///     name: "global-psconnect-ip",
///     addressType: "INTERNAL",
///     purpose: "PRIVATE_SERVICE_CONNECT",
///     network: network.id,
///     address: "100.100.100.105",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network = gcp.compute.Network("network",
///     name="my-network-name",
///     auto_create_subnetworks=False)
/// default = gcp.compute.GlobalAddress("default",
///     name="global-psconnect-ip",
///     address_type="INTERNAL",
///     purpose="PRIVATE_SERVICE_CONNECT",
///     network=network.id,
///     address="100.100.100.105")
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
///         Name = "my-network-name",
///         AutoCreateSubnetworks = false,
///     });
///
///     var @default = new Gcp.Compute.GlobalAddress("default", new()
///     {
///         Name = "global-psconnect-ip",
///         AddressType = "INTERNAL",
///         Purpose = "PRIVATE_SERVICE_CONNECT",
///         Network = network.Id,
///         Address = "100.100.100.105",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("my-network-name"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewGlobalAddress(ctx, "default", &compute.GlobalAddressArgs{
/// 			Name:        pulumi.String("global-psconnect-ip"),
/// 			AddressType: pulumi.String("INTERNAL"),
/// 			Purpose:     pulumi.String("PRIVATE_SERVICE_CONNECT"),
/// 			Network:     network.ID(),
/// 			Address:     pulumi.String("100.100.100.105"),
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
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
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
///             .name("my-network-name")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var default_ = new GlobalAddress("default", GlobalAddressArgs.builder()
///             .name("global-psconnect-ip")
///             .addressType("INTERNAL")
///             .purpose("PRIVATE_SERVICE_CONNECT")
///             .network(network.id())
///             .address("100.100.100.105")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:GlobalAddress
///     properties:
///       name: global-psconnect-ip
///       addressType: INTERNAL
///       purpose: PRIVATE_SERVICE_CONNECT
///       network: ${network.id}
///       address: 100.100.100.105
///   network:
///     type: gcp:compute:Network
///     properties:
///       name: my-network-name
///       autoCreateSubnetworks: false
/// ```
///
///
/// ## Import
///
/// GlobalAddress can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/addresses/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, GlobalAddress can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/globalAddress:GlobalAddress default projects/{{project}}/global/addresses/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/globalAddress:GlobalAddress default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/globalAddress:GlobalAddress default {{name}}
/// ```
class GlobalAddress extends pulumi.CustomResource {
  /// The IP address or beginning of the address range represented by this
  /// resource. This can be supplied as an input to reserve a specific
  /// address or omitted to allow GCP to choose a valid one for you.
  late final pulumi.Output<String> address;

  /// The type of the address to reserve.
  /// * EXTERNAL indicates public/external single IP address.
  /// * INTERNAL indicates internal IP ranges belonging to some network.
  /// Default value is `EXTERNAL`.
  /// Possible values are: `EXTERNAL`, `INTERNAL`.
  late final pulumi.Output<String?> addressType;

  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The IP Version that will be used by this address. The default value is `IPV4`.
  /// Possible values are: `IPV4`, `IPV6`.
  late final pulumi.Output<String?> ipVersion;

  /// The fingerprint used for optimistic locking of this resource.  Used
  /// internally during updates.
  late final pulumi.Output<String> labelFingerprint;

  /// Labels to apply to this address.  A list of key->value pairs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035.  Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z?` which means
  /// the first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// The URL of the network in which to reserve the IP range. The IP range
  /// must be in RFC1918 space. The network cannot be deleted if there are
  /// any reserved IP ranges referring to it.
  /// This should only be set when using an Internal address.
  late final pulumi.Output<String?> network;

  /// The prefix length of the IP range. If not present, it means the
  /// address field is a single IP address.
  /// This field is not applicable to addresses with addressType=INTERNAL
  /// when purpose=PRIVATE_SERVICE_CONNECT
  late final pulumi.Output<int> prefixLength;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The purpose of the resource. Possible values include:
  /// * VPC_PEERING - for peer networks
  /// * PRIVATE_SERVICE_CONNECT - for  Private Service Connect networks
  late final pulumi.Output<String?> purpose;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// Creates a new [GlobalAddress].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GlobalAddress]. {@macro pulumi_compute_global_address_global_address_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GlobalAddress(
    String name, {
    GlobalAddressArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/globalAddress:GlobalAddress',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.address = registerOutput<String>('address');
    this.addressType = registerOutput<String?>('addressType');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.ipVersion = registerOutput<String?>('ipVersion');
    this.labelFingerprint = registerOutput<String>('labelFingerprint');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String?>('network');
    this.prefixLength = registerOutput<int>('prefixLength');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.purpose = registerOutput<String?>('purpose');
    this.selfLink = registerOutput<String>('selfLink');
  }
}
