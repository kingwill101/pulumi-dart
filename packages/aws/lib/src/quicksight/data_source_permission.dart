// ignore_for_file: unused_element, unnecessary_cast


class DataSourcePermission {
  /// Set of IAM actions to grant or revoke permissions on. Max of 16 items.
  final List<String> actions;
  /// The Amazon Resource Name (ARN) of the principal.
  final String principal;

  /// Creates a new [DataSourcePermission].
  /// [actions] Set of IAM actions to grant or revoke permissions on. Max of 16 items.
  /// [principal] The Amazon Resource Name (ARN) of the principal.
  DataSourcePermission({
    required this.actions,
    required this.principal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': actions,
      'principal': principal,
    };
  }

  factory DataSourcePermission.fromMap(Map<String, dynamic> map) {
    return DataSourcePermission(
      actions: (map['actions'] as List).cast<String>(),
      principal: map['principal'] as String,
    );
  }
}

