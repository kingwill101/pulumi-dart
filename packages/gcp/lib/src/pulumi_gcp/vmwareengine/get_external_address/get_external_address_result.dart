// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getExternalAddress.
class GetExternalAddressResult {
  final String createTime;
  final String description;
  final String externalIp;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String internalIp;
  final String name;
  final String parent;
  final String state;
  final String uid;
  final String updateTime;

  GetExternalAddressResult({
    required this.createTime,
    required this.description,
    required this.externalIp,
    required this.id,
    required this.internalIp,
    required this.name,
    required this.parent,
    required this.state,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['externalIp'] = externalIp;
    map['id'] = id;
    map['internalIp'] = internalIp;
    map['name'] = name;
    map['parent'] = parent;
    map['state'] = state;
    map['uid'] = uid;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetExternalAddressResult.fromMap(Map<String, dynamic> map) {
    return GetExternalAddressResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      externalIp: map['externalIp'] as String,
      id: map['id'] as String,
      internalIp: map['internalIp'] as String,
      name: map['name'] as String,
      parent: map['parent'] as String,
      state: map['state'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
