// ignore_for_file: unused_element, unnecessary_cast

/// A restriction for a specific service and optionally one or multiple specific methods. Both fields are case insensitive.
class ApiTargetResponse {
  /// Optional. List of one or more methods that can be called. If empty, all methods for the service are allowed. A wildcard (*) can be used as the last symbol. Valid examples: `google.cloud.translate.v2.TranslateService.GetSupportedLanguage` `TranslateText` `Get*` `translate.googleapis.com.Get*`
  final List<String> methods;

  /// The service for this restriction. It should be the canonical service name, for example: `translate.googleapis.com`. You can use [`gcloud services list`](/sdk/gcloud/reference/services/list) to get a list of services that are enabled in the project.
  final String service;

  /// Creates a new [ApiTargetResponse].
  /// [methods] Optional. List of one or more methods that can be called. If empty, all methods for the service are allowed. A wildcard (*) can be used as the last symbol. Valid examples: `google.cloud.translate.v2.TranslateService.GetSupportedLanguage` `TranslateText` `Get*` `translate.googleapis.com.Get*`
  /// [service] The service for this restriction. It should be the canonical service name, for example: `translate.googleapis.com`. You can use [`gcloud services list`](/sdk/gcloud/reference/services/list) to get a list of services that are enabled in the project.
  ApiTargetResponse({required this.methods, required this.service});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'methods': methods, 'service': service};
  }

  factory ApiTargetResponse.fromMap(Map<String, dynamic> map) {
    return ApiTargetResponse(
      methods: (map['methods'] as List).cast<String>(),
      service: map['service'] as String,
    );
  }
}
