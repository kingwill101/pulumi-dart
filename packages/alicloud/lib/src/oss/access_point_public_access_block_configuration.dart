// ignore_for_file: unused_element, unnecessary_cast


class AccessPointPublicAccessBlockConfiguration {
  /// Block public access enabled for access point
  final bool? blockPublicAccess;

  /// Creates a new [AccessPointPublicAccessBlockConfiguration].
  /// [blockPublicAccess] Block public access enabled for access point
  AccessPointPublicAccessBlockConfiguration({
    this.blockPublicAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockPublicAccess': ?blockPublicAccess,
    };
  }

  factory AccessPointPublicAccessBlockConfiguration.fromMap(Map<String, dynamic> map) {
    return AccessPointPublicAccessBlockConfiguration(
      blockPublicAccess: map['blockPublicAccess'] == null ? null : map['blockPublicAccess'] as bool,
    );
  }
}

