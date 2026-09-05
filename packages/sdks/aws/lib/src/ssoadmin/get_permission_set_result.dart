// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPermissionSet.
class GetPermissionSetResult {
  final String? arn;
  final String? createdDate;
  /// Description of the Permission Set.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? instanceArn;
  final String? name;
  final String? region;
  /// Relay state URL used to redirect users within the application during the federation authentication process.
  final String? relayState;
  /// Length of time that the application user sessions are valid in the ISO-8601 standard.
  final String? sessionDuration;
  /// Key-value map of resource tags.
  final Map<String, String>? tags;

  /// Creates a new [GetPermissionSetResult].
  /// [arn] Optional.
  /// [createdDate] Optional.
  /// [description] Description of the Permission Set.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceArn] Optional.
  /// [name] Optional.
  /// [region] Optional.
  /// [relayState] Relay state URL used to redirect users within the application during the federation authentication process.
  /// [sessionDuration] Length of time that the application user sessions are valid in the ISO-8601 standard.
  /// [tags] Key-value map of resource tags.
  const GetPermissionSetResult({
    this.arn,
    this.createdDate,
    this.description,
    this.id,
    this.instanceArn,
    this.name,
    this.region,
    this.relayState,
    this.sessionDuration,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createdDate': ?createdDate,
      'description': ?description,
      'id': ?id,
      'instanceArn': ?instanceArn,
      'name': ?name,
      'region': ?region,
      'relayState': ?relayState,
      'sessionDuration': ?sessionDuration,
      'tags': ?tags,
    };
  }

  factory GetPermissionSetResult.fromMap(Map<String, dynamic> map) {
    return GetPermissionSetResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdDate: (() { final guardedValue = map['createdDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceArn: (() { final guardedValue = map['instanceArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      relayState: (() { final guardedValue = map['relayState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sessionDuration: (() { final guardedValue = map['sessionDuration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
