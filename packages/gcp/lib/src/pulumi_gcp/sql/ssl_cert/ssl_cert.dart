import 'package:pulumi/pulumi.dart';
import 'ssl_cert_args.dart';

/// Creates a new Google SQL SSL Cert on a Google SQL Instance. For more information, see the [official documentation](https://cloud.google.com/sql/), or the [JSON API](https://cloud.google.com/sql/docs/mysql/admin-api/v1beta4/sslCerts).
///
///
///
/// ## Example Usage
///
/// Example creating a SQL Client Certificate.
///
///
///
/// ## Import
///
/// Since the contents of the certificate cannot be accessed after its creation, this resource cannot be imported.
class SslCert extends CustomResource {
  /// The actual certificate data for this client certificate.
  late final Output<String> cert;

  /// The serial number extracted from the certificate data.
  late final Output<String> certSerialNumber;

  /// The common name to be used in the certificate to identify the
  /// client. Constrained to [a-zA-Z.-_ ]+. Changing this forces a new resource to be created.
  late final Output<String> commonName;

  /// The time when the certificate was created in RFC 3339 format,
  /// for example 2012-11-15T16:19:00.094Z.
  late final Output<String> createTime;

  /// The time when the certificate expires in RFC 3339 format,
  /// for example 2012-11-15T16:19:00.094Z.
  late final Output<String> expirationTime;

  /// The name of the Cloud SQL instance. Changing this
  /// forces a new resource to be created.
  late final Output<String> instance;

  /// The private key associated with the client certificate.
  late final Output<String> privateKey;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final Output<String> project;

  /// The CA cert of the server this client cert was generated from.
  late final Output<String> serverCaCert;

  /// The SHA1 Fingerprint of the certificate.
  late final Output<String> sha1Fingerprint;

  SslCert(
    String name, {
    SslCertArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:sql/sslCert:SslCert',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.cert = registerOutput<String>('cert');
    this.certSerialNumber = registerOutput<String>('certSerialNumber');
    this.commonName = registerOutput<String>('commonName');
    this.createTime = registerOutput<String>('createTime');
    this.expirationTime = registerOutput<String>('expirationTime');
    this.instance = registerOutput<String>('instance');
    this.privateKey = registerOutput<String>('privateKey');
    this.project = registerOutput<String>('project');
    this.serverCaCert = registerOutput<String>('serverCaCert');
    this.sha1Fingerprint = registerOutput<String>('sha1Fingerprint');
  }
}
