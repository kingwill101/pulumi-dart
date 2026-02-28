// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getConnection.
class GetConnectionResult {
  /// ARN of the connection.
  final String arn;

  /// Direct Connect endpoint on which the physical connection terminates.
  final String awsDevice;

  /// Bandwidth of the connection.
  final String bandwidth;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// AWS Direct Connect location where the connection is located.
  final String location;
  final String name;

  /// ID of the AWS account that owns the connection.
  final String ownerAccountId;

  /// The name of the AWS Direct Connect service provider associated with the connection.
  final String partnerName;

  /// Name of the service provider associated with the connection.
  final String providerName;
  final String region;

  /// State of the connection.
  final String state;

  /// Map of tags for the resource.
  final Map<String, String> tags;

  /// The VLAN ID.
  final int vlanId;

  /// Creates a new [GetConnectionResult].
  /// [arn] ARN of the connection.
  /// [awsDevice] Direct Connect endpoint on which the physical connection terminates.
  /// [bandwidth] Bandwidth of the connection.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] AWS Direct Connect location where the connection is located.
  /// [name] Required.
  /// [ownerAccountId] ID of the AWS account that owns the connection.
  /// [partnerName] The name of the AWS Direct Connect service provider associated with the connection.
  /// [providerName] Name of the service provider associated with the connection.
  /// [region] Required.
  /// [state] State of the connection.
  /// [tags] Map of tags for the resource.
  /// [vlanId] The VLAN ID.
  GetConnectionResult({
    required this.arn,
    required this.awsDevice,
    required this.bandwidth,
    required this.id,
    required this.location,
    required this.name,
    required this.ownerAccountId,
    required this.partnerName,
    required this.providerName,
    required this.region,
    required this.state,
    required this.tags,
    required this.vlanId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['awsDevice'] = awsDevice;
    map['bandwidth'] = bandwidth;
    map['id'] = id;
    map['location'] = location;
    map['name'] = name;
    map['ownerAccountId'] = ownerAccountId;
    map['partnerName'] = partnerName;
    map['providerName'] = providerName;
    map['region'] = region;
    map['state'] = state;
    map['tags'] = tags;
    map['vlanId'] = vlanId;
    return map;
  }

  factory GetConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetConnectionResult(
      arn: map['arn'] as String,
      awsDevice: map['awsDevice'] as String,
      bandwidth: map['bandwidth'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      ownerAccountId: map['ownerAccountId'] as String,
      partnerName: map['partnerName'] as String,
      providerName: map['providerName'] as String,
      region: map['region'] as String,
      state: map['state'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      vlanId: map['vlanId'] as int,
    );
  }
}
