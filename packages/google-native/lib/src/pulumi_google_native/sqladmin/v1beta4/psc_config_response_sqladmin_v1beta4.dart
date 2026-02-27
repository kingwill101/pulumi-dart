// ignore_for_file: unused_element, unnecessary_cast

/// PSC settings for a Cloud SQL instance.
class PscConfigResponseSqladminV1beta4 {
  /// Optional. The list of consumer projects that are allow-listed for PSC connections to this instance. This instance can be connected to with PSC from any network in these projects. Each consumer project in this list may be represented by a project number (numeric) or by a project id (alphanumeric).
  final List<String> allowedConsumerProjects;

  /// Whether PSC connectivity is enabled for this instance.
  final bool pscEnabled;

  PscConfigResponseSqladminV1beta4({
    required this.allowedConsumerProjects,
    required this.pscEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowedConsumerProjects'] = allowedConsumerProjects;
    map['pscEnabled'] = pscEnabled;
    return map;
  }

  factory PscConfigResponseSqladminV1beta4.fromMap(Map<String, dynamic> map) {
    return PscConfigResponseSqladminV1beta4(
      allowedConsumerProjects:
          (map['allowedConsumerProjects'] as List).cast<String>(),
      pscEnabled: map['pscEnabled'] as bool,
    );
  }
}
