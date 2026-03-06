// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_cname_certificate.dart';

/// Input properties used for looking up and filtering BucketCname resources.
class BucketCnameState {
  /// The bucket to which the custom domain name belongs
  final pulumi.Input<String>? bucket;
  /// The container for the certificate configuration. See `certificate` below.
  final pulumi.Input<BucketCnameCertificate>? certificate;
  /// Whether to delete the certificate.
  final pulumi.Input<bool>? deleteCertificate;
  /// User-defined domain name
  final pulumi.Input<String>? domain;
  /// Whether to force overwrite certificate.
  final pulumi.Input<bool>? force;
  /// The current certificate ID. If the Force value is not true, the OSS Server checks whether the value matches the current certificate ID. If the value does not match, an error is reported.
  final pulumi.Input<String>? previousCertId;
  /// Cname status
  final pulumi.Input<String>? status;

  /// Creates a new [BucketCnameState].
  /// [bucket] The bucket to which the custom domain name belongs
  /// [certificate] The container for the certificate configuration. See `certificate` below.
  /// [deleteCertificate] Whether to delete the certificate.
  /// [domain] User-defined domain name
  /// [force] Whether to force overwrite certificate.
  /// [previousCertId] The current certificate ID. If the Force value is not true, the OSS Server checks whether the value matches the current certificate ID. If the value does not match, an error is reported.
  /// [status] Cname status
  const BucketCnameState({
    this.bucket,
    this.certificate,
    this.deleteCertificate,
    this.domain,
    this.force,
    this.previousCertId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'certificate': ?pulumi.Input.mapOptionalInputValue<BucketCnameCertificate, Map<String, dynamic>>(certificate, (value) => value.toMap()),
      'deleteCertificate': ?deleteCertificate,
      'domain': ?domain,
      'force': ?force,
      'previousCertId': ?previousCertId,
      'status': ?status,
    };
  }

  factory BucketCnameState.fromMap(Map<String, dynamic> map) {
    return BucketCnameState(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketCnameCertificate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deleteCertificate: (() { final guardedValue = map['deleteCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      force: (() { final guardedValue = map['force']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      previousCertId: (() { final guardedValue = map['previousCertId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

