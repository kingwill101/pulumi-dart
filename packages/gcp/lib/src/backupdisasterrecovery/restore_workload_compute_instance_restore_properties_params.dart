// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_workload_compute_instance_restore_properties_params_resource_manager_tag.dart';

class RestoreWorkloadComputeInstanceRestorePropertiesParams {
  /// Structure is documented below.
  final List<
    RestoreWorkloadComputeInstanceRestorePropertiesParamsResourceManagerTag
  >?
  resourceManagerTags;

  /// Creates a new [RestoreWorkloadComputeInstanceRestorePropertiesParams].
  /// [resourceManagerTags] Structure is documented below.
  RestoreWorkloadComputeInstanceRestorePropertiesParams({
    this.resourceManagerTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceManagerTags': ?resourceManagerTags == null
          ? null
          : pulumi.Input.encodeList<
              RestoreWorkloadComputeInstanceRestorePropertiesParamsResourceManagerTag,
              Map<String, dynamic>
            >(resourceManagerTags!, (value) => value.toMap()),
    };
  }

  factory RestoreWorkloadComputeInstanceRestorePropertiesParams.fromMap(
    Map<String, dynamic> map,
  ) {
    return RestoreWorkloadComputeInstanceRestorePropertiesParams(
      resourceManagerTags: map['resourceManagerTags'] == null
          ? null
          : pulumi.Input.decodeList<
              RestoreWorkloadComputeInstanceRestorePropertiesParamsResourceManagerTag
            >(
              map['resourceManagerTags'],
              (value) =>
                  RestoreWorkloadComputeInstanceRestorePropertiesParamsResourceManagerTag.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
