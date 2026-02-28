// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_workload_compute_instance_restore_properties_metadata_item.dart';

class RestoreWorkloadComputeInstanceRestorePropertiesMetadata {
  /// Structure is documented below.
  final List<RestoreWorkloadComputeInstanceRestorePropertiesMetadataItem>?
      items;

  /// Creates a new [RestoreWorkloadComputeInstanceRestorePropertiesMetadata].
  /// [items] Structure is documented below.
  RestoreWorkloadComputeInstanceRestorePropertiesMetadata({
    this.items,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final itemsValue = items;
    if (itemsValue != null) {
      map['items'] = pulumi.Input.encodeList<
          RestoreWorkloadComputeInstanceRestorePropertiesMetadataItem,
          Map<String, dynamic>>(itemsValue, (value) => value.toMap());
    }
    return map;
  }

  factory RestoreWorkloadComputeInstanceRestorePropertiesMetadata.fromMap(
      Map<String, dynamic> map) {
    return RestoreWorkloadComputeInstanceRestorePropertiesMetadata(
      items: map['items'] == null
          ? null
          : pulumi.Input.decodeList<
                  RestoreWorkloadComputeInstanceRestorePropertiesMetadataItem>(
              map['items'],
              (value) =>
                  RestoreWorkloadComputeInstanceRestorePropertiesMetadataItem
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
