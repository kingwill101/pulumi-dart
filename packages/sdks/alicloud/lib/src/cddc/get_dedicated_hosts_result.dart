// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dedicated_hosts_host.dart';

/// Result data returned by getDedicatedHosts.
class GetDedicatedHostsResult {
  final String? allocationStatus;
  final String dedicatedHostGroupId;
  final bool? enableDetails;
  final String? hostType;
  final List<GetDedicatedHostsHost> hosts;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? orderId;
  final String? outputFile;
  final String? status;
  final Map<String, String>? tags;
  final String? zoneId;

  /// Creates a new [GetDedicatedHostsResult].
  /// [allocationStatus] Optional.
  /// [dedicatedHostGroupId] Required.
  /// [enableDetails] Optional.
  /// [hostType] Optional.
  /// [hosts] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [orderId] Optional.
  /// [outputFile] Optional.
  /// [status] Optional.
  /// [tags] Optional.
  /// [zoneId] Optional.
  GetDedicatedHostsResult({
    this.allocationStatus,
    required this.dedicatedHostGroupId,
    this.enableDetails,
    this.hostType,
    required this.hosts,
    required this.id,
    required this.ids,
    this.orderId,
    this.outputFile,
    this.status,
    this.tags,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationStatus': ?allocationStatus,
      'dedicatedHostGroupId': dedicatedHostGroupId,
      'enableDetails': ?enableDetails,
      'hostType': ?hostType,
      'hosts': pulumi.Input.encodeList<GetDedicatedHostsHost, Map<String, dynamic>>(hosts, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'orderId': ?orderId,
      'outputFile': ?outputFile,
      'status': ?status,
      'tags': ?tags,
      'zoneId': ?zoneId,
    };
  }

  factory GetDedicatedHostsResult.fromMap(Map<String, dynamic> map) {
    return GetDedicatedHostsResult(
      allocationStatus: map['allocationStatus'] == null ? null : map['allocationStatus']! as String,
      dedicatedHostGroupId: map['dedicatedHostGroupId'] as String,
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails']! as bool,
      hostType: map['hostType'] == null ? null : map['hostType']! as String,
      hosts: pulumi.Input.decodeList<GetDedicatedHostsHost>(map['hosts'], (value) => GetDedicatedHostsHost.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      orderId: map['orderId'] == null ? null : map['orderId']! as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      status: map['status'] == null ? null : map['status']! as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      zoneId: map['zoneId'] == null ? null : map['zoneId']! as String,
    );
  }
}

