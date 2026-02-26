// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getApplication.
class GetApplicationResult3 {
  /// ARN of the application.
  final String applicationId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Name of the application.
  final String name;
  final String region;

  /// A list of capabilities describing the permissions needed to deploy the application.
  final List<String> requiredCapabilities;
  final String semanticVersion;

  /// URL pointing to the source code of the application version.
  final String sourceCodeUrl;

  /// URL pointing to the Cloud Formation template for the application version.
  final String templateUrl;

  GetApplicationResult3({
    required this.applicationId,
    required this.id,
    required this.name,
    required this.region,
    required this.requiredCapabilities,
    required this.semanticVersion,
    required this.sourceCodeUrl,
    required this.templateUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationId'] = applicationId;
    map['id'] = id;
    map['name'] = name;
    map['region'] = region;
    map['requiredCapabilities'] = requiredCapabilities;
    map['semanticVersion'] = semanticVersion;
    map['sourceCodeUrl'] = sourceCodeUrl;
    map['templateUrl'] = templateUrl;
    return map;
  }

  factory GetApplicationResult3.fromMap(Map<String, dynamic> map) {
    return GetApplicationResult3(
      applicationId: map['applicationId'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      requiredCapabilities:
          (map['requiredCapabilities'] as List).cast<String>(),
      semanticVersion: map['semanticVersion'] as String,
      sourceCodeUrl: map['sourceCodeUrl'] as String,
      templateUrl: map['templateUrl'] as String,
    );
  }
}
