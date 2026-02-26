// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../restore_workload_compute_instance_restore_properties_params_resource_manager_tag/restore_workload_compute_instance_restore_properties_params_resource_manager_tag.dart';

class RestoreWorkloadComputeInstanceRestorePropertiesParams {
  /// Structure is documented below.
  final List<
          RestoreWorkloadComputeInstanceRestorePropertiesParamsResourceManagerTag>?
      resourceManagerTags;

  RestoreWorkloadComputeInstanceRestorePropertiesParams({
    this.resourceManagerTags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final resourceManagerTagsValue = resourceManagerTags;
    if (resourceManagerTagsValue != null) {
      map['resourceManagerTags'] = Input.encodeList<
          RestoreWorkloadComputeInstanceRestorePropertiesParamsResourceManagerTag,
          Map<String,
              dynamic>>(resourceManagerTagsValue, (value) => value.toMap());
    }
    return map;
  }

  factory RestoreWorkloadComputeInstanceRestorePropertiesParams.fromMap(
      Map<String, dynamic> map) {
    return RestoreWorkloadComputeInstanceRestorePropertiesParams(
      resourceManagerTags: map['resourceManagerTags'] == null
          ? null
          : Input.decodeList<
                  RestoreWorkloadComputeInstanceRestorePropertiesParamsResourceManagerTag>(
              map['resourceManagerTags'],
              (value) =>
                  RestoreWorkloadComputeInstanceRestorePropertiesParamsResourceManagerTag
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
