// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monthly_transfer_response.dart';
import 'port_response.dart';

/// Definition of Networking
class NetworkingResponse {
  /// Monthly Transfer of the Instance.
  final MonthlyTransferResponse? monthlyTransfer;
  /// Ports to the Instance.
  final List<PortResponse>? ports;

  /// Creates a new [NetworkingResponse].
  /// [monthlyTransfer] Monthly Transfer of the Instance.
  /// [ports] Ports to the Instance.
  NetworkingResponse({
    this.monthlyTransfer,
    this.ports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'monthlyTransfer': ?monthlyTransfer == null ? null : monthlyTransfer!.toMap(),
      'ports': ?ports == null ? null : pulumi.Input.encodeList<PortResponse, Map<String, dynamic>>(ports!, (value) => value.toMap()),
    };
  }

  factory NetworkingResponse.fromMap(Map<String, dynamic> map) {
    return NetworkingResponse(
      monthlyTransfer: map['monthlyTransfer'] == null ? null : MonthlyTransferResponse.fromMap((map['monthlyTransfer'] as Map).cast<String, dynamic>()),
      ports: map['ports'] == null ? null : pulumi.Input.decodeList<PortResponse>(map['ports'], (value) => PortResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

