// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_address_response.dart';

/// Describes a network interface.
class NetworkInterfaceResponse {
  /// The list of IP addresses in this interface.
  final pulumi.Input<List<IpAddressResponse>>? ipAddresses;

  /// Creates a new [NetworkInterfaceResponse].
  /// [ipAddresses] The list of IP addresses in this interface.
  NetworkInterfaceResponse({this.ipAddresses});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddresses':
          ?pulumi.Input.mapOptionalInputValue<
            List<IpAddressResponse>,
            List<Map<String, dynamic>>
          >(
            ipAddresses,
            (value) =>
                pulumi.Input.encodeList<
                  IpAddressResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory NetworkInterfaceResponse.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceResponse(
      ipAddresses: (() {
        final guardedValue = map['ipAddresses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<IpAddressResponse>(
            guardedValue,
            (value) => IpAddressResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
