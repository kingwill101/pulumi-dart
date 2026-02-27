// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../v2_queued_resource_tpu/v2_queued_resource_tpu.dart';

/// The set of arguments for V2QueuedResource.
class V2QueuedResourceArgs {
  /// The immutable name of the Queued Resource.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Defines a TPU resource.
  /// Structure is documented below.
  final pulumi.Input<V2QueuedResourceTpu>? tpu;

  /// The GCP location for the Queued Resource. If it is not provided, the provider zone is used.
  final pulumi.Input<String>? zone;

  V2QueuedResourceArgs({
    this.name,
    this.project,
    this.tpu,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final tpuValue = tpu;
    if (tpuValue != null) {
      map['tpu'] = pulumi.Input.mapOptionalInputValue<V2QueuedResourceTpu,
          Map<String, dynamic>>(tpuValue, (value) => value.toMap());
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory V2QueuedResourceArgs.fromMap(Map<String, dynamic> map) {
    return V2QueuedResourceArgs(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      tpu: pulumi.Input.asOptionalInput<V2QueuedResourceTpu>(map['tpu']),
      zone: pulumi.Input.asOptionalInput<String>(map['zone']),
    );
  }
}
