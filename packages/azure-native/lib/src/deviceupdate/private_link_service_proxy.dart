// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_connectivity_information.dart';
import 'private_link_service_connection_state.dart';

/// Private link service proxy details.
class PrivateLinkServiceProxy {
  /// Group connectivity information.
  final List<GroupConnectivityInformation>? groupConnectivityInformation;
  /// NRP resource ID.
  final String? id;
  /// Remote private link service connection state
  final PrivateLinkServiceConnectionState? remotePrivateLinkServiceConnectionState;

  /// Creates a new [PrivateLinkServiceProxy].
  /// [groupConnectivityInformation] Group connectivity information.
  /// [id] NRP resource ID.
  /// [remotePrivateLinkServiceConnectionState] Remote private link service connection state
  PrivateLinkServiceProxy({
    this.groupConnectivityInformation,
    this.id,
    this.remotePrivateLinkServiceConnectionState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupConnectivityInformation': ?groupConnectivityInformation == null ? null : pulumi.Input.encodeList<GroupConnectivityInformation, Map<String, dynamic>>(groupConnectivityInformation!, (value) => value.toMap()),
      'id': ?id,
      'remotePrivateLinkServiceConnectionState': ?remotePrivateLinkServiceConnectionState == null ? null : remotePrivateLinkServiceConnectionState!.toMap(),
    };
  }

  factory PrivateLinkServiceProxy.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServiceProxy(
      groupConnectivityInformation: map['groupConnectivityInformation'] == null ? null : pulumi.Input.decodeList<GroupConnectivityInformation>(map['groupConnectivityInformation'], (value) => GroupConnectivityInformation.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : map['id'] as String,
      remotePrivateLinkServiceConnectionState: map['remotePrivateLinkServiceConnectionState'] == null ? null : PrivateLinkServiceConnectionState.fromMap((map['remotePrivateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
    );
  }
}

