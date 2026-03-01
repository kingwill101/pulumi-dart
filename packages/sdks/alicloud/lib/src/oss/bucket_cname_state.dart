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
  BucketCnameState({
    pulumi.Output<String>? bucket,
    pulumi.Output<BucketCnameCertificate>? certificate,
    pulumi.Output<bool>? deleteCertificate,
    pulumi.Output<String>? domain,
    pulumi.Output<bool>? force,
    pulumi.Output<String>? previousCertId,
    pulumi.Output<String>? status,
  }) :
      bucket = pulumi.Input.asOptionalInput<String>(bucket),
      certificate = pulumi.Input.asOptionalInput<BucketCnameCertificate>(certificate),
      deleteCertificate = pulumi.Input.asOptionalInput<bool>(deleteCertificate),
      domain = pulumi.Input.asOptionalInput<String>(domain),
      force = pulumi.Input.asOptionalInput<bool>(force),
      previousCertId = pulumi.Input.asOptionalInput<String>(previousCertId),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      bucket: map['bucket'] == null ? null : pulumi.Output.create<String>(map['bucket'] as String),
      certificate: map['certificate'] == null ? null : pulumi.Output.create<BucketCnameCertificate>(BucketCnameCertificate.fromMap((map['certificate'] as Map).cast<String, dynamic>())),
      deleteCertificate: map['deleteCertificate'] == null ? null : pulumi.Output.create<bool>(map['deleteCertificate'] as bool),
      domain: map['domain'] == null ? null : pulumi.Output.create<String>(map['domain'] as String),
      force: map['force'] == null ? null : pulumi.Output.create<bool>(map['force'] as bool),
      previousCertId: map['previousCertId'] == null ? null : pulumi.Output.create<String>(map['previousCertId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

