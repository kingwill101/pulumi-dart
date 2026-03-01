// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_cname_certificate.dart';

/// {@template pulumi_oss_bucket_cname_bucket_cname_args_doc}
/// The set of arguments for BucketCname.
/// {@endtemplate}
/// {@macro pulumi_oss_bucket_cname_bucket_cname_args_doc}
class BucketCnameArgs {
  /// The bucket to which the custom domain name belongs
  final pulumi.Input<String> bucket;
  /// The container for the certificate configuration. See `certificate` below.
  final pulumi.Input<BucketCnameCertificate>? certificate;
  /// Whether to delete the certificate.
  final pulumi.Input<bool>? deleteCertificate;
  /// User-defined domain name
  final pulumi.Input<String> domain;
  /// Whether to force overwrite certificate.
  final pulumi.Input<bool>? force;
  /// The current certificate ID. If the Force value is not true, the OSS Server checks whether the value matches the current certificate ID. If the value does not match, an error is reported.
  final pulumi.Input<String>? previousCertId;

  /// Creates a new [BucketCnameArgs].
  /// [bucket] The bucket to which the custom domain name belongs
  /// [certificate] The container for the certificate configuration. See `certificate` below.
  /// [deleteCertificate] Whether to delete the certificate.
  /// [domain] User-defined domain name
  /// [force] Whether to force overwrite certificate.
  /// [previousCertId] The current certificate ID. If the Force value is not true, the OSS Server checks whether the value matches the current certificate ID. If the value does not match, an error is reported.
  BucketCnameArgs({
    required pulumi.Output<String> bucket,
    pulumi.Output<BucketCnameCertificate>? certificate,
    pulumi.Output<bool>? deleteCertificate,
    required pulumi.Output<String> domain,
    pulumi.Output<bool>? force,
    pulumi.Output<String>? previousCertId,
  }) :
      bucket = pulumi.Input.asInput<String>(bucket),
      certificate = pulumi.Input.asOptionalInput<BucketCnameCertificate>(certificate),
      deleteCertificate = pulumi.Input.asOptionalInput<bool>(deleteCertificate),
      domain = pulumi.Input.asInput<String>(domain),
      force = pulumi.Input.asOptionalInput<bool>(force),
      previousCertId = pulumi.Input.asOptionalInput<String>(previousCertId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'certificate': ?pulumi.Input.mapOptionalInputValue<BucketCnameCertificate, Map<String, dynamic>>(certificate, (value) => value.toMap()),
      'deleteCertificate': ?deleteCertificate,
      'domain': domain,
      'force': ?force,
      'previousCertId': ?previousCertId,
    };
  }

  factory BucketCnameArgs.fromMap(Map<String, dynamic> map) {
    return BucketCnameArgs(
      bucket: pulumi.Output.create<String>(map['bucket'] as String),
      certificate: map['certificate'] == null ? null : pulumi.Output.create<BucketCnameCertificate>(BucketCnameCertificate.fromMap((map['certificate'] as Map).cast<String, dynamic>())),
      deleteCertificate: map['deleteCertificate'] == null ? null : pulumi.Output.create<bool>(map['deleteCertificate'] as bool),
      domain: pulumi.Output.create<String>(map['domain'] as String),
      force: map['force'] == null ? null : pulumi.Output.create<bool>(map['force'] as bool),
      previousCertId: map['previousCertId'] == null ? null : pulumi.Output.create<String>(map['previousCertId'] as String),
    );
  }
}

