import 'package:pulumi/pulumi.dart';
import 'ssl_cert_args2.dart';

/// Creates an SSL certificate and returns it along with the private key and server certificate authority. The new certificate will not be usable until the instance is restarted.
/// Auto-naming is currently not supported for this resource.
class SslCert4 extends CustomResource {
  /// PEM representation.
  late final Output<String> cert;

  /// Serial number, as extracted from the certificate.
  late final Output<String> certSerialNumber;

  /// User supplied name. Constrained to [a-zA-Z.-_ ]+.
  late final Output<String> commonName;

  /// The time when the certificate was created in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  late final Output<String> createTime;

  /// The time when the certificate expires in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  late final Output<String> expirationTime;
  late final Output<String> instance;

  /// This is always `sql#sslCert`.
  late final Output<String> kind;
  late final Output<String> project;

  /// The URI of this resource.
  late final Output<String> selfLink;

  /// Sha1 Fingerprint.
  late final Output<String> sha1Fingerprint;

  SslCert4(
    String name, {
    SslCertArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:sqladmin/v1beta4:SslCert',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.cert = Output.createUnknown<String>();
    this.certSerialNumber = Output.createUnknown<String>();
    this.commonName = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.expirationTime = Output.createUnknown<String>();
    this.instance = Output.createUnknown<String>();
    this.kind = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.selfLink = Output.createUnknown<String>();
    this.sha1Fingerprint = Output.createUnknown<String>();
  }
}
