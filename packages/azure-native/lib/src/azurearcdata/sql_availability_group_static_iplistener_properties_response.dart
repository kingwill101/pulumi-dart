// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_availability_group_static_iplistener_properties_response_ip_v4_addresses_and_masks.dart';

/// The properties of a static IP Arc Sql availability group listener
class SqlAvailabilityGroupStaticIPListenerPropertiesResponse {
  /// the DNS name for the listener.
  final String? dnsName;
  /// IP V4 Addresses and masks for the listener.
  final List<SqlAvailabilityGroupStaticIPListenerPropertiesResponseIpV4AddressesAndMasks>? ipV4AddressesAndMasks;
  /// IP V6 Addresses for the listener
  final List<String>? ipV6Addresses;
  /// Network port for the listener. Default is 1433.
  final int? port;

  /// Creates a new [SqlAvailabilityGroupStaticIPListenerPropertiesResponse].
  /// [dnsName] the DNS name for the listener.
  /// [ipV4AddressesAndMasks] IP V4 Addresses and masks for the listener.
  /// [ipV6Addresses] IP V6 Addresses for the listener
  /// [port] Network port for the listener. Default is 1433.
  SqlAvailabilityGroupStaticIPListenerPropertiesResponse({
    this.dnsName,
    this.ipV4AddressesAndMasks,
    this.ipV6Addresses,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsName': ?dnsName,
      'ipV4AddressesAndMasks': ?ipV4AddressesAndMasks == null ? null : pulumi.Input.encodeList<SqlAvailabilityGroupStaticIPListenerPropertiesResponseIpV4AddressesAndMasks, Map<String, dynamic>>(ipV4AddressesAndMasks!, (value) => value.toMap()),
      'ipV6Addresses': ?ipV6Addresses,
      'port': ?port,
    };
  }

  factory SqlAvailabilityGroupStaticIPListenerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SqlAvailabilityGroupStaticIPListenerPropertiesResponse(
      dnsName: map['dnsName'] == null ? null : map['dnsName'] as String,
      ipV4AddressesAndMasks: map['ipV4AddressesAndMasks'] == null ? null : pulumi.Input.decodeList<SqlAvailabilityGroupStaticIPListenerPropertiesResponseIpV4AddressesAndMasks>(map['ipV4AddressesAndMasks'], (value) => SqlAvailabilityGroupStaticIPListenerPropertiesResponseIpV4AddressesAndMasks.fromMap((value as Map).cast<String, dynamic>())),
      ipV6Addresses: map['ipV6Addresses'] == null ? null : (map['ipV6Addresses'] as List).cast<String>(),
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}

