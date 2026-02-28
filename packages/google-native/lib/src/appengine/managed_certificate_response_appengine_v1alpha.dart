// ignore_for_file: unused_element, unnecessary_cast

/// A certificate managed by App Engine.
class ManagedCertificateResponseAppengineV1alpha {
  /// Time at which the certificate was last renewed. The renewal process is fully managed. Certificate renewal will automatically occur before the certificate expires. Renewal errors can be tracked via ManagementStatus.
  final String lastRenewalTime;

  /// Status of certificate management. Refers to the most recent certificate acquisition or renewal attempt.
  final String status;

  /// Creates a new [ManagedCertificateResponseAppengineV1alpha].
  /// [lastRenewalTime] Time at which the certificate was last renewed. The renewal process is fully managed. Certificate renewal will automatically occur before the certificate expires. Renewal errors can be tracked via ManagementStatus.
  /// [status] Status of certificate management. Refers to the most recent certificate acquisition or renewal attempt.
  ManagedCertificateResponseAppengineV1alpha({
    required this.lastRenewalTime,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lastRenewalTime'] = lastRenewalTime;
    map['status'] = status;
    return map;
  }

  factory ManagedCertificateResponseAppengineV1alpha.fromMap(
      Map<String, dynamic> map) {
    return ManagedCertificateResponseAppengineV1alpha(
      lastRenewalTime: map['lastRenewalTime'] as String,
      status: map['status'] as String,
    );
  }
}
