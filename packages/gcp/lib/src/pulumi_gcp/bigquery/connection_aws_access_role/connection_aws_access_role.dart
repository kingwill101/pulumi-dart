// ignore_for_file: unused_element, unnecessary_cast

class ConnectionAwsAccessRole {
  /// The user’s AWS IAM Role that trusts the Google-owned AWS IAM user Connection.
  final String iamRoleId;

  /// (Output)
  /// A unique Google-owned and Google-generated identity for the Connection. This identity will be used to access the user's AWS IAM Role.
  final String? identity;

  ConnectionAwsAccessRole({
    required this.iamRoleId,
    this.identity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['iamRoleId'] = iamRoleId;
    final identityValue = identity;
    if (identityValue != null) {
      map['identity'] = identityValue;
    }
    return map;
  }

  factory ConnectionAwsAccessRole.fromMap(Map<String, dynamic> map) {
    return ConnectionAwsAccessRole(
      iamRoleId: map['iamRoleId'] as String,
      identity: map['identity'] == null ? null : map['identity'] as String,
    );
  }
}
