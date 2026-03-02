// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualHostsHost {
  /// The ID of the Virtual Host.
  final pulumi.Input<String> id;
  /// InstanceId.
  final pulumi.Input<String> instanceId;
  /// VirtualHostName.
  final pulumi.Input<String> virtualHostName;

  /// Creates a new [GetVirtualHostsHost].
  /// [id] The ID of the Virtual Host.
  /// [instanceId] InstanceId.
  /// [virtualHostName] VirtualHostName.
  GetVirtualHostsHost({
    required this.id,
    required this.instanceId,
    required this.virtualHostName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'instanceId': instanceId,
      'virtualHostName': virtualHostName,
    };
  }

  factory GetVirtualHostsHost.fromMap(Map<String, dynamic> map) {
    return GetVirtualHostsHost(
      id: (map['id'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      virtualHostName: (map['virtualHostName'] as String).input(),
    );
  }
}

