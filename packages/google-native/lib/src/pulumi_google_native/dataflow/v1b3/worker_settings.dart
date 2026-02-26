// ignore_for_file: unused_element, unnecessary_cast

/// Provides data to pass through to the worker harness.
class WorkerSettings {
  /// The base URL for accessing Google Cloud APIs. When workers access Google Cloud APIs, they logically do so via relative URLs. If this field is specified, it supplies the base URL to use for resolving these relative URLs. The normative algorithm used is defined by RFC 1808, "Relative Uniform Resource Locators". If not specified, the default value is "http://www.googleapis.com/"
  final String? baseUrl;

  /// Whether to send work progress updates to the service.
  final bool? reportingEnabled;

  /// The Cloud Dataflow service path relative to the root URL, for example, "dataflow/v1b3/projects".
  final String? servicePath;

  /// The Shuffle service path relative to the root URL, for example, "shuffle/v1beta1".
  final String? shuffleServicePath;

  /// The prefix of the resources the system should use for temporary storage. The supported resource type is: Google Cloud Storage: storage.googleapis.com/{bucket}/{object} bucket.storage.googleapis.com/{object}
  final String? tempStoragePrefix;

  /// The ID of the worker running this pipeline.
  final String? workerId;

  WorkerSettings({
    this.baseUrl,
    this.reportingEnabled,
    this.servicePath,
    this.shuffleServicePath,
    this.tempStoragePrefix,
    this.workerId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final baseUrlValue = baseUrl;
    if (baseUrlValue != null) {
      map['baseUrl'] = baseUrlValue;
    }
    final reportingEnabledValue = reportingEnabled;
    if (reportingEnabledValue != null) {
      map['reportingEnabled'] = reportingEnabledValue;
    }
    final servicePathValue = servicePath;
    if (servicePathValue != null) {
      map['servicePath'] = servicePathValue;
    }
    final shuffleServicePathValue = shuffleServicePath;
    if (shuffleServicePathValue != null) {
      map['shuffleServicePath'] = shuffleServicePathValue;
    }
    final tempStoragePrefixValue = tempStoragePrefix;
    if (tempStoragePrefixValue != null) {
      map['tempStoragePrefix'] = tempStoragePrefixValue;
    }
    final workerIdValue = workerId;
    if (workerIdValue != null) {
      map['workerId'] = workerIdValue;
    }
    return map;
  }

  factory WorkerSettings.fromMap(Map<String, dynamic> map) {
    return WorkerSettings(
      baseUrl: map['baseUrl'] == null ? null : map['baseUrl'] as String,
      reportingEnabled: map['reportingEnabled'] == null
          ? null
          : map['reportingEnabled'] as bool,
      servicePath:
          map['servicePath'] == null ? null : map['servicePath'] as String,
      shuffleServicePath: map['shuffleServicePath'] == null
          ? null
          : map['shuffleServicePath'] as String,
      tempStoragePrefix: map['tempStoragePrefix'] == null
          ? null
          : map['tempStoragePrefix'] as String,
      workerId: map['workerId'] == null ? null : map['workerId'] as String,
    );
  }
}
