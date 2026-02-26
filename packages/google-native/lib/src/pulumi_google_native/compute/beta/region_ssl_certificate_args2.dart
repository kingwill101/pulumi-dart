// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'region_ssl_certificate_type2.dart';
import 'ssl_certificate_managed_ssl_certificate2.dart';
import 'ssl_certificate_self_managed_ssl_certificate2.dart';

/// The set of arguments for RegionSslCertificate.
class RegionSslCertificateArgs2 {
  /// A value read into memory from a certificate file. The certificate file must be in PEM format. The certificate chain must be no greater than 5 certs long. The chain must include at least one intermediate cert.
  final Input<String>? certificate;

  /// An optional description of this resource. Provide this property when you create the resource.
  final Input<String>? description;

  /// Configuration and status of a managed SSL certificate.
  final Input<SslCertificateManagedSslCertificate2>? managed;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final Input<String>? name;

  /// A value read into memory from a write-only private key file. The private key file must be in PEM format. For security, only insert requests include this field.
  final Input<String>? privateKey;
  final Input<String>? project;
  final Input<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// Configuration and status of a self-managed SSL certificate.
  final Input<SslCertificateSelfManagedSslCertificate2>? selfManaged;

  /// (Optional) Specifies the type of SSL certificate, either "SELF_MANAGED" or "MANAGED". If not specified, the certificate is self-managed and the fields certificate and private_key are used.
  final Input<RegionSslCertificateType2>? type;

  RegionSslCertificateArgs2({
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
      map['managed'] = Input.mapOptionalInputValue<
          SslCertificateManagedSslCertificate2,
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
      map['selfManaged'] = Input.mapOptionalInputValue<
          SslCertificateSelfManagedSslCertificate2,
          Map<String, dynamic>>(selfManagedValue, (value) => value.toMap());
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] =
          Input.mapOptionalInputValue<RegionSslCertificateType2, String>(
              typeValue, (value) => value.value);
    }
    return map;
  }

  factory RegionSslCertificateArgs2.fromMap(Map<String, dynamic> map) {
    return RegionSslCertificateArgs2(
      certificate: Input.asOptionalInput<String>(map['certificate']),
      description: Input.asOptionalInput<String>(map['description']),
      managed: Input.asOptionalInput<SslCertificateManagedSslCertificate2>(
          map['managed']),
      name: Input.asOptionalInput<String>(map['name']),
      privateKey: Input.asOptionalInput<String>(map['privateKey']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      selfManaged:
          Input.asOptionalInput<SslCertificateSelfManagedSslCertificate2>(
              map['selfManaged']),
      type: Input.asOptionalInput<RegionSslCertificateType2>(map['type']),
    );
  }
}
