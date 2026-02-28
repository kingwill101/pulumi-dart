// ignore_for_file: unused_element, unnecessary_cast


class TemplatePermission {
  /// List of IAM actions to grant or revoke permissions on.
  final List<String> actions;
  /// ARN of the principal. See the [ResourcePermission documentation](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_ResourcePermission.html) for the applicable ARN values.
  final String principal;

  /// Creates a new [TemplatePermission].
  /// [actions] List of IAM actions to grant or revoke permissions on.
  /// [principal] ARN of the principal. See the [ResourcePermission documentation](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_ResourcePermission.html) for the applicable ARN values.
  TemplatePermission({
    required this.actions,
    required this.principal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': actions,
      'principal': principal,
    };
  }

  factory TemplatePermission.fromMap(Map<String, dynamic> map) {
    return TemplatePermission(
      actions: (map['actions'] as List).cast<String>(),
      principal: map['principal'] as String,
    );
  }
}

