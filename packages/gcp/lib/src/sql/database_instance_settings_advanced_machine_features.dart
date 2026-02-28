// ignore_for_file: unused_element, unnecessary_cast

class DatabaseInstanceSettingsAdvancedMachineFeatures {
  /// The number of threads per core. The value of this flag can be 1 or 2. To disable SMT, set this flag to 1. Only available in Cloud SQL for SQL Server instances. See [smt](https://cloud.google.com/sql/docs/sqlserver/create-instance#smt-create-instance) for more details.
  final int? threadsPerCore;

  /// Creates a new [DatabaseInstanceSettingsAdvancedMachineFeatures].
  /// [threadsPerCore] The number of threads per core. The value of this flag can be 1 or 2. To disable SMT, set this flag to 1. Only available in Cloud SQL for SQL Server instances. See [smt](https://cloud.google.com/sql/docs/sqlserver/create-instance#smt-create-instance) for more details.
  DatabaseInstanceSettingsAdvancedMachineFeatures({
    this.threadsPerCore,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final threadsPerCoreValue = threadsPerCore;
    if (threadsPerCoreValue != null) {
      map['threadsPerCore'] = threadsPerCoreValue;
    }
    return map;
  }

  factory DatabaseInstanceSettingsAdvancedMachineFeatures.fromMap(
      Map<String, dynamic> map) {
    return DatabaseInstanceSettingsAdvancedMachineFeatures(
      threadsPerCore:
          map['threadsPerCore'] == null ? null : map['threadsPerCore'] as int,
    );
  }
}
