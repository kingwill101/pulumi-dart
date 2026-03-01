// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_job_trigger_inspect_job_storage_config_datastore_options_kind.dart';
import 'prevention_job_trigger_inspect_job_storage_config_datastore_options_partition_id.dart';

class PreventionJobTriggerInspectJobStorageConfigDatastoreOptions {
  /// A representation of a Datastore kind.
  /// Structure is documented below.
  final PreventionJobTriggerInspectJobStorageConfigDatastoreOptionsKind kind;

  /// Datastore partition ID. A partition ID identifies a grouping of entities. The grouping
  /// is always by project and namespace, however the namespace ID may be empty.
  /// Structure is documented below.
  final PreventionJobTriggerInspectJobStorageConfigDatastoreOptionsPartitionId
  partitionId;

  /// Creates a new [PreventionJobTriggerInspectJobStorageConfigDatastoreOptions].
  /// [kind] A representation of a Datastore kind.
  /// [partitionId] Datastore partition ID. A partition ID identifies a grouping of entities. The grouping
  PreventionJobTriggerInspectJobStorageConfigDatastoreOptions({
    required this.kind,
    required this.partitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind.toMap(),
      'partitionId': partitionId.toMap(),
    };
  }

  factory PreventionJobTriggerInspectJobStorageConfigDatastoreOptions.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionJobTriggerInspectJobStorageConfigDatastoreOptions(
      kind:
          PreventionJobTriggerInspectJobStorageConfigDatastoreOptionsKind.fromMap(
            (map['kind'] as Map).cast<String, dynamic>(),
          ),
      partitionId:
          PreventionJobTriggerInspectJobStorageConfigDatastoreOptionsPartitionId.fromMap(
            (map['partitionId'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
