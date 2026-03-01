// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interconnect_attachment_l2_forwarding_appliance_mapping.dart';
import 'interconnect_attachment_l2_forwarding_geneve_header.dart';

class InterconnectAttachmentL2Forwarding {
  /// A map of VLAN tags to appliances and optional inner mapping rules.
  /// Structure is documented below.
  final List<InterconnectAttachmentL2ForwardingApplianceMapping>?
  applianceMappings;

  /// The default appliance IP address.
  final String? defaultApplianceIpAddress;

  /// GeneveHeader related configurations.
  /// Structure is documented below.
  final InterconnectAttachmentL2ForwardingGeneveHeader? geneveHeader;

  /// URL of the network to which this attachment belongs.
  final String? network;

  /// The tunnel endpoint IP address.
  final String? tunnelEndpointIpAddress;

  /// Creates a new [InterconnectAttachmentL2Forwarding].
  /// [applianceMappings] A map of VLAN tags to appliances and optional inner mapping rules.
  /// [defaultApplianceIpAddress] The default appliance IP address.
  /// [geneveHeader] GeneveHeader related configurations.
  /// [network] URL of the network to which this attachment belongs.
  /// [tunnelEndpointIpAddress] The tunnel endpoint IP address.
  InterconnectAttachmentL2Forwarding({
    this.applianceMappings,
    this.defaultApplianceIpAddress,
    this.geneveHeader,
    this.network,
    this.tunnelEndpointIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applianceMappings': ?applianceMappings == null
          ? null
          : pulumi.Input.encodeList<
              InterconnectAttachmentL2ForwardingApplianceMapping,
              Map<String, dynamic>
            >(applianceMappings!, (value) => value.toMap()),
      'defaultApplianceIpAddress': ?defaultApplianceIpAddress,
      'geneveHeader': ?geneveHeader == null ? null : geneveHeader!.toMap(),
      'network': ?network,
      'tunnelEndpointIpAddress': ?tunnelEndpointIpAddress,
    };
  }

  factory InterconnectAttachmentL2Forwarding.fromMap(Map<String, dynamic> map) {
    return InterconnectAttachmentL2Forwarding(
      applianceMappings: map['applianceMappings'] == null
          ? null
          : pulumi.Input.decodeList<
              InterconnectAttachmentL2ForwardingApplianceMapping
            >(
              map['applianceMappings'],
              (value) =>
                  InterconnectAttachmentL2ForwardingApplianceMapping.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      defaultApplianceIpAddress: map['defaultApplianceIpAddress'] == null
          ? null
          : map['defaultApplianceIpAddress'] as String,
      geneveHeader: map['geneveHeader'] == null
          ? null
          : InterconnectAttachmentL2ForwardingGeneveHeader.fromMap(
              (map['geneveHeader'] as Map).cast<String, dynamic>(),
            ),
      network: map['network'] == null ? null : map['network'] as String,
      tunnelEndpointIpAddress: map['tunnelEndpointIpAddress'] == null
          ? null
          : map['tunnelEndpointIpAddress'] as String,
    );
  }
}
