// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getOutpost.
class GetOutpostResult {
  final String? arn;
  /// Availability Zone name.
  final String? availabilityZone;
  /// Availability Zone identifier.
  final String? availabilityZoneId;
  /// The description of the Outpost.
  final String? description;
  final String? id;
  /// The life cycle status.
  final String? lifecycleStatus;
  final String? name;
  final String? ownerId;
  final String? region;
  /// ARN of the site.
  final String? siteArn;
  /// The ID of the site.
  final String? siteId;
  /// The hardware type.
  final String? supportedHardwareType;
  /// The Outpost tags.
  final Map<String, String>? tags;

  /// Creates a new [GetOutpostResult].
  /// [arn] Optional.
  /// [availabilityZone] Availability Zone name.
  /// [availabilityZoneId] Availability Zone identifier.
  /// [description] The description of the Outpost.
  /// [id] Optional.
  /// [lifecycleStatus] The life cycle status.
  /// [name] Optional.
  /// [ownerId] Optional.
  /// [region] Optional.
  /// [siteArn] ARN of the site.
  /// [siteId] The ID of the site.
  /// [supportedHardwareType] The hardware type.
  /// [tags] The Outpost tags.
  const GetOutpostResult({
    this.arn,
    this.availabilityZone,
    this.availabilityZoneId,
    this.description,
    this.id,
    this.lifecycleStatus,
    this.name,
    this.ownerId,
    this.region,
    this.siteArn,
    this.siteId,
    this.supportedHardwareType,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'availabilityZone': ?availabilityZone,
      'availabilityZoneId': ?availabilityZoneId,
      'description': ?description,
      'id': ?id,
      'lifecycleStatus': ?lifecycleStatus,
      'name': ?name,
      'ownerId': ?ownerId,
      'region': ?region,
      'siteArn': ?siteArn,
      'siteId': ?siteId,
      'supportedHardwareType': ?supportedHardwareType,
      'tags': ?tags,
    };
  }

  factory GetOutpostResult.fromMap(Map<String, dynamic> map) {
    return GetOutpostResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availabilityZoneId: (() { final guardedValue = map['availabilityZoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lifecycleStatus: (() { final guardedValue = map['lifecycleStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      siteArn: (() { final guardedValue = map['siteArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      siteId: (() { final guardedValue = map['siteId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      supportedHardwareType: (() { final guardedValue = map['supportedHardwareType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
