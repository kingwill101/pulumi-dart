// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hosts_host_protocol.dart';

class GetHostsHost {
  /// Specify the new create a host of address types. Valid values: Public: the IP address of a Public network Private: Private network address.
  final String activeAddressType;
  /// Specify a host of notes, supports up to 500 characters.
  final String comment;
  /// The host ID.
  final String hostId;
  /// Specify the new create a host name of the supports up to 128 characters.
  final String hostName;
  /// Specify the new create a host of the private network address, it is possible to use the domain name or IP ADDRESS.
  final String hostPrivateAddress;
  /// Specify the new create a host of the IP address of a public network, it is possible to use the domain name or IP ADDRESS.
  final String hostPublicAddress;
  /// The ID of the Host.
  final String id;
  /// Specify the new create a host where the Bastion host ID of.
  final String instanceId;
  /// Specify the new create the host's operating system. Valid values: Linux Windows.
  final String osType;
  /// The host of the protocol information.
  final List<GetHostsHostProtocol> protocols;
  /// Specify the new create a host of source. Valid values: Local: localhost Ecs:ECS instance Rds:RDS exclusive cluster host.
  final String source;
  /// Specify the newly created ECS instance ID or dedicated cluster host ID.
  final String sourceInstanceId;

  /// Creates a new [GetHostsHost].
  /// [activeAddressType] Specify the new create a host of address types. Valid values: Public: the IP address of a Public network Private: Private network address.
  /// [comment] Specify a host of notes, supports up to 500 characters.
  /// [hostId] The host ID.
  /// [hostName] Specify the new create a host name of the supports up to 128 characters.
  /// [hostPrivateAddress] Specify the new create a host of the private network address, it is possible to use the domain name or IP ADDRESS.
  /// [hostPublicAddress] Specify the new create a host of the IP address of a public network, it is possible to use the domain name or IP ADDRESS.
  /// [id] The ID of the Host.
  /// [instanceId] Specify the new create a host where the Bastion host ID of.
  /// [osType] Specify the new create the host's operating system. Valid values: Linux Windows.
  /// [protocols] The host of the protocol information.
  /// [source] Specify the new create a host of source. Valid values: Local: localhost Ecs:ECS instance Rds:RDS exclusive cluster host.
  /// [sourceInstanceId] Specify the newly created ECS instance ID or dedicated cluster host ID.
  GetHostsHost({
    required this.activeAddressType,
    required this.comment,
    required this.hostId,
    required this.hostName,
    required this.hostPrivateAddress,
    required this.hostPublicAddress,
    required this.id,
    required this.instanceId,
    required this.osType,
    required this.protocols,
    required this.source,
    required this.sourceInstanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeAddressType': activeAddressType,
      'comment': comment,
      'hostId': hostId,
      'hostName': hostName,
      'hostPrivateAddress': hostPrivateAddress,
      'hostPublicAddress': hostPublicAddress,
      'id': id,
      'instanceId': instanceId,
      'osType': osType,
      'protocols': pulumi.Input.encodeList<GetHostsHostProtocol, Map<String, dynamic>>(protocols, (value) => value.toMap()),
      'source': source,
      'sourceInstanceId': sourceInstanceId,
    };
  }

  factory GetHostsHost.fromMap(Map<String, dynamic> map) {
    return GetHostsHost(
      activeAddressType: map['activeAddressType'] as String,
      comment: map['comment'] as String,
      hostId: map['hostId'] as String,
      hostName: map['hostName'] as String,
      hostPrivateAddress: map['hostPrivateAddress'] as String,
      hostPublicAddress: map['hostPublicAddress'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      osType: map['osType'] as String,
      protocols: pulumi.Input.decodeList<GetHostsHostProtocol>(map['protocols'], (value) => GetHostsHostProtocol.fromMap((value as Map).cast<String, dynamic>())),
      source: map['source'] as String,
      sourceInstanceId: map['sourceInstanceId'] as String,
    );
  }
}

