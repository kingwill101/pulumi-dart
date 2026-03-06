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
  const GetVirtualHostsHost({
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
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      virtualHostName: pulumi.Input.fromValue(map['virtualHostName'] as String),
    );
  }
}

