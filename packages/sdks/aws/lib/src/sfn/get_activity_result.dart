// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getActivity.
class GetActivityResult {
  final String? arn;
  /// Date the activity was created.
  final String? creationDate;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? region;

  /// Creates a new [GetActivityResult].
  /// [arn] Optional.
  /// [creationDate] Date the activity was created.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [region] Optional.
  const GetActivityResult({
    this.arn,
    this.creationDate,
    this.id,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'creationDate': ?creationDate,
      'id': ?id,
      'name': ?name,
      'region': ?region,
    };
  }

  factory GetActivityResult.fromMap(Map<String, dynamic> map) {
    return GetActivityResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationDate: (() { final guardedValue = map['creationDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
