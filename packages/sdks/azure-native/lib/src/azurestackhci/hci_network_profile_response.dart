// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hci_nic_detail_response.dart';
import 'host_network_response.dart';
import 'switch_detail_response.dart';

/// The network profile of a device.
class HciNetworkProfileResponse {
  /// HostNetwork config to deploy AzureStackHCI Cluster.
  final pulumi.Input<HostNetworkResponse> hostNetwork;
  /// List of NIC Details of device.
  final pulumi.Input<List<HciNicDetailResponse>> nicDetails;
  /// List of switch details for edge device.
  final pulumi.Input<List<SwitchDetailResponse>> switchDetails;

  /// Creates a new [HciNetworkProfileResponse].
  /// [hostNetwork] HostNetwork config to deploy AzureStackHCI Cluster.
  /// [nicDetails] List of NIC Details of device.
  /// [switchDetails] List of switch details for edge device.
  HciNetworkProfileResponse({
    required this.hostNetwork,
    required this.nicDetails,
    required this.switchDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostNetwork': pulumi.Input.mapInputValue<HostNetworkResponse, Map<String, dynamic>>(hostNetwork, (value) => value.toMap()),
      'nicDetails': pulumi.Input.mapInputValue<List<HciNicDetailResponse>, List<Map<String, dynamic>>>(nicDetails, (value) => pulumi.Input.encodeList<HciNicDetailResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'switchDetails': pulumi.Input.mapInputValue<List<SwitchDetailResponse>, List<Map<String, dynamic>>>(switchDetails, (value) => pulumi.Input.encodeList<SwitchDetailResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory HciNetworkProfileResponse.fromMap(Map<String, dynamic> map) {
    return HciNetworkProfileResponse(
      hostNetwork: (HostNetworkResponse.fromMap((map['hostNetwork'] as Map).cast<String, dynamic>())).input(),
      nicDetails: (pulumi.Input.decodeList<HciNicDetailResponse>(map['nicDetails'], (value) => HciNicDetailResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      switchDetails: (pulumi.Input.decodeList<SwitchDetailResponse>(map['switchDetails'], (value) => SwitchDetailResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

