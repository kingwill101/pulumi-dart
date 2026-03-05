// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getApplication.
class GetApplicationResult {
  /// ARN of the Application.
  final String arn;

  /// Description of the Application.
  final String description;
  final String id;
  final String name;
  final String region;

  /// Creates a new [GetApplicationResult].
  /// [arn] ARN of the Application.
  /// [description] Description of the Application.
  /// [id] Required.
  /// [name] Required.
  /// [region] Required.
  GetApplicationResult({
    required this.arn,
    required this.description,
    required this.id,
    required this.name,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'description': description,
      'id': id,
      'name': name,
      'region': region,
    };
  }

  factory GetApplicationResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationResult(
      arn: map['arn'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
    );
  }
}
