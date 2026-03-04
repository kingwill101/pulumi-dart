// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_interface_response.dart';

/// Describes the network information on this machine.
class NetworkProfileResponse {
  /// The list of network interfaces.
  final pulumi.Input<List<NetworkInterfaceResponse>>? networkInterfaces;

  /// Creates a new [NetworkProfileResponse].
  /// [networkInterfaces] The list of network interfaces.
  NetworkProfileResponse({this.networkInterfaces});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkInterfaces':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkInterfaceResponse>,
            List<Map<String, dynamic>>
          >(
            networkInterfaces,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkInterfaceResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory NetworkProfileResponse.fromMap(Map<String, dynamic> map) {
    return NetworkProfileResponse(
      networkInterfaces: (() {
        final guardedValue = map['networkInterfaces'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NetworkInterfaceResponse>(
            guardedValue,
            (value) => NetworkInterfaceResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
