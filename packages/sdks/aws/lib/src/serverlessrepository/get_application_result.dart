// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getApplication.
class GetApplicationResult {
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

  /// Creates a new [GetApplicationResult].
  /// [applicationId] ARN of the application.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Name of the application.
  /// [region] Required.
  /// [requiredCapabilities] A list of capabilities describing the permissions needed to deploy the application.
  /// [semanticVersion] Required.
  /// [sourceCodeUrl] URL pointing to the source code of the application version.
  /// [templateUrl] URL pointing to the Cloud Formation template for the application version.
  const GetApplicationResult({
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
    return <String, dynamic>{
      'applicationId': applicationId,
      'id': id,
      'name': name,
      'region': region,
      'requiredCapabilities': requiredCapabilities,
      'semanticVersion': semanticVersion,
      'sourceCodeUrl': sourceCodeUrl,
      'templateUrl': templateUrl,
    };
  }

  factory GetApplicationResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationResult(
      applicationId: map['applicationId'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      requiredCapabilities: (map['requiredCapabilities'] as List).cast<String>(),
      semanticVersion: map['semanticVersion'] as String,
      sourceCodeUrl: map['sourceCodeUrl'] as String,
      templateUrl: map['templateUrl'] as String,
    );
  }
}
