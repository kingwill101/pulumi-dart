// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_instant_snapshot_args_doc}
/// The set of arguments for InstantSnapshot.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_instant_snapshot_args_doc}
class InstantSnapshotArgs {
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;

  /// Whether to attempt an application consistent instant snapshot by informing the OS to prepare for the snapshot process.
  final pulumi.Input<bool>? guestFlush;

  /// Labels to apply to this InstantSnapshot. These can be later modified by the setLabels method. Label values may be empty.
  final pulumi.Input<Map<String, String>>? labels;

  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// URL of the source disk used to create this instant snapshot. Note that the source disk must be in the same zone/region as the instant snapshot to be created. This can be a full or valid partial URL. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /disks/disk - https://www.googleapis.com/compute/v1/projects/project/regions/region /disks/disk - projects/project/zones/zone/disks/disk - projects/project/regions/region/disks/disk - zones/zone/disks/disk - regions/region/disks/disk
  final pulumi.Input<String>? sourceDisk;
  final pulumi.Input<String>? zone;

  /// Creates a new [InstantSnapshotArgs].
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [guestFlush] Whether to attempt an application consistent instant snapshot by informing the OS to prepare for the snapshot process.
  /// [labels] Labels to apply to this InstantSnapshot. These can be later modified by the setLabels method. Label values may be empty.
  /// [name] Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [project] Optional.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [sourceDisk] URL of the source disk used to create this instant snapshot. Note that the source disk must be in the same zone/region as the instant snapshot to be created. This can be a full or valid partial URL. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /disks/disk - https://www.googleapis.com/compute/v1/projects/project/regions/region /disks/disk - projects/project/zones/zone/disks/disk - projects/project/regions/region/disks/disk - zones/zone/disks/disk - regions/region/disks/disk
  /// [zone] Optional.
  InstantSnapshotArgs({
    String? description,
    bool? guestFlush,
    Map<String, String>? labels,
    String? name,
    String? project,
    String? requestId,
    String? sourceDisk,
    String? zone,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        guestFlush = pulumi.Input.asOptionalInput<bool>(guestFlush),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        requestId = pulumi.Input.asOptionalInput<String>(requestId),
        sourceDisk = pulumi.Input.asOptionalInput<String>(sourceDisk),
        zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final guestFlushValue = guestFlush;
    if (guestFlushValue != null) {
      map['guestFlush'] = guestFlushValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final sourceDiskValue = sourceDisk;
    if (sourceDiskValue != null) {
      map['sourceDisk'] = sourceDiskValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory InstantSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return InstantSnapshotArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      guestFlush: map['guestFlush'] == null ? null : map['guestFlush'] as bool,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      sourceDisk:
          map['sourceDisk'] == null ? null : map['sourceDisk'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
