// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_connectivity_information.dart';
import 'private_link_service_connection_state.dart';

/// Private link service proxy details.
class PrivateLinkServiceProxy {
  /// Group connectivity information.
  final pulumi.Input<List<GroupConnectivityInformation>>?
  groupConnectivityInformation;

  /// NRP resource ID.
  final pulumi.Input<String>? id;

  /// Remote private link service connection state
  final pulumi.Input<PrivateLinkServiceConnectionState>?
  remotePrivateLinkServiceConnectionState;

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
      'groupConnectivityInformation':
          ?pulumi.Input.mapOptionalInputValue<
            List<GroupConnectivityInformation>,
            List<Map<String, dynamic>>
          >(
            groupConnectivityInformation,
            (value) =>
                pulumi.Input.encodeList<
                  GroupConnectivityInformation,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'id': ?id,
      'remotePrivateLinkServiceConnectionState':
          ?pulumi.Input.mapOptionalInputValue<
            PrivateLinkServiceConnectionState,
            Map<String, dynamic>
          >(remotePrivateLinkServiceConnectionState, (value) => value.toMap()),
    };
  }

  factory PrivateLinkServiceProxy.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServiceProxy(
      groupConnectivityInformation: (() {
        final guardedValue = map['groupConnectivityInformation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GroupConnectivityInformation>(
            guardedValue,
            (value) => GroupConnectivityInformation.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      remotePrivateLinkServiceConnectionState: (() {
        final guardedValue = map['remotePrivateLinkServiceConnectionState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PrivateLinkServiceConnectionState.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
