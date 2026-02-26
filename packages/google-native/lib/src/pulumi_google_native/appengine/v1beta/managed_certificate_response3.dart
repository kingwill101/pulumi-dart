// ignore_for_file: unused_element, unnecessary_cast

/// A certificate managed by App Engine.
class ManagedCertificateResponse3 {
  /// Time at which the certificate was last renewed. The renewal process is fully managed. Certificate renewal will automatically occur before the certificate expires. Renewal errors can be tracked via ManagementStatus.
  final String lastRenewalTime;

  /// Status of certificate management. Refers to the most recent certificate acquisition or renewal attempt.
  final String status;

  ManagedCertificateResponse3({
    required this.lastRenewalTime,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lastRenewalTime'] = lastRenewalTime;
    map['status'] = status;
    return map;
  }

  factory ManagedCertificateResponse3.fromMap(Map<String, dynamic> map) {
    return ManagedCertificateResponse3(
      lastRenewalTime: map['lastRenewalTime'] as String,
      status: map['status'] as String,
    );
  }
}
