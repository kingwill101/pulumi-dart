import 'package:pulumi/pulumi.dart' as pulumi;
import '../certificate_map_gclb_target/certificate_map_gclb_target.dart';
import 'certificate_map_args.dart';

/// CertificateMap defines a collection of certificate configurations,
/// which are usable by any associated target proxies
///
///
///
/// ## Example Usage
///
/// ### Certificate Manager Certificate Map Basic
///
///
///
///
/// ## Import
///
/// CertificateMap can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/certificateMaps/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, CertificateMap can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:certificatemanager/certificateMap:CertificateMap default projects/{{project}}/locations/global/certificateMaps/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:certificatemanager/certificateMap:CertificateMap default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:certificatemanager/certificateMap:CertificateMap default {{name}}
/// ```
class CertificateMap extends pulumi.CustomResource {
  /// Creation timestamp of a Certificate Map. Timestamp is in RFC3339 UTC "Zulu" format,
  /// accurate to nanoseconds with up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;

  /// A human-readable description of the resource.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// A list of target proxies that use this Certificate Map
  /// Structure is documented below.
  late final pulumi.Output<List<CertificateMapGclbTarget>> gclbTargets;

  /// Set of labels associated with a Certificate Map resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// A user-defined name of the Certificate Map. Certificate Map names must be unique
  /// globally and match the pattern `projects/*/locations/*/certificateMaps/*`.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Update timestamp of a Certificate Map. Timestamp is in RFC3339 UTC "Zulu" format,
  /// accurate to nanoseconds with up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  CertificateMap(
    String name, {
    CertificateMapArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:certificatemanager/certificateMap:CertificateMap',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.gclbTargets =
        registerOutput<List<CertificateMapGclbTarget>>('gclbTargets');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
