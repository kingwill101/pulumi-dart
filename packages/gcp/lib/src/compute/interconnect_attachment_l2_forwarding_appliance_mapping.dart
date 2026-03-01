// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interconnect_attachment_l2_forwarding_appliance_mapping_inner_vlan_to_appliance_mapping.dart';

class InterconnectAttachmentL2ForwardingApplianceMapping {
  /// The appliance IP address.
  final String? applianceIpAddress;

  /// Structure is documented below.
  final List<
    InterconnectAttachmentL2ForwardingApplianceMappingInnerVlanToApplianceMapping
  >?
  innerVlanToApplianceMappings;

  /// The name of this appliance mapping rule.
  final String? name;

  /// The VLAN tag.
  final String? vlanId;

  /// Creates a new [InterconnectAttachmentL2ForwardingApplianceMapping].
  /// [applianceIpAddress] The appliance IP address.
  /// [innerVlanToApplianceMappings] Structure is documented below.
  /// [name] The name of this appliance mapping rule.
  /// [vlanId] The VLAN tag.
  InterconnectAttachmentL2ForwardingApplianceMapping({
    this.applianceIpAddress,
    this.innerVlanToApplianceMappings,
    this.name,
    this.vlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applianceIpAddress': ?applianceIpAddress,
      'innerVlanToApplianceMappings': ?innerVlanToApplianceMappings == null
          ? null
          : pulumi.Input.encodeList<
              InterconnectAttachmentL2ForwardingApplianceMappingInnerVlanToApplianceMapping,
              Map<String, dynamic>
            >(innerVlanToApplianceMappings!, (value) => value.toMap()),
      'name': ?name,
      'vlanId': ?vlanId,
    };
  }

  factory InterconnectAttachmentL2ForwardingApplianceMapping.fromMap(
    Map<String, dynamic> map,
  ) {
    return InterconnectAttachmentL2ForwardingApplianceMapping(
      applianceIpAddress: map['applianceIpAddress'] == null
          ? null
          : map['applianceIpAddress'] as String,
      innerVlanToApplianceMappings: map['innerVlanToApplianceMappings'] == null
          ? null
          : pulumi.Input.decodeList<
              InterconnectAttachmentL2ForwardingApplianceMappingInnerVlanToApplianceMapping
            >(
              map['innerVlanToApplianceMappings'],
              (value) =>
                  InterconnectAttachmentL2ForwardingApplianceMappingInnerVlanToApplianceMapping.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      name: map['name'] == null ? null : map['name'] as String,
      vlanId: map['vlanId'] == null ? null : map['vlanId'] as String,
    );
  }
}
