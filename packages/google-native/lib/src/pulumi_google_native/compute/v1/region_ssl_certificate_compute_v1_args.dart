// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_ssl_certificate_type_compute_v1.dart';
import 'ssl_certificate_managed_ssl_certificate_compute_v1.dart';
import 'ssl_certificate_self_managed_ssl_certificate_compute_v1.dart';

/// The set of arguments for RegionSslCertificate.
class RegionSslCertificateComputeV1Args {
  /// A value read into memory from a certificate file. The certificate file must be in PEM format. The certificate chain must be no greater than 5 certs long. The chain must include at least one intermediate cert.
  final pulumi.Input<String>? certificate;

  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;

  /// Configuration and status of a managed SSL certificate.
  final pulumi.Input<SslCertificateManagedSslCertificateComputeV1>? managed;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// A value read into memory from a write-only private key file. The private key file must be in PEM format. For security, only insert requests include this field.
  final pulumi.Input<String>? privateKey;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Configuration and status of a self-managed SSL certificate.
  final pulumi.Input<SslCertificateSelfManagedSslCertificateComputeV1>?
      selfManaged;

  /// (Optional) Specifies the type of SSL certificate, either "SELF_MANAGED" or "MANAGED". If not specified, the certificate is self-managed and the fields certificate and private_key are used.
  final pulumi.Input<RegionSslCertificateTypeComputeV1>? type;

  RegionSslCertificateComputeV1Args({
    this.certificate,
    this.description,
    this.managed,
    this.name,
    this.privateKey,
    this.project,
    required this.region,
    this.requestId,
    this.selfManaged,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final certificateValue = certificate;
    if (certificateValue != null) {
      map['certificate'] = certificateValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final managedValue = managed;
    if (managedValue != null) {
      map['managed'] = pulumi.Input.mapOptionalInputValue<
          SslCertificateManagedSslCertificateComputeV1,
          Map<String, dynamic>>(managedValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final privateKeyValue = privateKey;
    if (privateKeyValue != null) {
      map['privateKey'] = privateKeyValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final selfManagedValue = selfManaged;
    if (selfManagedValue != null) {
      map['selfManaged'] = pulumi.Input.mapOptionalInputValue<
          SslCertificateSelfManagedSslCertificateComputeV1,
          Map<String, dynamic>>(selfManagedValue, (value) => value.toMap());
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = pulumi.Input.mapOptionalInputValue<
          RegionSslCertificateTypeComputeV1,
          String>(typeValue, (value) => value.value);
    }
    return map;
  }

  factory RegionSslCertificateComputeV1Args.fromMap(Map<String, dynamic> map) {
    return RegionSslCertificateComputeV1Args(
      certificate: pulumi.Input.asOptionalInput<String>(map['certificate']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      managed: pulumi.Input.asOptionalInput<
          SslCertificateManagedSslCertificateComputeV1>(map['managed']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      privateKey: pulumi.Input.asOptionalInput<String>(map['privateKey']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      selfManaged: pulumi.Input.asOptionalInput<
          SslCertificateSelfManagedSslCertificateComputeV1>(map['selfManaged']),
      type: pulumi.Input.asOptionalInput<RegionSslCertificateTypeComputeV1>(
          map['type']),
    );
  }
}
