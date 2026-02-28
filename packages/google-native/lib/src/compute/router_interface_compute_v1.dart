// ignore_for_file: unused_element, unnecessary_cast

class RouterInterfaceComputeV1 {
  /// IP address and range of the interface. The IP range must be in the RFC3927 link-local IP address space. The value must be a CIDR-formatted string, for example: 169.254.0.1/30. NOTE: Do not truncate the address as it represents the IP address of the interface.
  final String? ipRange;

  /// URI of the linked Interconnect attachment. It must be in the same region as the router. Each interface can have one linked resource, which can be a VPN tunnel, an Interconnect attachment, or a subnetwork.
  final String? linkedInterconnectAttachment;

  /// URI of the linked VPN tunnel, which must be in the same region as the router. Each interface can have one linked resource, which can be a VPN tunnel, an Interconnect attachment, or a subnetwork.
  final String? linkedVpnTunnel;

  /// Name of this interface entry. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String? name;

  /// The regional private internal IP address that is used to establish BGP sessions to a VM instance acting as a third-party Router Appliance, such as a Next Gen Firewall, a Virtual Router, or an SD-WAN VM.
  final String? privateIpAddress;

  /// Name of the interface that will be redundant with the current interface you are creating. The redundantInterface must belong to the same Cloud Router as the interface here. To establish the BGP session to a Router Appliance VM, you must create two BGP peers. The two BGP peers must be attached to two separate interfaces that are redundant with each other. The redundant_interface must be 1-63 characters long, and comply with RFC1035. Specifically, the redundant_interface must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String? redundantInterface;

  /// The URI of the subnetwork resource that this interface belongs to, which must be in the same region as the Cloud Router. When you establish a BGP session to a VM instance using this interface, the VM instance must belong to the same subnetwork as the subnetwork specified here.
  final String? subnetwork;

  /// Creates a new [RouterInterfaceComputeV1].
  /// [ipRange] IP address and range of the interface. The IP range must be in the RFC3927 link-local IP address space. The value must be a CIDR-formatted string, for example: 169.254.0.1/30. NOTE: Do not truncate the address as it represents the IP address of the interface.
  /// [linkedInterconnectAttachment] URI of the linked Interconnect attachment. It must be in the same region as the router. Each interface can have one linked resource, which can be a VPN tunnel, an Interconnect attachment, or a subnetwork.
  /// [linkedVpnTunnel] URI of the linked VPN tunnel, which must be in the same region as the router. Each interface can have one linked resource, which can be a VPN tunnel, an Interconnect attachment, or a subnetwork.
  /// [name] Name of this interface entry. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [privateIpAddress] The regional private internal IP address that is used to establish BGP sessions to a VM instance acting as a third-party Router Appliance, such as a Next Gen Firewall, a Virtual Router, or an SD-WAN VM.
  /// [redundantInterface] Name of the interface that will be redundant with the current interface you are creating. The redundantInterface must belong to the same Cloud Router as the interface here. To establish the BGP session to a Router Appliance VM, you must create two BGP peers. The two BGP peers must be attached to two separate interfaces that are redundant with each other. The redundant_interface must be 1-63 characters long, and comply with RFC1035. Specifically, the redundant_interface must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [subnetwork] The URI of the subnetwork resource that this interface belongs to, which must be in the same region as the Cloud Router. When you establish a BGP session to a VM instance using this interface, the VM instance must belong to the same subnetwork as the subnetwork specified here.
  RouterInterfaceComputeV1({
    this.ipRange,
    this.linkedInterconnectAttachment,
    this.linkedVpnTunnel,
    this.name,
    this.privateIpAddress,
    this.redundantInterface,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ipRangeValue = ipRange;
    if (ipRangeValue != null) {
      map['ipRange'] = ipRangeValue;
    }
    final linkedInterconnectAttachmentValue = linkedInterconnectAttachment;
    if (linkedInterconnectAttachmentValue != null) {
      map['linkedInterconnectAttachment'] = linkedInterconnectAttachmentValue;
    }
    final linkedVpnTunnelValue = linkedVpnTunnel;
    if (linkedVpnTunnelValue != null) {
      map['linkedVpnTunnel'] = linkedVpnTunnelValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final privateIpAddressValue = privateIpAddress;
    if (privateIpAddressValue != null) {
      map['privateIpAddress'] = privateIpAddressValue;
    }
    final redundantInterfaceValue = redundantInterface;
    if (redundantInterfaceValue != null) {
      map['redundantInterface'] = redundantInterfaceValue;
    }
    final subnetworkValue = subnetwork;
    if (subnetworkValue != null) {
      map['subnetwork'] = subnetworkValue;
    }
    return map;
  }

  factory RouterInterfaceComputeV1.fromMap(Map<String, dynamic> map) {
    return RouterInterfaceComputeV1(
      ipRange: map['ipRange'] == null ? null : map['ipRange'] as String,
      linkedInterconnectAttachment: map['linkedInterconnectAttachment'] == null
          ? null
          : map['linkedInterconnectAttachment'] as String,
      linkedVpnTunnel: map['linkedVpnTunnel'] == null
          ? null
          : map['linkedVpnTunnel'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      privateIpAddress: map['privateIpAddress'] == null
          ? null
          : map['privateIpAddress'] as String,
      redundantInterface: map['redundantInterface'] == null
          ? null
          : map['redundantInterface'] as String,
      subnetwork:
          map['subnetwork'] == null ? null : map['subnetwork'] as String,
    );
  }
}
