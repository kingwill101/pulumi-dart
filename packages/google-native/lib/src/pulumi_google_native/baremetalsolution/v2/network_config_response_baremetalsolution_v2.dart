// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'intake_vlan_attachment_response.dart';

/// Configuration parameters for a new network.
class NetworkConfigResponseBaremetalsolutionV2 {
  /// Interconnect bandwidth. Set only when type is CLIENT.
  final String bandwidth;

  /// CIDR range of the network.
  final String cidr;

  /// The GCP service of the network. Available gcp_service are in https://cloud.google.com/bare-metal/docs/bms-planning.
  final String gcpService;

  /// The JumboFramesEnabled option for customer to set.
  final bool jumboFramesEnabled;

  /// The name of the network config.
  final String name;

  /// Service CIDR, if any.
  final String serviceCidr;

  /// The type of this network, either Client or Private.
  final String type;

  /// User note field, it can be used by customers to add additional information for the BMS Ops team .
  final String userNote;

  /// List of VLAN attachments. As of now there are always 2 attachments, but it is going to change in the future (multi vlan).
  final List<IntakeVlanAttachmentResponse> vlanAttachments;

  /// Whether the VLAN attachment pair is located in the same project.
  final bool vlanSameProject;

  NetworkConfigResponseBaremetalsolutionV2({
    required this.bandwidth,
    required this.cidr,
    required this.gcpService,
    required this.jumboFramesEnabled,
    required this.name,
    required this.serviceCidr,
    required this.type,
    required this.userNote,
    required this.vlanAttachments,
    required this.vlanSameProject,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bandwidth'] = bandwidth;
    map['cidr'] = cidr;
    map['gcpService'] = gcpService;
    map['jumboFramesEnabled'] = jumboFramesEnabled;
    map['name'] = name;
    map['serviceCidr'] = serviceCidr;
    map['type'] = type;
    map['userNote'] = userNote;
    map['vlanAttachments'] = pulumi.Input.encodeList<
        IntakeVlanAttachmentResponse,
        Map<String, dynamic>>(vlanAttachments, (value) => value.toMap());
    map['vlanSameProject'] = vlanSameProject;
    return map;
  }

  factory NetworkConfigResponseBaremetalsolutionV2.fromMap(
      Map<String, dynamic> map) {
    return NetworkConfigResponseBaremetalsolutionV2(
      bandwidth: map['bandwidth'] as String,
      cidr: map['cidr'] as String,
      gcpService: map['gcpService'] as String,
      jumboFramesEnabled: map['jumboFramesEnabled'] as bool,
      name: map['name'] as String,
      serviceCidr: map['serviceCidr'] as String,
      type: map['type'] as String,
      userNote: map['userNote'] as String,
      vlanAttachments: pulumi.Input.decodeList<IntakeVlanAttachmentResponse>(
          map['vlanAttachments'],
          (value) => IntakeVlanAttachmentResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      vlanSameProject: map['vlanSameProject'] as bool,
    );
  }
}
