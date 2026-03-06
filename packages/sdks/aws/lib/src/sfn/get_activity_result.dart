// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getActivity.
class GetActivityResult {
  final String arn;
  /// Date the activity was created.
  final String creationDate;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String region;

  /// Creates a new [GetActivityResult].
  /// [arn] Required.
  /// [creationDate] Date the activity was created.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [region] Required.
  const GetActivityResult({
    required this.arn,
    required this.creationDate,
    required this.id,
    required this.name,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'creationDate': creationDate,
      'id': id,
      'name': name,
      'region': region,
    };
  }

  factory GetActivityResult.fromMap(Map<String, dynamic> map) {
    return GetActivityResult(
      arn: map['arn'] as String,
      creationDate: map['creationDate'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
    );
  }
}

