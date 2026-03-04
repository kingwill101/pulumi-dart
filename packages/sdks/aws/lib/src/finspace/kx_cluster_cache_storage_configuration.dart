// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KxClusterCacheStorageConfiguration {
  final pulumi.Input<int> size;

  /// Type of KDB database. The following types are available:
  /// * HDB - Historical Database. The data is only accessible with read-only permissions from one of the FinSpace managed KX databases mounted to the cluster.
  /// * RDB - Realtime Database. This type of database captures all the data from a ticker plant and stores it in memory until the end of day, after which it writes all of its data to a disk and reloads the HDB. This cluster type requires local storage for temporary storage of data during the savedown process. If you specify this field in your request, you must provide the `savedownStorageConfiguration` parameter.
  /// * GATEWAY - A gateway cluster allows you to access data across processes in kdb systems. It allows you to create your own routing logic using the initialization scripts and custom code. This type of cluster does not require a  writable local storage.
  /// * GP - A general purpose cluster allows you to quickly iterate on code during development by granting greater access to system commands and enabling a fast reload of custom code. This cluster type can optionally mount databases including cache and savedown storage. For this cluster type, the node count is fixed at 1. It does not support autoscaling and supports only `SINGLE` AZ mode.
  /// * Tickerplant - A tickerplant cluster allows you to subscribe to feed handlers based on IAM permissions. It can publish to RDBs, other Tickerplants, and real-time subscribers (RTS). Tickerplants can persist messages to log, which is readable by any RDB environment. It supports only single-node that is only one kdb process.
  final pulumi.Input<String> type;

  /// Creates a new [KxClusterCacheStorageConfiguration].
  /// [size] Required.
  /// [type] Type of KDB database. The following types are available:
  KxClusterCacheStorageConfiguration({required this.size, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'size': size, 'type': type};
  }

  factory KxClusterCacheStorageConfiguration.fromMap(Map<String, dynamic> map) {
    return KxClusterCacheStorageConfiguration(
      size: pulumi.Input.fromValue(map['size'] as int),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
