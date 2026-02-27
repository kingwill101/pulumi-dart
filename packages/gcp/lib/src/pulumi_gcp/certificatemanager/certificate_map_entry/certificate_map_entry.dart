import 'package:pulumi/pulumi.dart';
import 'certificate_map_entry_args.dart';

/// CertificateMapEntry is a list of certificate configurations,
/// that have been issued for a particular hostname
///
///
///
/// ## Example Usage
///
/// ### Certificate Manager Certificate Map Entry Full
///
///
///
///
/// ## Import
///
/// CertificateMapEntry can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/certificateMaps/{{map}}/certificateMapEntries/{{name}}`
///
/// * `{{project}}/{{map}}/{{name}}`
///
/// * `{{map}}/{{name}}`
///
/// When using the `pulumi import` command, CertificateMapEntry can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:certificatemanager/certificateMapEntry:CertificateMapEntry default projects/{{project}}/locations/global/certificateMaps/{{map}}/certificateMapEntries/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:certificatemanager/certificateMapEntry:CertificateMapEntry default {{project}}/{{map}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:certificatemanager/certificateMapEntry:CertificateMapEntry default {{map}}/{{name}}
/// ```
class CertificateMapEntry extends CustomResource {
  /// A set of Certificates defines for the given hostname.
  /// There can be defined up to fifteen certificates in each Certificate Map Entry.
  /// Each certificate must match pattern projects/*/locations/*/certificates/*.
  late final Output<List<String>> certificates;

  /// Creation timestamp of a Certificate Map Entry. Timestamp in RFC3339 UTC "Zulu" format,
  /// with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final Output<String> createTime;

  /// A human-readable description of the resource.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// A Hostname (FQDN, e.g. example.com) or a wildcard hostname expression (*.example.com)
  /// for a set of hostnames with common suffix. Used as Server Name Indication (SNI) for
  /// selecting a proper certificate.
  late final Output<String?> hostname;

  /// Set of labels associated with a Certificate Map Entry.
  /// An object containing a list of "key": value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// A map entry that is inputted into the certificate map
  late final Output<String> map;

  /// A predefined matcher for particular cases, other than SNI selection
  late final Output<String?> matcher;

  /// A user-defined name of the Certificate Map Entry. Certificate Map Entry
  /// names must be unique globally and match pattern
  /// 'projects/*/locations/*/certificateMaps/*/certificateMapEntries/*'
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// A serving state of this Certificate Map Entry.
  late final Output<String> state;

  /// Update timestamp of a Certificate Map Entry. Timestamp in RFC3339 UTC "Zulu" format,
  /// with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final Output<String> updateTime;

  CertificateMapEntry(
    String name, {
    CertificateMapEntryArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:certificatemanager/certificateMapEntry:CertificateMapEntry',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.certificates = registerOutput<List<String>>('certificates');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.hostname = registerOutput<String?>('hostname');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.map = registerOutput<String>('map');
    this.matcher = registerOutput<String?>('matcher');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
