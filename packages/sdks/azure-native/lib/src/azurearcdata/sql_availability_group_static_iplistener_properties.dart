// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_availability_group_static_iplistener_properties_ip_v4_addresses_and_masks.dart';

/// The properties of a static IP Arc Sql availability group listener
class SqlAvailabilityGroupStaticIPListenerProperties {
  /// the DNS name for the listener.
  final pulumi.Input<String>? dnsName;
  /// IP V4 Addresses and masks for the listener.
  final pulumi.Input<List<SqlAvailabilityGroupStaticIPListenerPropertiesIpV4AddressesAndMasks>>? ipV4AddressesAndMasks;
  /// IP V6 Addresses for the listener
  final pulumi.Input<List<String>>? ipV6Addresses;
  /// Network port for the listener. Default is 1433.
  final pulumi.Input<int>? port;

  /// Creates a new [SqlAvailabilityGroupStaticIPListenerProperties].
  /// [dnsName] the DNS name for the listener.
  /// [ipV4AddressesAndMasks] IP V4 Addresses and masks for the listener.
  /// [ipV6Addresses] IP V6 Addresses for the listener
  /// [port] Network port for the listener. Default is 1433.
  SqlAvailabilityGroupStaticIPListenerProperties({
    this.dnsName,
    this.ipV4AddressesAndMasks,
    this.ipV6Addresses,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsName': ?dnsName,
      'ipV4AddressesAndMasks': ?pulumi.Input.mapOptionalInputValue<List<SqlAvailabilityGroupStaticIPListenerPropertiesIpV4AddressesAndMasks>, List<Map<String, dynamic>>>(ipV4AddressesAndMasks, (value) => pulumi.Input.encodeList<SqlAvailabilityGroupStaticIPListenerPropertiesIpV4AddressesAndMasks, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipV6Addresses': ?ipV6Addresses,
      'port': ?port,
    };
  }

  factory SqlAvailabilityGroupStaticIPListenerProperties.fromMap(Map<String, dynamic> map) {
    return SqlAvailabilityGroupStaticIPListenerProperties(
      dnsName: map['dnsName'] == null ? null : (map['dnsName']! as String).input(),
      ipV4AddressesAndMasks: map['ipV4AddressesAndMasks'] == null ? null : (pulumi.Input.decodeList<SqlAvailabilityGroupStaticIPListenerPropertiesIpV4AddressesAndMasks>(map['ipV4AddressesAndMasks']!, (value) => SqlAvailabilityGroupStaticIPListenerPropertiesIpV4AddressesAndMasks.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ipV6Addresses: map['ipV6Addresses'] == null ? null : ((map['ipV6Addresses']! as List).cast<String>()).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
    );
  }
}

