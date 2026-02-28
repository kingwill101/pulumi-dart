// ignore_for_file: unused_element, unnecessary_cast

class RoutineExternalRuntimeOptions {
  /// Amount of CPU provisioned for a Python UDF container instance. For more
  /// information, see [Configure container limits for Python
  /// UDFs](https://cloud.google.com/bigquery/docs/user-defined-functions-python#configure-container-limits)
  final double? containerCpu;

  /// Amount of memory provisioned for a Python UDF container instance. Format:
  /// {number}{unit} where unit is one of "M", "G", "Mi" and "Gi" (e.g. 1G,
  /// 512Mi). If not specified, the default value is 512Mi. For more information,
  /// see [Configure container limits for Python
  /// UDFs](https://cloud.google.com/bigquery/docs/user-defined-functions-python#configure-container-limits)
  final String? containerMemory;

  /// Maximum number of rows in each batch sent to the external runtime. If
  /// absent or if 0, BigQuery dynamically decides the number of rows in a batch.
  final String? maxBatchingRows;

  /// Fully qualified name of the connection whose service account will be used
  /// to execute the code in the container. Format:
  /// `"projects/{project_id}/locations/{location_id}/connections/{connection_id}"`
  final String? runtimeConnection;

  /// Language runtime version. Example: `python-3.11`.
  final String? runtimeVersion;

  /// Creates a new [RoutineExternalRuntimeOptions].
  /// [containerCpu] Amount of CPU provisioned for a Python UDF container instance. For more
  /// [containerMemory] Amount of memory provisioned for a Python UDF container instance. Format:
  /// [maxBatchingRows] Maximum number of rows in each batch sent to the external runtime. If
  /// [runtimeConnection] Fully qualified name of the connection whose service account will be used
  /// [runtimeVersion] Language runtime version. Example: `python-3.11`.
  RoutineExternalRuntimeOptions({
    this.containerCpu,
    this.containerMemory,
    this.maxBatchingRows,
    this.runtimeConnection,
    this.runtimeVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final containerCpuValue = containerCpu;
    if (containerCpuValue != null) {
      map['containerCpu'] = containerCpuValue;
    }
    final containerMemoryValue = containerMemory;
    if (containerMemoryValue != null) {
      map['containerMemory'] = containerMemoryValue;
    }
    final maxBatchingRowsValue = maxBatchingRows;
    if (maxBatchingRowsValue != null) {
      map['maxBatchingRows'] = maxBatchingRowsValue;
    }
    final runtimeConnectionValue = runtimeConnection;
    if (runtimeConnectionValue != null) {
      map['runtimeConnection'] = runtimeConnectionValue;
    }
    final runtimeVersionValue = runtimeVersion;
    if (runtimeVersionValue != null) {
      map['runtimeVersion'] = runtimeVersionValue;
    }
    return map;
  }

  factory RoutineExternalRuntimeOptions.fromMap(Map<String, dynamic> map) {
    return RoutineExternalRuntimeOptions(
      containerCpu:
          map['containerCpu'] == null ? null : map['containerCpu'] as double,
      containerMemory: map['containerMemory'] == null
          ? null
          : map['containerMemory'] as String,
      maxBatchingRows: map['maxBatchingRows'] == null
          ? null
          : map['maxBatchingRows'] as String,
      runtimeConnection: map['runtimeConnection'] == null
          ? null
          : map['runtimeConnection'] as String,
      runtimeVersion: map['runtimeVersion'] == null
          ? null
          : map['runtimeVersion'] as String,
    );
  }
}
