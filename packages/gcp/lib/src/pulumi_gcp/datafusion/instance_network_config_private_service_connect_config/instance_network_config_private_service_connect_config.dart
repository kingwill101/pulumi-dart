// ignore_for_file: unused_element, unnecessary_cast

class InstanceNetworkConfigPrivateServiceConnectConfig {
  /// (Output)
  /// Output only. The CIDR block to which the CDF instance can't route traffic to in the consumer project VPC.
  /// The size of this block is /25. The format of this field is governed by RFC 4632.
  final String? effectiveUnreachableCidrBlock;

  /// Optional. The reference to the network attachment used to establish private connectivity.
  /// It will be of the form projects/{project-id}/regions/{region}/networkAttachments/{network-attachment-id}.
  /// This is required only when using connection type PRIVATE_SERVICE_CONNECT_INTERFACES.
  final String? networkAttachment;

  /// Optional. Input only. The CIDR block to which the CDF instance can't route traffic to in the consumer project VPC.
  /// The size of this block should be at least /25. This range should not overlap with the primary address range of any subnetwork used by the network attachment.
  /// This range can be used for other purposes in the consumer VPC as long as there is no requirement for CDF to reach destinations using these addresses.
  /// If this value is not provided, the server chooses a non RFC 1918 address range. The format of this field is governed by RFC 4632.
  final String? unreachableCidrBlock;

  InstanceNetworkConfigPrivateServiceConnectConfig({
    this.effectiveUnreachableCidrBlock,
    this.networkAttachment,
    this.unreachableCidrBlock,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final effectiveUnreachableCidrBlockValue = effectiveUnreachableCidrBlock;
    if (effectiveUnreachableCidrBlockValue != null) {
      map['effectiveUnreachableCidrBlock'] = effectiveUnreachableCidrBlockValue;
    }
    final networkAttachmentValue = networkAttachment;
    if (networkAttachmentValue != null) {
      map['networkAttachment'] = networkAttachmentValue;
    }
    final unreachableCidrBlockValue = unreachableCidrBlock;
    if (unreachableCidrBlockValue != null) {
      map['unreachableCidrBlock'] = unreachableCidrBlockValue;
    }
    return map;
  }

  factory InstanceNetworkConfigPrivateServiceConnectConfig.fromMap(
      Map<String, dynamic> map) {
    return InstanceNetworkConfigPrivateServiceConnectConfig(
      effectiveUnreachableCidrBlock:
          map['effectiveUnreachableCidrBlock'] == null
              ? null
              : map['effectiveUnreachableCidrBlock'] as String,
      networkAttachment: map['networkAttachment'] == null
          ? null
          : map['networkAttachment'] as String,
      unreachableCidrBlock: map['unreachableCidrBlock'] == null
          ? null
          : map['unreachableCidrBlock'] as String,
    );
  }
}
