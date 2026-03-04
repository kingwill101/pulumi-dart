// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_address_response.dart';

/// The flow endpoints configuration.
class FlowEndpointsResponse {
  /// The access endpoint ip address.
  final pulumi.Input<List<IpAddressResponse>>? accessEndpointIpAddresses;

  /// The outgoing ip address.
  final pulumi.Input<List<IpAddressResponse>>? outgoingIpAddresses;

  /// Creates a new [FlowEndpointsResponse].
  /// [accessEndpointIpAddresses] The access endpoint ip address.
  /// [outgoingIpAddresses] The outgoing ip address.
  FlowEndpointsResponse({
    this.accessEndpointIpAddresses,
    this.outgoingIpAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessEndpointIpAddresses':
          ?pulumi.Input.mapOptionalInputValue<
            List<IpAddressResponse>,
            List<Map<String, dynamic>>
          >(
            accessEndpointIpAddresses,
            (value) =>
                pulumi.Input.encodeList<
                  IpAddressResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'outgoingIpAddresses':
          ?pulumi.Input.mapOptionalInputValue<
            List<IpAddressResponse>,
            List<Map<String, dynamic>>
          >(
            outgoingIpAddresses,
            (value) =>
                pulumi.Input.encodeList<
                  IpAddressResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory FlowEndpointsResponse.fromMap(Map<String, dynamic> map) {
    return FlowEndpointsResponse(
      accessEndpointIpAddresses: (() {
        final guardedValue = map['accessEndpointIpAddresses'];
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
      outgoingIpAddresses: (() {
        final guardedValue = map['outgoingIpAddresses'];
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
