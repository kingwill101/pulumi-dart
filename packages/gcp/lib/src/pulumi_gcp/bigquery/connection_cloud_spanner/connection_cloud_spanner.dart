// ignore_for_file: unused_element, unnecessary_cast

class ConnectionCloudSpanner {
  /// Cloud Spanner database in the form `project/instance/database'.
  final String database;

  /// Cloud Spanner database role for fine-grained access control. The Cloud Spanner admin should have provisioned the database role with appropriate permissions, such as `SELECT` and `INSERT`. Other users should only use roles provided by their Cloud Spanner admins. The database role name must start with a letter, and can only contain letters, numbers, and underscores. For more details, see https://cloud.google.com/spanner/docs/fgac-about.
  final String? databaseRole;

  /// Allows setting max parallelism per query when executing on Spanner independent compute resources. If unspecified, default values of parallelism are chosen that are dependent on the Cloud Spanner instance configuration. `useParallelism` and `useDataBoost` must be set when setting max parallelism.
  final int? maxParallelism;

  /// If set, the request will be executed via Spanner independent compute resources. <span pulumi-lang-nodejs="`useParallelism`" pulumi-lang-dotnet="`UseParallelism`" pulumi-lang-go="`useParallelism`" pulumi-lang-python="`use_parallelism`" pulumi-lang-yaml="`useParallelism`" pulumi-lang-java="`useParallelism`">`use_parallelism`</span> must be set when using data boost.
  final bool? useDataBoost;

  /// If parallelism should be used when reading from Cloud Spanner.
  final bool? useParallelism;

  /// (Optional, Deprecated)
  /// If the serverless analytics service should be used to read data from Cloud Spanner. `useParallelism` must be set when using serverless analytics.
  ///
  /// > **Warning:** `useServerlessAnalytics` is deprecated and will be removed in a future major release. Use `useDataBoost` instead.
  final bool? useServerlessAnalytics;

  ConnectionCloudSpanner({
    required this.database,
    this.databaseRole,
    this.maxParallelism,
    this.useDataBoost,
    this.useParallelism,
    this.useServerlessAnalytics,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['database'] = database;
    final databaseRoleValue = databaseRole;
    if (databaseRoleValue != null) {
      map['databaseRole'] = databaseRoleValue;
    }
    final maxParallelismValue = maxParallelism;
    if (maxParallelismValue != null) {
      map['maxParallelism'] = maxParallelismValue;
    }
    final useDataBoostValue = useDataBoost;
    if (useDataBoostValue != null) {
      map['useDataBoost'] = useDataBoostValue;
    }
    final useParallelismValue = useParallelism;
    if (useParallelismValue != null) {
      map['useParallelism'] = useParallelismValue;
    }
    final useServerlessAnalyticsValue = useServerlessAnalytics;
    if (useServerlessAnalyticsValue != null) {
      map['useServerlessAnalytics'] = useServerlessAnalyticsValue;
    }
    return map;
  }

  factory ConnectionCloudSpanner.fromMap(Map<String, dynamic> map) {
    return ConnectionCloudSpanner(
      database: map['database'] as String,
      databaseRole:
          map['databaseRole'] == null ? null : map['databaseRole'] as String,
      maxParallelism:
          map['maxParallelism'] == null ? null : map['maxParallelism'] as int,
      useDataBoost:
          map['useDataBoost'] == null ? null : map['useDataBoost'] as bool,
      useParallelism:
          map['useParallelism'] == null ? null : map['useParallelism'] as bool,
      useServerlessAnalytics: map['useServerlessAnalytics'] == null
          ? null
          : map['useServerlessAnalytics'] as bool,
    );
  }
}
