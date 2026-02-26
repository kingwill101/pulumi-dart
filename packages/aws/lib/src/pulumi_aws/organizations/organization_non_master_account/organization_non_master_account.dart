// ignore_for_file: unused_element, unnecessary_cast

class OrganizationNonMasterAccount {
  /// ARN of the root.
  final String? arn;

  /// Email of the account.
  final String? email;

  /// Identifier of the root.
  final String? id;

  /// Method by which the account joined the organization.
  final String? joinedMethod;

  /// Date the account became a part of the organization.
  final String? joinedTimestamp;

  /// Name of the policy type.
  final String? name;

  /// State of the account.
  final String? state;

  /// Status of the policy type as it relates to the associated root.
  final String? status;

  OrganizationNonMasterAccount({
    this.arn,
    this.email,
    this.id,
    this.joinedMethod,
    this.joinedTimestamp,
    this.name,
    this.state,
    this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final arnValue = arn;
    if (arnValue != null) {
      map['arn'] = arnValue;
    }
    final emailValue = email;
    if (emailValue != null) {
      map['email'] = emailValue;
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final joinedMethodValue = joinedMethod;
    if (joinedMethodValue != null) {
      map['joinedMethod'] = joinedMethodValue;
    }
    final joinedTimestampValue = joinedTimestamp;
    if (joinedTimestampValue != null) {
      map['joinedTimestamp'] = joinedTimestampValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    return map;
  }

  factory OrganizationNonMasterAccount.fromMap(Map<String, dynamic> map) {
    return OrganizationNonMasterAccount(
      arn: map['arn'] == null ? null : map['arn'] as String,
      email: map['email'] == null ? null : map['email'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      joinedMethod:
          map['joinedMethod'] == null ? null : map['joinedMethod'] as String,
      joinedTimestamp: map['joinedTimestamp'] == null
          ? null
          : map['joinedTimestamp'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
