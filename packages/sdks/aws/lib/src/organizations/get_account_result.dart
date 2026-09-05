// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAccount.
class GetAccountResult {
  final String? accountId;
  /// ARN of the organization.
  final String? arn;
  /// Email address of the owner assigned to the new member account.
  final String? email;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Method by which the account joined the organization.
  final String? joinedMethod;
  /// Date the account became a part of the organization.
  final String? joinedTimestamp;
  /// Friendly name for the member account.
  final String? name;
  /// Parent Organizational Unit ID or Root ID for the account.
  final String? parentId;
  /// State of the account in the organization.
  final String? state;
  /// Map of tags for the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetAccountResult].
  /// [accountId] Optional.
  /// [arn] ARN of the organization.
  /// [email] Email address of the owner assigned to the new member account.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [joinedMethod] Method by which the account joined the organization.
  /// [joinedTimestamp] Date the account became a part of the organization.
  /// [name] Friendly name for the member account.
  /// [parentId] Parent Organizational Unit ID or Root ID for the account.
  /// [state] State of the account in the organization.
  /// [tags] Map of tags for the resource.
  const GetAccountResult({
    this.accountId,
    this.arn,
    this.email,
    this.id,
    this.joinedMethod,
    this.joinedTimestamp,
    this.name,
    this.parentId,
    this.state,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'arn': ?arn,
      'email': ?email,
      'id': ?id,
      'joinedMethod': ?joinedMethod,
      'joinedTimestamp': ?joinedTimestamp,
      'name': ?name,
      'parentId': ?parentId,
      'state': ?state,
      'tags': ?tags,
    };
  }

  factory GetAccountResult.fromMap(Map<String, dynamic> map) {
    return GetAccountResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      joinedMethod: (() { final guardedValue = map['joinedMethod']; if (guardedValue == null) return null; return guardedValue as String; })(),
      joinedTimestamp: (() { final guardedValue = map['joinedTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parentId: (() { final guardedValue = map['parentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
