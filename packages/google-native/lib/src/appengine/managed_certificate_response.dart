// ignore_for_file: unused_element, unnecessary_cast

/// A certificate managed by App Engine.
class ManagedCertificateResponse {
  /// Time at which the certificate was last renewed. The renewal process is fully managed. Certificate renewal will automatically occur before the certificate expires. Renewal errors can be tracked via ManagementStatus.
  final String lastRenewalTime;

  /// Status of certificate management. Refers to the most recent certificate acquisition or renewal attempt.
  final String status;

  /// Creates a new [ManagedCertificateResponse].
  /// [lastRenewalTime] Time at which the certificate was last renewed. The renewal process is fully managed. Certificate renewal will automatically occur before the certificate expires. Renewal errors can be tracked via ManagementStatus.
  /// [status] Status of certificate management. Refers to the most recent certificate acquisition or renewal attempt.
  ManagedCertificateResponse({
    required this.lastRenewalTime,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastRenewalTime': lastRenewalTime,
      'status': status,
    };
  }

  factory ManagedCertificateResponse.fromMap(Map<String, dynamic> map) {
    return ManagedCertificateResponse(
      lastRenewalTime: map['lastRenewalTime'] as String,
      status: map['status'] as String,
    );
  }
}
