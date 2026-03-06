// ignore_for_file: unused_element, unnecessary_cast

import 'get_application_appversion_lifecycle.dart';

/// Result data returned by getApplication.
class GetApplicationResult {
  final GetApplicationAppversionLifecycle appversionLifecycle;
  /// ARN of the application.
  final String arn;
  /// Short description of the application
  final String description;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String region;

  /// Creates a new [GetApplicationResult].
  /// [appversionLifecycle] Required.
  /// [arn] ARN of the application.
  /// [description] Short description of the application
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [region] Required.
  const GetApplicationResult({
    required this.appversionLifecycle,
    required this.arn,
    required this.description,
    required this.id,
    required this.name,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appversionLifecycle': appversionLifecycle.toMap(),
      'arn': arn,
      'description': description,
      'id': id,
      'name': name,
      'region': region,
    };
  }

  factory GetApplicationResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationResult(
      appversionLifecycle: GetApplicationAppversionLifecycle.fromMap((map['appversionLifecycle']! as Map).cast<String, dynamic>()),
      arn: map['arn'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
    );
  }
}

