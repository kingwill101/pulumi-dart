// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'edge_machine_nic_detail_response.dart';
import 'switch_detail_response.dart';

/// NetworkProfile of edge machine.
class EdgeMachineNetworkProfileResponse {
  /// List of Network Interface Card (NIC) Details of edge machine.
  final pulumi.Input<List<EdgeMachineNicDetailResponse>> nicDetails;
  /// List of switch Details of edge machine.
  final pulumi.Input<List<SwitchDetailResponse>> switchDetails;

  /// Creates a new [EdgeMachineNetworkProfileResponse].
  /// [nicDetails] List of Network Interface Card (NIC) Details of edge machine.
  /// [switchDetails] List of switch Details of edge machine.
  const EdgeMachineNetworkProfileResponse({
    required this.nicDetails,
    required this.switchDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nicDetails': pulumi.Input.mapInputValue<List<EdgeMachineNicDetailResponse>, List<Map<String, dynamic>>>(nicDetails, (value) => pulumi.Input.encodeList<EdgeMachineNicDetailResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'switchDetails': pulumi.Input.mapInputValue<List<SwitchDetailResponse>, List<Map<String, dynamic>>>(switchDetails, (value) => pulumi.Input.encodeList<SwitchDetailResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EdgeMachineNetworkProfileResponse.fromMap(Map<String, dynamic> map) {
    return EdgeMachineNetworkProfileResponse(
      nicDetails: pulumi.Input.fromValue(pulumi.Input.decodeList<EdgeMachineNicDetailResponse>(map['nicDetails']!, (value) => EdgeMachineNicDetailResponse.fromMap((value as Map).cast<String, dynamic>()))),
      switchDetails: pulumi.Input.fromValue(pulumi.Input.decodeList<SwitchDetailResponse>(map['switchDetails']!, (value) => SwitchDetailResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

