/// Indicates the user-supplied encryption option of this VLAN attachment (interconnectAttachment). Can only be specified at attachment creation for PARTNER or DEDICATED attachments. Possible values are: - NONE - This is the default value, which means that the VLAN attachment carries unencrypted traffic. VMs are able to send traffic to, or receive traffic from, such a VLAN attachment. - IPSEC - The VLAN attachment carries only encrypted traffic that is encrypted by an IPsec device, such as an HA VPN gateway or third-party IPsec VPN. VMs cannot directly send traffic to, or receive traffic from, such a VLAN attachment. To use *HA VPN over Cloud Interconnect*, the VLAN attachment must be created with this option.
enum InterconnectAttachmentEncryptionComputeV1 {
  ipsec("IPSEC"),
  none("NONE");

  const InterconnectAttachmentEncryptionComputeV1(this.value);
  final String value;

  static InterconnectAttachmentEncryptionComputeV1 fromValue(String value) {
    for (final item in InterconnectAttachmentEncryptionComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown InterconnectAttachmentEncryptionComputeV1 value: $value',
    );
  }
}
