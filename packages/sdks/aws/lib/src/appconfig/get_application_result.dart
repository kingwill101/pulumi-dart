// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getApplication.
class GetApplicationResult {
  /// ARN of the Application.
  final String? arn;
  /// Description of the Application.
  final String? description;
  final String? id;
  final String? name;
  final String? region;

  /// Creates a new [GetApplicationResult].
  /// [arn] ARN of the Application.
  /// [description] Description of the Application.
  /// [id] Optional.
  /// [name] Optional.
  /// [region] Optional.
  const GetApplicationResult({
    this.arn,
    this.description,
    this.id,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'region': ?region,
    };
  }

  factory GetApplicationResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
