// ignore_for_file: unused_element, unnecessary_cast

/// A certificate managed by App Engine.
class ManagedCertificateResponse2 {
  /// Time at which the certificate was last renewed. The renewal process is fully managed. Certificate renewal will automatically occur before the certificate expires. Renewal errors can be tracked via ManagementStatus.
  final String lastRenewalTime;

  /// Status of certificate management. Refers to the most recent certificate acquisition or renewal attempt.
  final String status;

  ManagedCertificateResponse2({
    required this.lastRenewalTime,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lastRenewalTime'] = lastRenewalTime;
    map['status'] = status;
    return map;
  }

  factory ManagedCertificateResponse2.fromMap(Map<String, dynamic> map) {
    return ManagedCertificateResponse2(
      lastRenewalTime: map['lastRenewalTime'] as String,
      status: map['status'] as String,
    );
  }
}
