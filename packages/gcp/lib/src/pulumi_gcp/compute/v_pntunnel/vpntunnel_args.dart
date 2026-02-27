// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../vpntunnel_cipher_suite/vpntunnel_cipher_suite.dart';

/// The set of arguments for VPNTunnel.
class VPNTunnelArgs {
  /// User specified list of ciphers to use for the phase 1 and phase 2 of the IKE protocol.
  /// Structure is documented below.
  final pulumi.Input<VPNTunnelCipherSuite>? cipherSuite;

  /// An optional description of this resource.
  final pulumi.Input<String>? description;

  /// IKE protocol version to use when establishing the VPN tunnel with
  /// peer VPN gateway.
  /// Acceptable IKE versions are 1 or 2. Default version is 2.
  final pulumi.Input<int>? ikeVersion;

  /// Labels to apply to this VpnTunnel.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Local traffic selector to use when establishing the VPN tunnel with
  /// peer VPN gateway. The value should be a CIDR formatted string,
  /// for example `192.168.0.0/16`. The ranges should be disjoint.
  /// Only IPv4 is supported.
  final pulumi.Input<List<String>>? localTrafficSelectors;

  /// Name of the resource. The name must be 1-63 characters long, and
  /// comply with RFC1035. Specifically, the name must be 1-63
  /// characters long and match the regular expression
  /// `a-z?` which means the first character
  /// must be a lowercase letter, and all following characters must
  /// be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// URL of the peer side external VPN gateway to which this VPN tunnel is connected.
  final pulumi.Input<String>? peerExternalGateway;

  /// The interface ID of the external VPN gateway to which this VPN tunnel is connected.
  final pulumi.Input<int>? peerExternalGatewayInterface;

  /// URL of the peer side HA GCP VPN gateway to which this VPN tunnel is connected.
  /// If provided, the VPN tunnel will automatically use the same vpn_gateway_interface
  /// ID in the peer GCP VPN gateway.
  /// This field must reference a `gcp.compute.HaVpnGateway` resource.
  final pulumi.Input<String>? peerGcpGateway;

  /// IP address of the peer VPN gateway. Only IPv4 is supported.
  final pulumi.Input<String>? peerIp;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The region where the tunnel is located. If unset, is set to the region of `target_vpn_gateway`.
  final pulumi.Input<String>? region;

  /// Remote traffic selector to use when establishing the VPN tunnel with
  /// peer VPN gateway. The value should be a CIDR formatted string,
  /// for example `192.168.0.0/16`. The ranges should be disjoint.
  /// Only IPv4 is supported.
  final pulumi.Input<List<String>>? remoteTrafficSelectors;

  /// URL of router resource to be used for dynamic routing.
  final pulumi.Input<String>? router;

  /// Shared secret used to set the secure session between the Cloud VPN
  /// gateway and the peer VPN gateway.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? sharedSecret;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// (Optional, Write-Only)
  /// Shared secret used to set the secure session between the Cloud VPN
  /// gateway and the peer VPN gateway.
  /// **Note**: This property is write-only and will not be read from the API.
  ///
  /// > **Note:** One of `shared_secret` or `shared_secret_wo` can only be set.
  final pulumi.Input<String>? sharedSecretWo;

  /// Triggers update of `shared_secret_wo` write-only. Increment this value when an update to `shared_secret_wo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  final pulumi.Input<String>? sharedSecretWoVersion;

  /// URL of the Target VPN gateway with which this VPN tunnel is
  /// associated.
  final pulumi.Input<String>? targetVpnGateway;

  /// URL of the VPN gateway with which this VPN tunnel is associated.
  /// This must be used if a High Availability VPN gateway resource is created.
  /// This field must reference a `gcp.compute.HaVpnGateway` resource.
  final pulumi.Input<String>? vpnGateway;

  /// The interface ID of the VPN gateway with which this VPN tunnel is associated.
  final pulumi.Input<int>? vpnGatewayInterface;

