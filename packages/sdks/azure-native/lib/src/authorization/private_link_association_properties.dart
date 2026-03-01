// ignore_for_file: unused_element, unnecessary_cast


class PrivateLinkAssociationProperties {
  /// The rmpl Resource ID.
  final String? privateLink;
  final String? publicNetworkAccess;

  /// Creates a new [PrivateLinkAssociationProperties].
  /// [privateLink] The rmpl Resource ID.
  /// [publicNetworkAccess] Optional.
  PrivateLinkAssociationProperties({
    this.privateLink,
    this.publicNetworkAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateLink': ?privateLink,
      'publicNetworkAccess': ?publicNetworkAccess,
    };
  }

  factory PrivateLinkAssociationProperties.fromMap(Map<String, dynamic> map) {
    return PrivateLinkAssociationProperties(
      privateLink: map['privateLink'] == null ? null : map['privateLink'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
    );
  }
}

