// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_acl_entries_egress.dart';
import 'network_acl_entries_ingress.dart';

/// {@template pulumi_vpc_network_acl_entries_network_acl_entries_args_doc}
/// The set of arguments for NetworkAclEntries.
/// {@endtemplate}
/// {@macro pulumi_vpc_network_acl_entries_network_acl_entries_args_doc}
class NetworkAclEntriesArgs {
  /// List of the egress entries of the network acl. The order of the egress entries determines the priority. See `egress` below.
  final pulumi.Input<List<NetworkAclEntriesEgress>>? egresses;
  /// List of the ingress entries of the network acl. The order of the ingress entries determines the priority. See `ingress` below.
  final pulumi.Input<List<NetworkAclEntriesIngress>>? ingresses;
  /// The id of the network acl, the field can't be changed.
  final pulumi.Input<String> networkAclId;

  /// Creates a new [NetworkAclEntriesArgs].
  /// [egresses] List of the egress entries of the network acl. The order of the egress entries determines the priority. See `egress` below.
  /// [ingresses] List of the ingress entries of the network acl. The order of the ingress entries determines the priority. See `ingress` below.
  /// [networkAclId] The id of the network acl, the field can't be changed.
  NetworkAclEntriesArgs({
    this.egresses,
    this.ingresses,
    required this.networkAclId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egresses': ?pulumi.Input.mapOptionalInputValue<List<NetworkAclEntriesEgress>, List<Map<String, dynamic>>>(egresses, (value) => pulumi.Input.encodeList<NetworkAclEntriesEgress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ingresses': ?pulumi.Input.mapOptionalInputValue<List<NetworkAclEntriesIngress>, List<Map<String, dynamic>>>(ingresses, (value) => pulumi.Input.encodeList<NetworkAclEntriesIngress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkAclId': networkAclId,
    };
  }

  factory NetworkAclEntriesArgs.fromMap(Map<String, dynamic> map) {
    return NetworkAclEntriesArgs(
      egresses: map['egresses'] == null ? null : (pulumi.Input.decodeList<NetworkAclEntriesEgress>(map['egresses'], (value) => NetworkAclEntriesEgress.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ingresses: map['ingresses'] == null ? null : (pulumi.Input.decodeList<NetworkAclEntriesIngress>(map['ingresses'], (value) => NetworkAclEntriesIngress.fromMap((value as Map).cast<String, dynamic>()))).input(),
      networkAclId: (map['networkAclId'] as String).input(),
    );
  }
}

