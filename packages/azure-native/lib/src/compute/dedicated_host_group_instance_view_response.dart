// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dedicated_host_instance_view_with_name_response.dart';

class DedicatedHostGroupInstanceViewResponse {
  /// List of instance view of the dedicated hosts under the dedicated host group.
  final List<DedicatedHostInstanceViewWithNameResponse>? hosts;

  /// Creates a new [DedicatedHostGroupInstanceViewResponse].
  /// [hosts] List of instance view of the dedicated hosts under the dedicated host group.
  DedicatedHostGroupInstanceViewResponse({
    this.hosts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hosts': ?hosts == null ? null : pulumi.Input.encodeList<DedicatedHostInstanceViewWithNameResponse, Map<String, dynamic>>(hosts!, (value) => value.toMap()),
    };
  }

  factory DedicatedHostGroupInstanceViewResponse.fromMap(Map<String, dynamic> map) {
    return DedicatedHostGroupInstanceViewResponse(
      hosts: map['hosts'] == null ? null : pulumi.Input.decodeList<DedicatedHostInstanceViewWithNameResponse>(map['hosts'], (value) => DedicatedHostInstanceViewWithNameResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

