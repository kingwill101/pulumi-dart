// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssl_certificate_managed_ssl_certificate_compute_beta.dart';
import 'ssl_certificate_self_managed_ssl_certificate_compute_beta.dart';
import 'ssl_certificate_type_compute_beta.dart';

/// {@template pulumi_compute_beta_ssl_certificate_compute_beta_args_doc}
/// The set of arguments for SslCertificate.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_ssl_certificate_compute_beta_args_doc}
class SslCertificateComputeBetaArgs {
  /// A value read into memory from a certificate file. The certificate file must be in PEM format. The certificate chain must be no greater than 5 certs long. The chain must include at least one intermediate cert.
  final pulumi.Input<String>? certificate;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// Configuration and status of a managed SSL certificate.
  final pulumi.Input<SslCertificateManagedSslCertificateComputeBeta>? managed;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// A value read into memory from a write-only private key file. The private key file must be in PEM format. For security, only insert requests include this field.
  final pulumi.Input<String>? privateKey;
  final pulumi.Input<String>? project;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Configuration and status of a self-managed SSL certificate.
  final pulumi.Input<SslCertificateSelfManagedSslCertificateComputeBeta>? selfManaged;
  /// (Optional) Specifies the type of SSL certificate, either "SELF_MANAGED" or "MANAGED". If not specified, the certificate is self-managed and the fields certificate and private_key are used.
  final pulumi.Input<SslCertificateTypeComputeBeta>? type;

  /// Creates a new [SslCertificateComputeBetaArgs].
  /// [certificate] A value read into memory from a certificate file. The certificate file must be in PEM format. The certificate chain must be no greater than 5 certs long. The chain must include at least one intermediate cert.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [managed] Configuration and status of a managed SSL certificate.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [privateKey] A value read into memory from a write-only private key file. The private key file must be in PEM format. For security, only insert requests include this field.
  /// [project] Optional.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [selfManaged] Configuration and status of a self-managed SSL certificate.
  /// [type] (Optional) Specifies the type of SSL certificate, either "SELF_MANAGED" or "MANAGED". If not specified, the certificate is self-managed and the fields certificate and private_key are used.
  SslCertificateComputeBetaArgs({
    String? certificate,
    String? description,
    SslCertificateManagedSslCertificateComputeBeta? managed,
    String? name,
    String? privateKey,
    String? project,
    String? requestId,
    SslCertificateSelfManagedSslCertificateComputeBeta? selfManaged,
    SslCertificateTypeComputeBeta? type,
  }) :
      certificate = pulumi.Input.asOptionalInput<String>(certificate),
      description = pulumi.Input.asOptionalInput<String>(description),
      managed = pulumi.Input.asOptionalInput<SslCertificateManagedSslCertificateComputeBeta>(managed),
      name = pulumi.Input.asOptionalInput<String>(name),
      privateKey = pulumi.Input.asOptionalInput<String>(privateKey),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      selfManaged = pulumi.Input.asOptionalInput<SslCertificateSelfManagedSslCertificateComputeBeta>(selfManaged),
      type = pulumi.Input.asOptionalInput<SslCertificateTypeComputeBeta>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?certificate,
      'description': ?description,
      'managed': ?pulumi.Input.mapOptionalInputValue<SslCertificateManagedSslCertificateComputeBeta, Map<String, dynamic>>(managed, (value) => value.toMap()),
      'name': ?name,
      'privateKey': ?privateKey,
      'project': ?project,
      'requestId': ?requestId,
      'selfManaged': ?pulumi.Input.mapOptionalInputValue<SslCertificateSelfManagedSslCertificateComputeBeta, Map<String, dynamic>>(selfManaged, (value) => value.toMap()),
      'type': ?pulumi.Input.mapOptionalInputValue<SslCertificateTypeComputeBeta, String>(type, (value) => value.value),
    };
  }

  factory SslCertificateComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return SslCertificateComputeBetaArgs(
      certificate: map['certificate'] == null ? null : map['certificate'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      managed: map['managed'] == null ? null : SslCertificateManagedSslCertificateComputeBeta.fromMap((map['managed'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      privateKey: map['privateKey'] == null ? null : map['privateKey'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      selfManaged: map['selfManaged'] == null ? null : SslCertificateSelfManagedSslCertificateComputeBeta.fromMap((map['selfManaged'] as Map).cast<String, dynamic>()),
      type: map['type'] == null ? null : SslCertificateTypeComputeBeta.fromValue(map['type'] as String),
    );
  }
}

