import 'package:pulumi/pulumi.dart' as pulumi;
import '../certificate_managed/certificate_managed.dart';
import '../certificate_self_managed/certificate_self_managed.dart';
import 'certificate_certificatemanager_args.dart';

/// Certificate represents a HTTP-reachable backend for a Certificate.
///
///
/// To get more information about Certificate, see:
///
/// * [API documentation](https://docs.cloud.google.com/certificate-manager/docs/reference/certificate-manager/rest/v1/projects.locations.certificates)
/// * How-to Guides
/// * [Official Documentation](https://docs.cloud.google.com/certificate-manager/docs/certificates)
///
///
///
/// ## Example Usage
///
/// ### Certificate Manager Google Managed Certificate Dns
///
///
///
/// ### Certificate Manager Google Managed Certificate Issuance Config
///
///
///
/// ### Certificate Manager Certificate Basic
///
///
///
/// ### Certificate Manager Self Managed Certificate Regional
///
///
///
/// ### Certificate Manager Google Managed Certificate Issuance Config All Regions
///
///
///
/// ### Certificate Manager Google Managed Certificate Dns All Regions
///
///
///
/// ### Certificate Manager Google Managed Regional Certificate Dns Auth
///
///
///
/// ### Certificate Manager Client Auth Certificate
///
///
///
///
/// ## Import
///
/// Certificate can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/certificates/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Certificate can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:certificatemanager/certificate:Certificate default projects/{{project}}/locations/{{location}}/certificates/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:certificatemanager/certificate:Certificate default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:certificatemanager/certificate:Certificate default {{location}}/{{name}}
/// ```
class CertificateCertificatemanager extends pulumi.CustomResource {
  /// A human-readable description of the resource.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Set of label tags associated with the Certificate resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The Certificate Manager location. If not specified, "global" is used.
  late final pulumi.Output<String?> location;

  /// Configuration and state of a Managed Certificate.
  /// Certificate Manager provisions and renews Managed Certificates
  /// automatically, for as long as it's authorized to do so.
  /// Structure is documented below.
  late final pulumi.Output<CertificateManaged?> managed;

  /// A user-defined name of the certificate. Certificate names must be unique
  /// The name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,
  /// and all following characters must be a dash, underscore, letter or digit.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The list of Subject Alternative Names of dnsName type defined in the certificate (see RFC 5280 4.2.1.6)
  late final pulumi.Output<List<String>> sanDnsnames;

  /// The scope of the certificate.
  /// DEFAULT: Certificates with default scope are served from core Google data centers.
  /// If unsure, choose this option.
  /// EDGE_CACHE: Certificates with scope EDGE_CACHE are special-purposed certificates, served from Edge Points of Presence.
  /// See https://cloud.google.com/vpc/docs/edge-locations.
  /// ALL_REGIONS: Certificates with ALL_REGIONS scope are served from all GCP regions (You can only use ALL_REGIONS with global certs).
  /// See https://cloud.google.com/compute/docs/regions-zones.
  /// CLIENT_AUTH: Certificates with CLIENT_AUTH scope are used by a load balancer (TLS client) to be presented to the backend (TLS server) when backend mTLS is configured.
  /// See https://cloud.google.com/load-balancing/docs/backend-authenticated-tls-backend-mtls#client-certificate.
  late final pulumi.Output<String?> scope;

  /// Certificate data for a SelfManaged Certificate.
  /// SelfManaged Certificates are uploaded by the user. Updating such
  /// certificates before they expire remains the user's responsibility.
  /// Structure is documented below.
  late final pulumi.Output<CertificateSelfManaged?> selfManaged;

  CertificateCertificatemanager(
    String name, {
    CertificateCertificatemanagerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:certificatemanager/certificate:Certificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.managed = registerOutput<CertificateManaged?>('managed');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.sanDnsnames = registerOutput<List<String>>('sanDnsnames');
    this.scope = registerOutput<String?>('scope');
    this.selfManaged = registerOutput<CertificateSelfManaged?>('selfManaged');
  }
}
