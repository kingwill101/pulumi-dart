// ignore_for_file: unused_element, unnecessary_cast


/// Properties of subscription Request for Changed Target Directory.
class TargetDirectoryRequestProperties {
  /// The destination OwnerId, can be object id or email address
  final String? destinationOwnerId;
  /// The destination Tenant id where subscription needs to be accepted
  final String? destinationTenantId;

  /// Creates a new [TargetDirectoryRequestProperties].
  /// [destinationOwnerId] The destination OwnerId, can be object id or email address
  /// [destinationTenantId] The destination Tenant id where subscription needs to be accepted
  TargetDirectoryRequestProperties({
    this.destinationOwnerId,
    this.destinationTenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationOwnerId': ?destinationOwnerId,
      'destinationTenantId': ?destinationTenantId,
    };
  }

  factory TargetDirectoryRequestProperties.fromMap(Map<String, dynamic> map) {
    return TargetDirectoryRequestProperties(
      destinationOwnerId: map['destinationOwnerId'] == null ? null : map['destinationOwnerId'] as String,
      destinationTenantId: map['destinationTenantId'] == null ? null : map['destinationTenantId'] as String,
    );
  }
}

