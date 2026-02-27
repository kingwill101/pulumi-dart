// ignore_for_file: unused_element, unnecessary_cast

/// PSC settings for a Cloud SQL instance.
class PscConfigSqladminV1 {
  /// Optional. The list of consumer projects that are allow-listed for PSC connections to this instance. This instance can be connected to with PSC from any network in these projects. Each consumer project in this list may be represented by a project number (numeric) or by a project id (alphanumeric).
  final List<String>? allowedConsumerProjects;

  /// Whether PSC connectivity is enabled for this instance.
  final bool? pscEnabled;

  PscConfigSqladminV1({
    this.allowedConsumerProjects,
    this.pscEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedConsumerProjectsValue = allowedConsumerProjects;
    if (allowedConsumerProjectsValue != null) {
      map['allowedConsumerProjects'] = allowedConsumerProjectsValue;
    }
    final pscEnabledValue = pscEnabled;
    if (pscEnabledValue != null) {
      map['pscEnabled'] = pscEnabledValue;
    }
    return map;
  }

  factory PscConfigSqladminV1.fromMap(Map<String, dynamic> map) {
    return PscConfigSqladminV1(
      allowedConsumerProjects: map['allowedConsumerProjects'] == null
          ? null
          : (map['allowedConsumerProjects'] as List).cast<String>(),
      pscEnabled: map['pscEnabled'] == null ? null : map['pscEnabled'] as bool,
    );
  }
}
