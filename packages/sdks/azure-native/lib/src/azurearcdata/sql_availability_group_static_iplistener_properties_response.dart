// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_availability_group_static_iplistener_properties_response_ip_v4_addresses_and_masks.dart';

/// The properties of a static IP Arc Sql availability group listener
class SqlAvailabilityGroupStaticIPListenerPropertiesResponse {
  /// the DNS name for the listener.
  final pulumi.Input<String>? dnsName;
  /// IP V4 Addresses and masks for the listener.
  final pulumi.Input<List<SqlAvailabilityGroupStaticIPListenerPropertiesResponseIpV4AddressesAndMasks>>? ipV4AddressesAndMasks;
  /// IP V6 Addresses for the listener
  final pulumi.Input<List<String>>? ipV6Addresses;
  /// Network port for the listener. Default is 1433.
  final pulumi.Input<int>? port;

  /// Creates a new [SqlAvailabilityGroupStaticIPListenerPropertiesResponse].
  /// [dnsName] the DNS name for the listener.
  /// [ipV4AddressesAndMasks] IP V4 Addresses and masks for the listener.
  /// [ipV6Addresses] IP V6 Addresses for the listener
  /// [port] Network port for the listener. Default is 1433.
  const SqlAvailabilityGroupStaticIPListenerPropertiesResponse({
    this.dnsName,
    this.ipV4AddressesAndMasks,
    this.ipV6Addresses,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsName': ?dnsName,
      'ipV4AddressesAndMasks': ?pulumi.Input.mapOptionalInputValue<List<SqlAvailabilityGroupStaticIPListenerPropertiesResponseIpV4AddressesAndMasks>, List<Map<String, dynamic>>>(ipV4AddressesAndMasks, (value) => pulumi.Input.encodeList<SqlAvailabilityGroupStaticIPListenerPropertiesResponseIpV4AddressesAndMasks, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipV6Addresses': ?ipV6Addresses,
      'port': ?port,
    };
  }

  factory SqlAvailabilityGroupStaticIPListenerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SqlAvailabilityGroupStaticIPListenerPropertiesResponse(
      dnsName: (() { final guardedValue = map['dnsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipV4AddressesAndMasks: (() { final guardedValue = map['ipV4AddressesAndMasks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SqlAvailabilityGroupStaticIPListenerPropertiesResponseIpV4AddressesAndMasks>(guardedValue, (value) => SqlAvailabilityGroupStaticIPListenerPropertiesResponseIpV4AddressesAndMasks.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ipV6Addresses: (() { final guardedValue = map['ipV6Addresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
