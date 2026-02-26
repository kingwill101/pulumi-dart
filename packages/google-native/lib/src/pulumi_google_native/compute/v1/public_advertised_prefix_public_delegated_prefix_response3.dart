// ignore_for_file: unused_element, unnecessary_cast

/// Represents a CIDR range which can be used to assign addresses.
class PublicAdvertisedPrefixPublicDelegatedPrefixResponse3 {
  /// The IP address range of the public delegated prefix
  final String ipRange;

  /// The name of the public delegated prefix
  final String name;

  /// The project number of the public delegated prefix
  final String project;

  /// The region of the public delegated prefix if it is regional. If absent, the prefix is global.
  final String region;

  /// The status of the public delegated prefix. Possible values are: INITIALIZING: The public delegated prefix is being initialized and addresses cannot be created yet. ANNOUNCED: The public delegated prefix is active.
  final String status;

  PublicAdvertisedPrefixPublicDelegatedPrefixResponse3({
    required this.ipRange,
    required this.name,
    required this.project,
    required this.region,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipRange'] = ipRange;
    map['name'] = name;
    map['project'] = project;
    map['region'] = region;
    map['status'] = status;
    return map;
  }

  factory PublicAdvertisedPrefixPublicDelegatedPrefixResponse3.fromMap(
      Map<String, dynamic> map) {
    return PublicAdvertisedPrefixPublicDelegatedPrefixResponse3(
      ipRange: map['ipRange'] as String,
      name: map['name'] as String,
      project: map['project'] as String,
      region: map['region'] as String,
      status: map['status'] as String,
    );
  }
}
