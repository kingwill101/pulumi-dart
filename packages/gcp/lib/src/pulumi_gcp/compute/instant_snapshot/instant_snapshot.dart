import 'package:pulumi/pulumi.dart' as pulumi;
import 'instant_snapshot_args.dart';

/// Represents an instant snapshot resource.
///
/// An instant snapshot is an in-place backup of a disk that can be used to rapidly create a new disk in minutes.
///
/// Instant snapshots capture data at a specific point in time. They are optimized for rapidly restoring captured
/// data to a new disk. Use instant snapshots to quickly recover data in cases where the zone and disk are still intact
/// but the data on the disk has been lost or corrupted
///
///
/// To get more information about InstantSnapshot, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/instantSnapshots)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/compute/docs/disks/instant-snapshots)
///
/// ## Example Usage
///
/// ### Instant Snapshot Basic
///
///
///
///
/// ## Import
///
/// InstantSnapshot can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/zones/{{zone}}/instantSnapshots/{{name}}`
///
/// * `{{project}}/{{zone}}/{{name}}`
///
/// * `{{zone}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, InstantSnapshot can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/instantSnapshot:InstantSnapshot default projects/{{project}}/zones/{{zone}}/instantSnapshots/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/instantSnapshot:InstantSnapshot default {{project}}/{{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/instantSnapshot:InstantSnapshot default {{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/instantSnapshot:InstantSnapshot default {{name}}
/// ```
class InstantSnapshot extends pulumi.CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource.
  late final pulumi.Output<String?> description;

  /// Size of the snapshot, specified in GB.
  late final pulumi.Output<int> diskSizeGb;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The fingerprint used for optimistic locking of this resource. Used
  /// internally during updates.
  late final pulumi.Output<String> labelFingerprint;

  /// Labels to apply to this InstantSnapshot.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Name of the resource; provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// A reference to the disk used to create this instant snapshot.
  late final pulumi.Output<String> sourceDisk;

  /// The ID value of the disk used to create this InstantSnapshot.
  late final pulumi.Output<String> sourceDiskId;

  /// A reference to the zone where the disk is located.
  late final pulumi.Output<String> zone;

  InstantSnapshot(
    String name, {
    InstantSnapshotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/instantSnapshot:InstantSnapshot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.diskSizeGb = registerOutput<int>('diskSizeGb');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labelFingerprint = registerOutput<String>('labelFingerprint');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.selfLink = registerOutput<String>('selfLink');
    this.sourceDisk = registerOutput<String>('sourceDisk');
    this.sourceDiskId = registerOutput<String>('sourceDiskId');
    this.zone = registerOutput<String>('zone');
  }
}
