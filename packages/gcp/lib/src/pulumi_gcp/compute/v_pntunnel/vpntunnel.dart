import 'package:pulumi/pulumi.dart' as pulumi;
import '../vpntunnel_cipher_suite/vpntunnel_cipher_suite.dart';
import 'vpntunnel_args.dart';

/// VPN tunnel resource.
///
///
/// To get more information about VpnTunnel, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/vpnTunnels)
/// * How-to Guides
/// * [Cloud VPN Overview](https://cloud.google.com/vpn/docs/concepts/overview)
/// * [Networks and Tunnel Routing](https://cloud.google.com/vpn/docs/concepts/choosing-networks-routing)
///
///
///
/// > **Note:**  All arguments marked as write-only values will not be stored in the state: `shared_secret_wo`.
/// Read more about Write-only Arguments.
///
/// ## Example Usage
///
/// ### Vpn Tunnel Basic
///
///
///
/// ### Vpn Tunnel Cipher Suite
///
///
///
///
/// ## Import
///
/// VpnTunnel can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/vpnTunnels/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, VpnTunnel can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/vPNTunnel:VPNTunnel default projects/{{project}}/regions/{{region}}/vpnTunnels/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/vPNTunnel:VPNTunnel default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/vPNTunnel:VPNTunnel default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/vPNTunnel:VPNTunnel default {{name}}
/// ```
class VPNTunnel extends pulumi.CustomResource {
  /// User specified list of ciphers to use for the phase 1 and phase 2 of the IKE protocol.
  /// Structure is documented below.
  late final pulumi.Output<VPNTunnelCipherSuite?> cipherSuite;

  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource.
  late final pulumi.Output<String?> description;

  /// Detailed status message for the VPN tunnel.
  late final pulumi.Output<String> detailedStatus;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// IKE protocol version to use when establishing the VPN tunnel with
  /// peer VPN gateway.
  /// Acceptable IKE versions are 1 or 2. Default version is 2.
  late final pulumi.Output<int?> ikeVersion;

  /// The fingerprint used for optimistic locking of this resource.  Used
  /// internally during updates.
  late final pulumi.Output<String> labelFingerprint;

  /// Labels to apply to this VpnTunnel.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Local traffic selector to use when establishing the VPN tunnel with
  /// peer VPN gateway. The value should be a CIDR formatted string,
  /// for example `192.168.0.0/16`. The ranges should be disjoint.
  /// Only IPv4 is supported.
  late final pulumi.Output<List<String>> localTrafficSelectors;

  /// Name of the resource. The name must be 1-63 characters long, and
  /// comply with RFC1035. Specifically, the name must be 1-63
  /// characters long and match the regular expression
  /// `a-z?` which means the first character
  /// must be a lowercase letter, and all following characters must
  /// be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// URL of the peer side external VPN gateway to which this VPN tunnel is connected.
  late final pulumi.Output<String?> peerExternalGateway;

  /// The interface ID of the external VPN gateway to which this VPN tunnel is connected.
  late final pulumi.Output<int?> peerExternalGatewayInterface;

  /// URL of the peer side HA GCP VPN gateway to which this VPN tunnel is connected.
  /// If provided, the VPN tunnel will automatically use the same vpn_gateway_interface
  /// ID in the peer GCP VPN gateway.
  /// This field must reference a `gcp.compute.HaVpnGateway` resource.
  late final pulumi.Output<String?> peerGcpGateway;

  /// IP address of the peer VPN gateway. Only IPv4 is supported.
  late final pulumi.Output<String> peerIp;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The region where the tunnel is located. If unset, is set to the region of `target_vpn_gateway`.
  late final pulumi.Output<String> region;

  /// Remote traffic selector to use when establishing the VPN tunnel with
  /// peer VPN gateway. The value should be a CIDR formatted string,
  /// for example `192.168.0.0/16`. The ranges should be disjoint.
  /// Only IPv4 is supported.
  late final pulumi.Output<List<String>> remoteTrafficSelectors;

  /// URL of router resource to be used for dynamic routing.
  late final pulumi.Output<String?> router;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// Shared secret used to set the secure session between the Cloud VPN
  /// gateway and the peer VPN gateway.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final pulumi.Output<String?> sharedSecret;

  /// Hash of the shared secret.
  late final pulumi.Output<String> sharedSecretHash;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// (Optional, Write-Only)
  /// Shared secret used to set the secure session between the Cloud VPN
  /// gateway and the peer VPN gateway.
  /// **Note**: This property is write-only and will not be read from the API.
  ///
  /// > **Note:** One of `shared_secret` or `shared_secret_wo` can only be set.
  late final pulumi.Output<String?> sharedSecretWo;

  /// Triggers update of `shared_secret_wo` write-only. Increment this value when an update to `shared_secret_wo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  late final pulumi.Output<String?> sharedSecretWoVersion;

  /// URL of the Target VPN gateway with which this VPN tunnel is
  /// associated.
  late final pulumi.Output<String?> targetVpnGateway;

  /// The unique identifier for the resource. This identifier is defined by the server.
  late final pulumi.Output<String> tunnelId;

  /// URL of the VPN gateway with which this VPN tunnel is associated.
  /// This must be used if a High Availability VPN gateway resource is created.
  /// This field must reference a `gcp.compute.HaVpnGateway` resource.
  late final pulumi.Output<String?> vpnGateway;

  /// The interface ID of the VPN gateway with which this VPN tunnel is associated.
  late final pulumi.Output<int?> vpnGatewayInterface;

  VPNTunnel(
    String name, {
    VPNTunnelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/vPNTunnel:VPNTunnel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cipherSuite = registerOutput<VPNTunnelCipherSuite?>('cipherSuite');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.detailedStatus = registerOutput<String>('detailedStatus');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.ikeVersion = registerOutput<int?>('ikeVersion');
    this.labelFingerprint = registerOutput<String>('labelFingerprint');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.localTrafficSelectors =
        registerOutput<List<String>>('localTrafficSelectors');
    this.name = registerOutput<String>('name');
    this.peerExternalGateway = registerOutput<String?>('peerExternalGateway');
    this.peerExternalGatewayInterface =
        registerOutput<int?>('peerExternalGatewayInterface');
    this.peerGcpGateway = registerOutput<String?>('peerGcpGateway');
    this.peerIp = registerOutput<String>('peerIp');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.region = registerOutput<String>('region');
    this.remoteTrafficSelectors =
        registerOutput<List<String>>('remoteTrafficSelectors');
    this.router = registerOutput<String?>('router');
    this.selfLink = registerOutput<String>('selfLink');
    this.sharedSecret = registerOutput<String?>('sharedSecret');
    this.sharedSecretHash = registerOutput<String>('sharedSecretHash');
    this.sharedSecretWo = registerOutput<String?>('sharedSecretWo');
    this.sharedSecretWoVersion =
        registerOutput<String?>('sharedSecretWoVersion');
    this.targetVpnGateway = registerOutput<String?>('targetVpnGateway');
    this.tunnelId = registerOutput<String>('tunnelId');
    this.vpnGateway = registerOutput<String?>('vpnGateway');
    this.vpnGatewayInterface = registerOutput<int?>('vpnGatewayInterface');
  }
}
