// ignore_for_file: unused_element, unnecessary_cast


class ApiKeyRestrictionsApiTarget {
  /// Optional. List of one or more methods that can be called. If empty, all methods for the service are allowed. A wildcard (*) can be used as the last symbol. Valid examples: `google.cloud.translate.v2.TranslateService.GetSupportedLanguage` `TranslateText` `Get*` `translate.googleapis.com.Get*`
  final List<String>? methods;
  /// The service for this restriction. It should be the canonical service name, for example: `translate.googleapis.com`. You can use `gcloud services list` to get a list of services that are enabled in the project.
  final String service;

  /// Creates a new [ApiKeyRestrictionsApiTarget].
  /// [methods] Optional. List of one or more methods that can be called. If empty, all methods for the service are allowed. A wildcard (*) can be used as the last symbol. Valid examples: `google.cloud.translate.v2.TranslateService.GetSupportedLanguage` `TranslateText` `Get*` `translate.googleapis.com.Get*`
  /// [service] The service for this restriction. It should be the canonical service name, for example: `translate.googleapis.com`. You can use `gcloud services list` to get a list of services that are enabled in the project.
  ApiKeyRestrictionsApiTarget({
    this.methods,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'methods': ?methods,
      'service': service,
    };
  }

  factory ApiKeyRestrictionsApiTarget.fromMap(Map<String, dynamic> map) {
    return ApiKeyRestrictionsApiTarget(
      methods: map['methods'] == null ? null : (map['methods'] as List).cast<String>(),
      service: map['service'] as String,
    );
  }
}

