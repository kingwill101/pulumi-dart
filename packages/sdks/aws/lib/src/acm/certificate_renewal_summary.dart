// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificateRenewalSummary {
  /// The status of ACM's managed renewal of the certificate
  final pulumi.Input<String>? renewalStatus;
  /// The reason that a renewal request was unsuccessful or is pending
  final pulumi.Input<String>? renewalStatusReason;
  final pulumi.Input<String>? updatedAt;

  /// Creates a new [CertificateRenewalSummary].
  /// [renewalStatus] The status of ACM's managed renewal of the certificate
  /// [renewalStatusReason] The reason that a renewal request was unsuccessful or is pending
  /// [updatedAt] Optional.
  const CertificateRenewalSummary({
    this.renewalStatus,
    this.renewalStatusReason,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'renewalStatus': ?renewalStatus,
      'renewalStatusReason': ?renewalStatusReason,
      'updatedAt': ?updatedAt,
    };
  }

  factory CertificateRenewalSummary.fromMap(Map<String, dynamic> map) {
    return CertificateRenewalSummary(
      renewalStatus: (() { final guardedValue = map['renewalStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      renewalStatusReason: (() { final guardedValue = map['renewalStatusReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

