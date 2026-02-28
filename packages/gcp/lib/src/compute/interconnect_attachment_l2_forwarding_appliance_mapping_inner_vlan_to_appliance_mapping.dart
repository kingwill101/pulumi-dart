// ignore_for_file: unused_element, unnecessary_cast

class InterconnectAttachmentL2ForwardingApplianceMappingInnerVlanToApplianceMapping {
  /// The inner appliance IP address.
  final String? innerApplianceIpAddress;

  /// List of inner VLAN tags.
  final List<String>? innerVlanTags;

  /// Creates a new [InterconnectAttachmentL2ForwardingApplianceMappingInnerVlanToApplianceMapping].
  /// [innerApplianceIpAddress] The inner appliance IP address.
  /// [innerVlanTags] List of inner VLAN tags.
  InterconnectAttachmentL2ForwardingApplianceMappingInnerVlanToApplianceMapping({
    this.innerApplianceIpAddress,
    this.innerVlanTags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final innerApplianceIpAddressValue = innerApplianceIpAddress;
    if (innerApplianceIpAddressValue != null) {
      map['innerApplianceIpAddress'] = innerApplianceIpAddressValue;
    }
    final innerVlanTagsValue = innerVlanTags;
    if (innerVlanTagsValue != null) {
      map['innerVlanTags'] = innerVlanTagsValue;
    }
    return map;
  }

  factory InterconnectAttachmentL2ForwardingApplianceMappingInnerVlanToApplianceMapping.fromMap(
      Map<String, dynamic> map) {
    return InterconnectAttachmentL2ForwardingApplianceMappingInnerVlanToApplianceMapping(
      innerApplianceIpAddress: map['innerApplianceIpAddress'] == null
          ? null
          : map['innerApplianceIpAddress'] as String,
      innerVlanTags: map['innerVlanTags'] == null
          ? null
          : (map['innerVlanTags'] as List).cast<String>(),
    );
  }
}
