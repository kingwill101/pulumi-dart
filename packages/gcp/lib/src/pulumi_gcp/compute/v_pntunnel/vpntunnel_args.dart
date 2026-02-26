// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../vpntunnel_cipher_suite/vpntunnel_cipher_suite.dart';

/// The set of arguments for VPNTunnel.
class VPNTunnelArgs {
  /// User specified list of ciphers to use for the phase 1 and phase 2 of the IKE protocol.
  /// Structure is documented below.
  final Input<VPNTunnelCipherSuite>? cipherSuite;

  /// An optional description of this resource.
  final Input<String>? description;

  /// IKE protocol version to use when establishing the VPN tunnel with
  /// peer VPN gateway.
  /// Acceptable IKE versions are 1 or 2. Default version is 2.
  final Input<int>? ikeVersion;

  /// Labels to apply to this VpnTunnel.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Local traffic selector to use when establishing the VPN tunnel with
  /// peer VPN gateway. The value should be a CIDR formatted string,
  /// for example `192.168.0.0/16`. The ranges should be disjoint.
  /// Only IPv4 is supported.
  final Input<List<String>>? localTrafficSelectors;

  /// Name of the resource. The name must be 1-63 characters long, and
  /// comply with RFC1035. Specifically, the name must be 1-63
  /// characters long and match the regular expression
  /// `a-z?` which means the first character
  /// must be a lowercase letter, and all following characters must
  /// be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  final Input<String>? name;

  /// URL of the peer side external VPN gateway to which this VPN tunnel is connected.
  final Input<String>? peerExternalGateway;

  /// The interface ID of the external VPN gateway to which this VPN tunnel is connected.
  final Input<int>? peerExternalGatewayInterface;

  /// URL of the peer side HA GCP VPN gateway to which this VPN tunnel is connected.
  /// If provided, the VPN tunnel will automatically use the same<span pulumi-lang-nodejs=" vpnGatewayInterface
  /// " pulumi-lang-dotnet=" VpnGatewayInterface
  /// " pulumi-lang-go=" vpnGatewayInterface
  /// " pulumi-lang-python=" vpn_gateway_interface
  /// " pulumi-lang-yaml=" vpnGatewayInterface
  /// " pulumi-lang-java=" vpnGatewayInterface
  /// "> vpn_gateway_interface
  /// </span>ID in the peer GCP VPN gateway.
  /// This field must reference a <span pulumi-lang-nodejs="`gcp.compute.HaVpnGateway`" pulumi-lang-dotnet="`gcp.compute.HaVpnGateway`" pulumi-lang-go="`compute.HaVpnGateway`" pulumi-lang-python="`compute.HaVpnGateway`" pulumi-lang-yaml="`gcp.compute.HaVpnGateway`" pulumi-lang-java="`gcp.compute.HaVpnGateway`">`gcp.compute.HaVpnGateway`</span> resource.
  final Input<String>? peerGcpGateway;

  /// IP address of the peer VPN gateway. Only IPv4 is supported.
  final Input<String>? peerIp;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The region where the tunnel is located. If unset, is set to the region of <span pulumi-lang-nodejs="`targetVpnGateway`" pulumi-lang-dotnet="`TargetVpnGateway`" pulumi-lang-go="`targetVpnGateway`" pulumi-lang-python="`target_vpn_gateway`" pulumi-lang-yaml="`targetVpnGateway`" pulumi-lang-java="`targetVpnGateway`">`target_vpn_gateway`</span>.
  final Input<String>? region;

  /// Remote traffic selector to use when establishing the VPN tunnel with
  /// peer VPN gateway. The value should be a CIDR formatted string,
  /// for example `192.168.0.0/16`. The ranges should be disjoint.
  /// Only IPv4 is supported.
  final Input<List<String>>? remoteTrafficSelectors;

  /// URL of router resource to be used for dynamic routing.
  final Input<String>? router;

