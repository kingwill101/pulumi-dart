// ignore_for_file: unused_element, unnecessary_cast


class GetVirtualHostsHost {
  /// The ID of the Virtual Host.
  final String id;
  /// InstanceId.
  final String instanceId;
  /// VirtualHostName.
  final String virtualHostName;

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
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      virtualHostName: map['virtualHostName'] as String,
    );
  }
}

