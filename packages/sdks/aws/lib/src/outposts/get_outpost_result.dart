// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getOutpost.
class GetOutpostResult {
  final String arn;
  /// Availability Zone name.
  final String availabilityZone;
  /// Availability Zone identifier.
  final String availabilityZoneId;
  /// The description of the Outpost.
  final String description;
  final String id;
  /// The life cycle status.
  final String lifecycleStatus;
  final String name;
  final String? ownerId;
  final String region;
  /// The Amazon Resource Name (ARN) of the site.
  final String siteArn;
  /// The ID of the site.
  final String siteId;
  /// The hardware type.
  final String supportedHardwareType;
  /// The Outpost tags.
  final Map<String, String> tags;

  /// Creates a new [GetOutpostResult].
  /// [arn] Required.
  /// [availabilityZone] Availability Zone name.
  /// [availabilityZoneId] Availability Zone identifier.
  /// [description] The description of the Outpost.
  /// [id] Required.
  /// [lifecycleStatus] The life cycle status.
  /// [name] Required.
  /// [ownerId] Optional.
  /// [region] Required.
  /// [siteArn] The Amazon Resource Name (ARN) of the site.
  /// [siteId] The ID of the site.
  /// [supportedHardwareType] The hardware type.
  /// [tags] The Outpost tags.
  GetOutpostResult({
    required this.arn,
    required this.availabilityZone,
    required this.availabilityZoneId,
    required this.description,
    required this.id,
    required this.lifecycleStatus,
    required this.name,
    this.ownerId,
    required this.region,
    required this.siteArn,
    required this.siteId,
    required this.supportedHardwareType,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'availabilityZone': availabilityZone,
      'availabilityZoneId': availabilityZoneId,
      'description': description,
      'id': id,
      'lifecycleStatus': lifecycleStatus,
      'name': name,
      'ownerId': ?ownerId,
      'region': region,
      'siteArn': siteArn,
      'siteId': siteId,
      'supportedHardwareType': supportedHardwareType,
      'tags': tags,
    };
  }

  factory GetOutpostResult.fromMap(Map<String, dynamic> map) {
    return GetOutpostResult(
      arn: map['arn'] as String,
      availabilityZone: map['availabilityZone'] as String,
      availabilityZoneId: map['availabilityZoneId'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      lifecycleStatus: map['lifecycleStatus'] as String,
      name: map['name'] as String,
      ownerId: map['ownerId'] == null ? null : map['ownerId'] as String,
      region: map['region'] as String,
      siteArn: map['siteArn'] as String,
      siteId: map['siteId'] as String,
      supportedHardwareType: map['supportedHardwareType'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

