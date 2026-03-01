// ignore_for_file: unused_element, unnecessary_cast


class AnalysisPermission {
  /// List of IAM actions to grant or revoke permissions on.
  final List<String> actions;
  /// ARN of the principal. See the [ResourcePermission documentation](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_ResourcePermission.html) for the applicable ARN values.
  final String principal;

  /// Creates a new [AnalysisPermission].
  /// [actions] List of IAM actions to grant or revoke permissions on.
  /// [principal] ARN of the principal. See the [ResourcePermission documentation](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_ResourcePermission.html) for the applicable ARN values.
  AnalysisPermission({
    required this.actions,
    required this.principal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': actions,
      'principal': principal,
    };
  }

  factory AnalysisPermission.fromMap(Map<String, dynamic> map) {
    return AnalysisPermission(
      actions: (map['actions'] as List).cast<String>(),
      principal: map['principal'] as String,
    );
  }
}

