// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monthly_transfer_response.dart';
import 'port_response.dart';

/// Definition of Networking
class NetworkingResponse {
  /// Monthly Transfer of the Instance.
  final pulumi.Input<MonthlyTransferResponse>? monthlyTransfer;
  /// Ports to the Instance.
  final pulumi.Input<List<PortResponse>>? ports;

  /// Creates a new [NetworkingResponse].
  /// [monthlyTransfer] Monthly Transfer of the Instance.
  /// [ports] Ports to the Instance.
  NetworkingResponse({
    this.monthlyTransfer,
    this.ports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'monthlyTransfer': ?pulumi.Input.mapOptionalInputValue<MonthlyTransferResponse, Map<String, dynamic>>(monthlyTransfer, (value) => value.toMap()),
      'ports': ?pulumi.Input.mapOptionalInputValue<List<PortResponse>, List<Map<String, dynamic>>>(ports, (value) => pulumi.Input.encodeList<PortResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkingResponse.fromMap(Map<String, dynamic> map) {
    return NetworkingResponse(
      monthlyTransfer: map['monthlyTransfer'] == null ? null : (MonthlyTransferResponse.fromMap((map['monthlyTransfer']! as Map).cast<String, dynamic>())).input(),
      ports: map['ports'] == null ? null : (pulumi.Input.decodeList<PortResponse>(map['ports']!, (value) => PortResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

