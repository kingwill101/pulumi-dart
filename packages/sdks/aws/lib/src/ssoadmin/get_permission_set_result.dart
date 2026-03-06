// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPermissionSet.
class GetPermissionSetResult {
  final String arn;
  final String createdDate;
  /// Description of the Permission Set.
  final String description;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instanceArn;
  final String name;
  final String region;
  /// Relay state URL used to redirect users within the application during the federation authentication process.
  final String relayState;
  /// Length of time that the application user sessions are valid in the ISO-8601 standard.
  final String sessionDuration;
  /// Key-value map of resource tags.
  final Map<String, String> tags;

  /// Creates a new [GetPermissionSetResult].
  /// [arn] Required.
  /// [createdDate] Required.
  /// [description] Description of the Permission Set.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceArn] Required.
  /// [name] Required.
  /// [region] Required.
  /// [relayState] Relay state URL used to redirect users within the application during the federation authentication process.
  /// [sessionDuration] Length of time that the application user sessions are valid in the ISO-8601 standard.
  /// [tags] Key-value map of resource tags.
  const GetPermissionSetResult({
    required this.arn,
    required this.createdDate,
    required this.description,
    required this.id,
    required this.instanceArn,
    required this.name,
    required this.region,
    required this.relayState,
    required this.sessionDuration,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'createdDate': createdDate,
      'description': description,
      'id': id,
      'instanceArn': instanceArn,
      'name': name,
      'region': region,
      'relayState': relayState,
      'sessionDuration': sessionDuration,
      'tags': tags,
    };
  }

  factory GetPermissionSetResult.fromMap(Map<String, dynamic> map) {
    return GetPermissionSetResult(
      arn: map['arn'] as String,
      createdDate: map['createdDate'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      instanceArn: map['instanceArn'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      relayState: map['relayState'] as String,
      sessionDuration: map['sessionDuration'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

