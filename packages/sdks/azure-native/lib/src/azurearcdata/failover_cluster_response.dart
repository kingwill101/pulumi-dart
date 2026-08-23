// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'host_ipaddress_information_response.dart';

/// Failover Cluster Instance properties.
class FailoverClusterResponse {
  /// The IP addresses and subnet masks associated with the SQL Failover Cluster Instance on this host.
  final pulumi.Input<List<HostIPAddressInformationResponse>> hostIPAddresses;
  /// The host names which are part of the SQL FCI resource group.
  final pulumi.Input<List<String>> hostNames;
  /// The GUID of the SQL Server's underlying Failover Cluster.
  final pulumi.Input<String> id;
  /// The network name to connect to the SQL FCI.
  final pulumi.Input<String> networkName;
  /// The ARM IDs of the Arc SQL Server resources, belonging to the current server's Failover cluster.
  final pulumi.Input<List<String>> sqlInstanceIds;

  /// Creates a new [FailoverClusterResponse].
  /// [hostIPAddresses] The IP addresses and subnet masks associated with the SQL Failover Cluster Instance on this host.
  /// [hostNames] The host names which are part of the SQL FCI resource group.
  /// [id] The GUID of the SQL Server's underlying Failover Cluster.
  /// [networkName] The network name to connect to the SQL FCI.
  /// [sqlInstanceIds] The ARM IDs of the Arc SQL Server resources, belonging to the current server's Failover cluster.
  const FailoverClusterResponse({
    required this.hostIPAddresses,
    required this.hostNames,
    required this.id,
    required this.networkName,
    required this.sqlInstanceIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostIPAddresses': pulumi.Input.mapInputValue<List<HostIPAddressInformationResponse>, List<Map<String, dynamic>>>(hostIPAddresses, (value) => pulumi.Input.encodeList<HostIPAddressInformationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostNames': hostNames,
      'id': id,
      'networkName': networkName,
      'sqlInstanceIds': sqlInstanceIds,
    };
  }

  factory FailoverClusterResponse.fromMap(Map<String, dynamic> map) {
    return FailoverClusterResponse(
      hostIPAddresses: pulumi.Input.fromValue(pulumi.Input.decodeList<HostIPAddressInformationResponse>(map['hostIPAddresses']!, (value) => HostIPAddressInformationResponse.fromMap((value as Map).cast<String, dynamic>()))),
      hostNames: pulumi.Input.fromValue((map['hostNames'] as List).cast<String>()),
      id: pulumi.Input.fromValue(map['id'] as String),
      networkName: pulumi.Input.fromValue(map['networkName'] as String),
      sqlInstanceIds: pulumi.Input.fromValue((map['sqlInstanceIds'] as List).cast<String>()),
    );
  }
}
