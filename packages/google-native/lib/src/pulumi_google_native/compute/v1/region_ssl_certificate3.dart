import 'package:pulumi/pulumi.dart';
import 'region_ssl_certificate_args3.dart';
import 'ssl_certificate_managed_ssl_certificate_response3.dart';
import 'ssl_certificate_self_managed_ssl_certificate_response3.dart';

/// Creates a SslCertificate resource in the specified project and region using the data included in the request
class RegionSslCertificate3 extends CustomResource {
  /// A value read into memory from a certificate file. The certificate file must be in PEM format. The certificate chain must be no greater than 5 certs long. The chain must include at least one intermediate cert.
  late final Output<String> certificate;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final Output<String> description;

  /// Expire time of the certificate. RFC3339
  late final Output<String> expireTime;

  /// Type of the resource. Always compute#sslCertificate for SSL certificates.
  late final Output<String> kind;

  /// Configuration and status of a managed SSL certificate.
  late final Output<SslCertificateManagedSslCertificateResponse3> managed;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final Output<String> name;

  /// A value read into memory from a write-only private key file. The private key file must be in PEM format. For security, only insert requests include this field.
  late final Output<String> privateKey;
  late final Output<String> project;
  late final Output<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// [Output only] Server-defined URL for the resource.
  late final Output<String> selfLink;

  /// Configuration and status of a self-managed SSL certificate.
  late final Output<SslCertificateSelfManagedSslCertificateResponse3>
      selfManaged;

  /// Domains associated with the certificate via Subject Alternative Name.
  late final Output<List<String>> subjectAlternativeNames;

  /// (Optional) Specifies the type of SSL certificate, either "SELF_MANAGED" or "MANAGED". If not specified, the certificate is self-managed and the fields certificate and private_key are used.
  late final Output<String> type;

  RegionSslCertificate3(
    String name, {
    RegionSslCertificateArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:compute/v1:RegionSslCertificate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.certificate = Output.createUnknown<String>();
    this.creationTimestamp = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.expireTime = Output.createUnknown<String>();
    this.kind = Output.createUnknown<String>();
    this.managed =
        Output.createUnknown<SslCertificateManagedSslCertificateResponse3>();
    this.name = Output.createUnknown<String>();
    this.privateKey = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.selfLink = Output.createUnknown<String>();
    this.selfManaged = Output.createUnknown<
        SslCertificateSelfManagedSslCertificateResponse3>();
    this.subjectAlternativeNames = Output.createUnknown<List<String>>();
    this.type = Output.createUnknown<String>();
  }
}
