// ignore_for_file: unused_element, unnecessary_cast

import 'get_application_appversion_lifecycle.dart';

/// Result data returned by getApplication.
class GetApplicationResult {
  final GetApplicationAppversionLifecycle? appversionLifecycle;
  /// ARN of the application.
  final String? arn;
  /// Short description of the application
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? region;

  /// Creates a new [GetApplicationResult].
  /// [appversionLifecycle] Optional.
  /// [arn] ARN of the application.
  /// [description] Short description of the application
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [region] Optional.
  const GetApplicationResult({
    this.appversionLifecycle,
    this.arn,
    this.description,
    this.id,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appversionLifecycle': ?appversionLifecycle?.toMap(),
      'arn': ?arn,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'region': ?region,
    };
  }

  factory GetApplicationResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationResult(
      appversionLifecycle: (() { final guardedValue = map['appversionLifecycle']; if (guardedValue == null) return null; return GetApplicationAppversionLifecycle.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
