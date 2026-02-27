import 'package:pulumi/pulumi.dart';
import 'dns_threat_detector_args.dart';

/// DNS Armor is a fully-managed service that provides DNS-layer security for your Google Cloud workloads.
///
///
/// To get more information about DnsThreatDetector, see:
///
/// * [API documentation](https://cloud.google.com/dns/docs/create-threat-detector)
/// * How-to Guides
/// * [DNS Threat Detector](https://cloud.google.com/dns/docs/threat-detection)
///
/// ## Example Usage
///
/// ### Network Security Dns Threat Detector Basic
///
///
///
///
/// ## Import
///
/// DnsThreatDetector can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/dnsThreatDetectors/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, DnsThreatDetector can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/dnsThreatDetector:DnsThreatDetector default projects/{{project}}/locations/{{location}}/dnsThreatDetectors/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/dnsThreatDetector:DnsThreatDetector default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/dnsThreatDetector:DnsThreatDetector default {{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/dnsThreatDetector:DnsThreatDetector default {{name}}
/// ```
class DnsThreatDetector extends CustomResource {
  /// The timestamp when the resource was created.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z"
  late final Output<String> createTime;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// List of networks that are excluded from detection. Format: projects/{project}/global/networks/{name}.
  late final Output<List<String>?> excludedNetworks;

  /// Set of label tags associated with the DNS Threat Detector resource.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The location of the DNS Threat Detector. The only supported value is `global`.
  late final Output<String?> location;

  /// Name of the DnsThreatDetector resource.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// DNS Threat Detection provider. The only supported value is `INFOBLOX`.
  late final Output<String?> threatDetectorProvider;

  /// The timestamp when the resource was updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final Output<String> updateTime;

  DnsThreatDetector(
    String name, {
    DnsThreatDetectorArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/dnsThreatDetector:DnsThreatDetector',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.excludedNetworks = registerOutput<List<String>?>('excludedNetworks');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.threatDetectorProvider =
        registerOutput<String?>('threatDetectorProvider');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
