// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getApplication.
class GetApplicationResult {
  /// ARN of the application.
  final String? applicationId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Name of the application.
  final String? name;
  final String? region;
  /// A list of capabilities describing the permissions needed to deploy the application.
  final List<String>? requiredCapabilities;
  final String? semanticVersion;
  /// URL pointing to the source code of the application version.
  final String? sourceCodeUrl;
  /// URL pointing to the Cloud Formation template for the application version.
  final String? templateUrl;

  /// Creates a new [GetApplicationResult].
  /// [applicationId] ARN of the application.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Name of the application.
  /// [region] Optional.
  /// [requiredCapabilities] A list of capabilities describing the permissions needed to deploy the application.
  /// [semanticVersion] Optional.
  /// [sourceCodeUrl] URL pointing to the source code of the application version.
  /// [templateUrl] URL pointing to the Cloud Formation template for the application version.
  const GetApplicationResult({
    this.applicationId,
    this.id,
    this.name,
    this.region,
    this.requiredCapabilities,
    this.semanticVersion,
    this.sourceCodeUrl,
    this.templateUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'id': ?id,
      'name': ?name,
      'region': ?region,
      'requiredCapabilities': ?requiredCapabilities,
      'semanticVersion': ?semanticVersion,
      'sourceCodeUrl': ?sourceCodeUrl,
      'templateUrl': ?templateUrl,
    };
  }

  factory GetApplicationResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationResult(
      applicationId: (() { final guardedValue = map['applicationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      requiredCapabilities: (() { final guardedValue = map['requiredCapabilities']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      semanticVersion: (() { final guardedValue = map['semanticVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceCodeUrl: (() { final guardedValue = map['sourceCodeUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      templateUrl: (() { final guardedValue = map['templateUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
