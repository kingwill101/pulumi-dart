import 'package:pulumi/pulumi.dart';
import 'authorized_certificate_args.dart';
import 'certificate_raw_data_response.dart';
import 'managed_certificate_response.dart';

/// Uploads the specified SSL certificate.
/// Auto-naming is currently not supported for this resource.
class AuthorizedCertificate extends CustomResource {
  late final Output<String> appId;

  /// The SSL certificate serving the AuthorizedCertificate resource. This must be obtained independently from a certificate authority.
  late final Output<CertificateRawDataResponse> certificateRawData;

  /// The user-specified display name of the certificate. This is not guaranteed to be unique. Example: My Certificate.
  late final Output<String> displayName;

  /// Aggregate count of the domain mappings with this certificate mapped. This count includes domain mappings on applications for which the user does not have VIEWER permissions.Only returned by GET or LIST requests when specifically requested by the view=FULL_CERTIFICATE option.
  late final Output<int> domainMappingsCount;

  /// Topmost applicable domains of this certificate. This certificate applies to these domains and their subdomains. Example: example.com.
  late final Output<List<String>> domainNames;

  /// The time when this certificate expires. To update the renewal time on this certificate, upload an SSL certificate with a different expiration time using AuthorizedCertificates.UpdateAuthorizedCertificate.
  late final Output<String> expireTime;

  /// Only applicable if this certificate is managed by App Engine. Managed certificates are tied to the lifecycle of a DomainMapping and cannot be updated or deleted via the AuthorizedCertificates API. If this certificate is manually administered by the user, this field will be empty.
  late final Output<ManagedCertificateResponse> managedCertificate;

  /// Full path to the AuthorizedCertificate resource in the API. Example: apps/myapp/authorizedCertificates/12345.
  late final Output<String> name;

  /// The full paths to user visible Domain Mapping resources that have this certificate mapped. Example: apps/myapp/domainMappings/example.com.This may not represent the full list of mapped domain mappings if the user does not have VIEWER permissions on all of the applications that have this certificate mapped. See domain_mappings_count for a complete count.Only returned by GET or LIST requests when specifically requested by the view=FULL_CERTIFICATE option.
  late final Output<List<String>> visibleDomainMappings;

  AuthorizedCertificate(
    String name, {
    AuthorizedCertificateArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:appengine/v1:AuthorizedCertificate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.appId = Output.createUnknown<String>();
    this.certificateRawData =
        Output.createUnknown<CertificateRawDataResponse>();
    this.displayName = Output.createUnknown<String>();
    this.domainMappingsCount = Output.createUnknown<int>();
    this.domainNames = Output.createUnknown<List<String>>();
    this.expireTime = Output.createUnknown<String>();
    this.managedCertificate =
        Output.createUnknown<ManagedCertificateResponse>();
    this.name = Output.createUnknown<String>();
    this.visibleDomainMappings = Output.createUnknown<List<String>>();
  }
}
