// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getExternalAddress.
class GetExternalAddressResult {
  /// Creation time of this resource.
  final String createTime;

  /// User-provided description for this resource.
  final String description;

  /// The external IP address of a workload VM.
  final String externalIp;

  /// The internal IP address of a workload VM.
  final String internalIp;

  /// The resource name of this external IP address. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/externalAddresses/my-address`
  final String name;

  /// The state of the resource.
  final String state;

  /// System-generated unique identifier for the resource.
  final String uid;

  /// Last update time of this resource.
  final String updateTime;

  GetExternalAddressResult({
    required this.createTime,
    required this.description,
    required this.externalIp,
    required this.internalIp,
    required this.name,
    required this.state,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['externalIp'] = externalIp;
    map['internalIp'] = internalIp;
    map['name'] = name;
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
      internalIp: map['internalIp'] as String,
      name: map['name'] as String,
      state: map['state'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
