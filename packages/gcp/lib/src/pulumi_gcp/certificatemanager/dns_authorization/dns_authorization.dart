import 'package:pulumi/pulumi.dart' as pulumi;
import '../dns_authorization_dns_resource_record/dns_authorization_dns_resource_record.dart';
import 'dns_authorization_args.dart';

/// DnsAuthorization represents a HTTP-reachable backend for a DnsAuthorization.
///
///
///
/// ## Example Usage
///
/// ### Certificate Manager Dns Authorization Basic
///
///
///
/// ### Certificate Manager Dns Authorization Regional
///
///
///
///
/// ## Import
///
/// DnsAuthorization can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/dnsAuthorizations/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, DnsAuthorization can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:certificatemanager/dnsAuthorization:DnsAuthorization default projects/{{project}}/locations/{{location}}/dnsAuthorizations/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:certificatemanager/dnsAuthorization:DnsAuthorization default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:certificatemanager/dnsAuthorization:DnsAuthorization default {{location}}/{{name}}
/// ```
class DnsAuthorization extends pulumi.CustomResource {
  /// A human-readable description of the resource.
  late final pulumi.Output<String?> description;

  /// The structure describing the DNS Resource Record that needs to be added
  /// to DNS configuration for the authorization to be usable by
  /// certificate.
  /// Structure is documented below.
  late final pulumi.Output<List<DnsAuthorizationDnsResourceRecord>>
      dnsResourceRecords;

  /// A domain which is being authorized. A DnsAuthorization resource covers a
  /// single domain and its wildcard, e.g. authorization for "example.com" can
  /// be used to issue certificates for "example.com" and "*.example.com".
  late final pulumi.Output<String> domain;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Set of label tags associated with the DNS Authorization resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The Certificate Manager location. If not specified, "global" is used.
  late final pulumi.Output<String?> location;

  /// Name of the resource; provided by the client when the resource is created.
  /// The name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,
  /// and all following characters must be a dash, underscore, letter or digit.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// type of DNS authorization. If unset during the resource creation, FIXED_RECORD will
  /// be used for global resources, and PER_PROJECT_RECORD will be used for other locations.
  /// FIXED_RECORD DNS authorization uses DNS-01 validation method
  /// PER_PROJECT_RECORD DNS authorization allows for independent management
  /// of Google-managed certificates with DNS authorization across multiple
  /// projects.
  /// Possible values are: `FIXED_RECORD`, `PER_PROJECT_RECORD`.
  late final pulumi.Output<String> type;

  DnsAuthorization(
    String name, {
    DnsAuthorizationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:certificatemanager/dnsAuthorization:DnsAuthorization',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.dnsResourceRecords =
        registerOutput<List<DnsAuthorizationDnsResourceRecord>>(
            'dnsResourceRecords');
    this.domain = registerOutput<String>('domain');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.type = registerOutput<String>('type');
  }
}