  /// Shared secret used to set the secure session between the Cloud VPN
  /// gateway and the peer VPN gateway.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final Input<String>? sharedSecret;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// (Optional, Write-Only)
  /// Shared secret used to set the secure session between the Cloud VPN
  /// gateway and the peer VPN gateway.
  /// **Note**: This property is write-only and will not be read from the API.
  ///
  /// > **Note:** One of <span pulumi-lang-nodejs="`sharedSecret`" pulumi-lang-dotnet="`SharedSecret`" pulumi-lang-go="`sharedSecret`" pulumi-lang-python="`shared_secret`" pulumi-lang-yaml="`sharedSecret`" pulumi-lang-java="`sharedSecret`">`shared_secret`</span> or <span pulumi-lang-nodejs="`sharedSecretWo`" pulumi-lang-dotnet="`SharedSecretWo`" pulumi-lang-go="`sharedSecretWo`" pulumi-lang-python="`shared_secret_wo`" pulumi-lang-yaml="`sharedSecretWo`" pulumi-lang-java="`sharedSecretWo`">`shared_secret_wo`</span> can only be set.
  final Input<String>? sharedSecretWo;

  /// Triggers update of <span pulumi-lang-nodejs="`sharedSecretWo`" pulumi-lang-dotnet="`SharedSecretWo`" pulumi-lang-go="`sharedSecretWo`" pulumi-lang-python="`shared_secret_wo`" pulumi-lang-yaml="`sharedSecretWo`" pulumi-lang-java="`sharedSecretWo`">`shared_secret_wo`</span> write-only. Increment this value when an update to <span pulumi-lang-nodejs="`sharedSecretWo`" pulumi-lang-dotnet="`SharedSecretWo`" pulumi-lang-go="`sharedSecretWo`" pulumi-lang-python="`shared_secret_wo`" pulumi-lang-yaml="`sharedSecretWo`" pulumi-lang-java="`sharedSecretWo`">`shared_secret_wo`</span> is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  final Input<String>? sharedSecretWoVersion;

  /// URL of the Target VPN gateway with which this VPN tunnel is
  /// associated.
  final Input<String>? targetVpnGateway;

  /// URL of the VPN gateway with which this VPN tunnel is associated.
  /// This must be used if a High Availability VPN gateway resource is created.
  /// This field must reference a <span pulumi-lang-nodejs="`gcp.compute.HaVpnGateway`" pulumi-lang-dotnet="`gcp.compute.HaVpnGateway`" pulumi-lang-go="`compute.HaVpnGateway`" pulumi-lang-python="`compute.HaVpnGateway`" pulumi-lang-yaml="`gcp.compute.HaVpnGateway`" pulumi-lang-java="`gcp.compute.HaVpnGateway`">`gcp.compute.HaVpnGateway`</span> resource.
  final Input<String>? vpnGateway;

  /// The interface ID of the VPN gateway with which this VPN tunnel is associated.
  final Input<int>? vpnGatewayInterface;

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
      map['cipherSuite'] = Input.mapOptionalInputValue<VPNTunnelCipherSuite,
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
      cipherSuite:
          Input.asOptionalInput<VPNTunnelCipherSuite>(map['cipherSuite']),
      description: Input.asOptionalInput<String>(map['description']),
      ikeVersion: Input.asOptionalInput<int>(map['ikeVersion']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      localTrafficSelectors:
          Input.asOptionalInput<List<String>>(map['localTrafficSelectors']),
      name: Input.asOptionalInput<String>(map['name']),
      peerExternalGateway:
          Input.asOptionalInput<String>(map['peerExternalGateway']),
      peerExternalGatewayInterface:
          Input.asOptionalInput<int>(map['peerExternalGatewayInterface']),
      peerGcpGateway: Input.asOptionalInput<String>(map['peerGcpGateway']),
      peerIp: Input.asOptionalInput<String>(map['peerIp']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      remoteTrafficSelectors:
          Input.asOptionalInput<List<String>>(map['remoteTrafficSelectors']),
      router: Input.asOptionalInput<String>(map['router']),
      sharedSecret: Input.asOptionalInput<String>(map['sharedSecret']),
      sharedSecretWo: Input.asOptionalInput<String>(map['sharedSecretWo']),
      sharedSecretWoVersion:
          Input.asOptionalInput<String>(map['sharedSecretWoVersion']),
      targetVpnGateway: Input.asOptionalInput<String>(map['targetVpnGateway']),
      vpnGateway: Input.asOptionalInput<String>(map['vpnGateway']),
      vpnGatewayInterface:
          Input.asOptionalInput<int>(map['vpnGatewayInterface']),
    );
  }
}
