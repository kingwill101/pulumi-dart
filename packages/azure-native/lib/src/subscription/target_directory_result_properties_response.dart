// ignore_for_file: unused_element, unnecessary_cast


/// Properties of subscription Response for Changed Target Directory.
class TargetDirectoryResultPropertiesResponse {
  /// Destination Owner Id where Subscription will be accepted.
  final String destinationOwnerId;
  /// Destination Tenant Id where Subscription will be accepted.
  final String destinationTenantId;
  /// Subscription Initiate Request Expiry time
  final String expiresOn;
  /// Subscription Status.
  final String status;

  /// Creates a new [TargetDirectoryResultPropertiesResponse].
  /// [destinationOwnerId] Destination Owner Id where Subscription will be accepted.
  /// [destinationTenantId] Destination Tenant Id where Subscription will be accepted.
  /// [expiresOn] Subscription Initiate Request Expiry time
  /// [status] Subscription Status.
  TargetDirectoryResultPropertiesResponse({
    required this.destinationOwnerId,
    required this.destinationTenantId,
    required this.expiresOn,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationOwnerId': destinationOwnerId,
      'destinationTenantId': destinationTenantId,
      'expiresOn': expiresOn,
      'status': status,
    };
  }

  factory TargetDirectoryResultPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return TargetDirectoryResultPropertiesResponse(
      destinationOwnerId: map['destinationOwnerId'] as String,
      destinationTenantId: map['destinationTenantId'] as String,
      expiresOn: map['expiresOn'] as String,
      status: map['status'] as String,
    );
  }
}

