// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'cert_verification_response.dart';
import 'status_response17.dart';

/// An SSL certificate used to provide end-to-end encryption for requests against your domain name. A `Certificate` can be an actual SSL certificate or, for newly-created custom domains, Hosting's intent to create one.
class CertificateResponse2 {
  /// The certificate's creation time. For `TEMPORARY` certs this is the time Hosting first generated challenges for your domain name. For all other cert types, it's the time the actual cert was created.
  final String createTime;

  /// The certificate's expiration time. After this time, the cert can no longer be used to provide secure communication between Hosting and your site's visitors.
  final String expireTime;

  /// A set of errors Hosting encountered when attempting to create a cert for your domain name. Resolve these issues to ensure Hosting is able to provide secure communication with your site's visitors.
  final List<StatusResponse17> issues;

  /// The state of the certificate. Only the `CERT_ACTIVE` and `CERT_EXPIRING_SOON` states provide SSL coverage for a domain name. If the state is `PROPAGATING` and Hosting had an active cert for the domain name before, that formerly-active cert provides SSL coverage for the domain name until the current cert propagates.
  final String state;

  /// The certificate's type.
  final String type;

  /// A set of ACME challenges you can add to your DNS records or existing, non-Hosting hosting provider to allow Hosting to create an SSL certificate for your domain name before you point traffic toward hosting. You can use thse challenges as part of a zero downtime transition from your old provider to Hosting.
  final CertVerificationResponse verification;

  CertificateResponse2({
    required this.createTime,
    required this.expireTime,
    required this.issues,
    required this.state,
    required this.type,
    required this.verification,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['expireTime'] = expireTime;
    map['issues'] = Input.encodeList<StatusResponse17, Map<String, dynamic>>(
        issues, (value) => value.toMap());
    map['state'] = state;
    map['type'] = type;
    map['verification'] = verification.toMap();
    return map;
  }

  factory CertificateResponse2.fromMap(Map<String, dynamic> map) {
    return CertificateResponse2(
      createTime: map['createTime'] as String,
      expireTime: map['expireTime'] as String,
      issues: Input.decodeList<StatusResponse17>(
          map['issues'],
          (value) =>
              StatusResponse17.fromMap((value as Map).cast<String, dynamic>())),
      state: map['state'] as String,
      type: map['type'] as String,
      verification: CertVerificationResponse.fromMap(
          (map['verification'] as Map).cast<String, dynamic>()),
    );
  }
}
