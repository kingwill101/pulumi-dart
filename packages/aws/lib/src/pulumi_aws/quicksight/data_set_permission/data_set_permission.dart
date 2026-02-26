// ignore_for_file: unused_element, unnecessary_cast

class DataSetPermission {
  /// List of IAM actions to grant or revoke permissions on.
  final List<String> actions;

  /// ARN of the principal. See the [ResourcePermission documentation](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_ResourcePermission.html) for the applicable ARN values.
  final String principal;

  DataSetPermission({
    required this.actions,
    required this.principal,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actions'] = actions;
    map['principal'] = principal;
    return map;
  }

  factory DataSetPermission.fromMap(Map<String, dynamic> map) {
    return DataSetPermission(
      actions: (map['actions'] as List).cast<String>(),
      principal: map['principal'] as String,
    );
  }
}