  VPNTunnelArgs({
    this.cipherSuite,
    this.description,
    this.ikeVersion,
    this.labels,
    this.localTrafficSelectors,
    this.name,
    this.peerExternalGateway,
    this.peerExternalGatewayInterface,
    this.peerGcpGateway,
    this.peerIp,
    this.project,
    this.region,
    this.remoteTrafficSelectors,
    this.router,
    this.sharedSecret,
    this.sharedSecretWo,
    this.sharedSecretWoVersion,
    this.targetVpnGateway,
    this.vpnGateway,
    this.vpnGatewayInterface,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cipherSuiteValue = cipherSuite;
    if (cipherSuiteValue != null) {
      map['cipherSuite'] = pulumi.Input.mapOptionalInputValue<
          VPNTunnelCipherSuite,
          Map<String, dynamic>>(cipherSuiteValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final ikeVersionValue = ikeVersion;
    if (ikeVersionValue != null) {
      map['ikeVersion'] = ikeVersionValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final localTrafficSelectorsValue = localTrafficSelectors;
    if (localTrafficSelectorsValue != null) {
      map['localTrafficSelectors'] = localTrafficSelectorsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final peerExternalGatewayValue = peerExternalGateway;
    if (peerExternalGatewayValue != null) {
      map['peerExternalGateway'] = peerExternalGatewayValue;
    }
    final peerExternalGatewayInterfaceValue = peerExternalGatewayInterface;
    if (peerExternalGatewayInterfaceValue != null) {
      map['peerExternalGatewayInterface'] = peerExternalGatewayInterfaceValue;
    }
    final peerGcpGatewayValue = peerGcpGateway;
    if (peerGcpGatewayValue != null) {
      map['peerGcpGateway'] = peerGcpGatewayValue;
    }
    final peerIpValue = peerIp;
    if (peerIpValue != null) {
      map['peerIp'] = peerIpValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final remoteTrafficSelectorsValue = remoteTrafficSelectors;
    if (remoteTrafficSelectorsValue != null) {
      map['remoteTrafficSelectors'] = remoteTrafficSelectorsValue;
    }
    final routerValue = router;
    if (routerValue != null) {
      map['router'] = routerValue;
    }
    final sharedSecretValue = sharedSecret;
    if (sharedSecretValue != null) {
      map['sharedSecret'] = sharedSecretValue;
    }
    final sharedSecretWoValue = sharedSecretWo;
    if (sharedSecretWoValue != null) {
      map['sharedSecretWo'] = sharedSecretWoValue;
    }
    final sharedSecretWoVersionValue = sharedSecretWoVersion;
    if (sharedSecretWoVersionValue != null) {
      map['sharedSecretWoVersion'] = sharedSecretWoVersionValue;
    }
    final targetVpnGatewayValue = targetVpnGateway;
    if (targetVpnGatewayValue != null) {
      map['targetVpnGateway'] = targetVpnGatewayValue;
    }
    final vpnGatewayValue = vpnGateway;
    if (vpnGatewayValue != null) {
      map['vpnGateway'] = vpnGatewayValue;
    }
    final vpnGatewayInterfaceValue = vpnGatewayInterface;
    if (vpnGatewayInterfaceValue != null) {
      map['vpnGatewayInterface'] = vpnGatewayInterfaceValue;
    }
    return map;
  }

  factory VPNTunnelArgs.fromMap(Map<String, dynamic> map) {
    return VPNTunnelArgs(
      cipherSuite: pulumi.Input.asOptionalInput<VPNTunnelCipherSuite>(
          map['cipherSuite']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      ikeVersion: pulumi.Input.asOptionalInput<int>(map['ikeVersion']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      localTrafficSelectors: pulumi.Input.asOptionalInput<List<String>>(
          map['localTrafficSelectors']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      peerExternalGateway:
          pulumi.Input.asOptionalInput<String>(map['peerExternalGateway']),
      peerExternalGatewayInterface: pulumi.Input.asOptionalInput<int>(
          map['peerExternalGatewayInterface']),
      peerGcpGateway:
          pulumi.Input.asOptionalInput<String>(map['peerGcpGateway']),
      peerIp: pulumi.Input.asOptionalInput<String>(map['peerIp']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      remoteTrafficSelectors: pulumi.Input.asOptionalInput<List<String>>(
          map['remoteTrafficSelectors']),
      router: pulumi.Input.asOptionalInput<String>(map['router']),
      sharedSecret: pulumi.Input.asOptionalInput<String>(map['sharedSecret']),
      sharedSecretWo:
          pulumi.Input.asOptionalInput<String>(map['sharedSecretWo']),
      sharedSecretWoVersion:
          pulumi.Input.asOptionalInput<String>(map['sharedSecretWoVersion']),
      targetVpnGateway:
          pulumi.Input.asOptionalInput<String>(map['targetVpnGateway']),
      vpnGateway: pulumi.Input.asOptionalInput<String>(map['vpnGateway']),
      vpnGatewayInterface:
          pulumi.Input.asOptionalInput<int>(map['vpnGatewayInterface']),
    );
  }
}
