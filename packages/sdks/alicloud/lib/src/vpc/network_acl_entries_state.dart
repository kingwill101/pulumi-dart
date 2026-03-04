// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_acl_entries_egress.dart';
import 'network_acl_entries_ingress.dart';

/// Input properties used for looking up and filtering NetworkAclEntries resources.
class NetworkAclEntriesState {
  /// List of the egress entries of the network acl. The order of the egress entries determines the priority. See `egress` below.
  final pulumi.Input<List<NetworkAclEntriesEgress>>? egresses;

  /// List of the ingress entries of the network acl. The order of the ingress entries determines the priority. See `ingress` below.
  final pulumi.Input<List<NetworkAclEntriesIngress>>? ingresses;

  /// The id of the network acl, the field can't be changed.
  final pulumi.Input<String>? networkAclId;

  /// Creates a new [NetworkAclEntriesState].
  /// [egresses] List of the egress entries of the network acl. The order of the egress entries determines the priority. See `egress` below.
  /// [ingresses] List of the ingress entries of the network acl. The order of the ingress entries determines the priority. See `ingress` below.
  /// [networkAclId] The id of the network acl, the field can't be changed.
  NetworkAclEntriesState({this.egresses, this.ingresses, this.networkAclId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egresses':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkAclEntriesEgress>,
            List<Map<String, dynamic>>
          >(
            egresses,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkAclEntriesEgress,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ingresses':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkAclEntriesIngress>,
            List<Map<String, dynamic>>
          >(
            ingresses,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkAclEntriesIngress,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'networkAclId': ?networkAclId,
    };
  }

  factory NetworkAclEntriesState.fromMap(Map<String, dynamic> map) {
    return NetworkAclEntriesState(
      egresses: (() {
        final guardedValue = map['egresses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NetworkAclEntriesEgress>(
            guardedValue,
            (value) => NetworkAclEntriesEgress.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      ingresses: (() {
        final guardedValue = map['ingresses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NetworkAclEntriesIngress>(
            guardedValue,
            (value) => NetworkAclEntriesIngress.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      networkAclId: (() {
        final guardedValue = map['networkAclId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
