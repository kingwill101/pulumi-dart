// ignore_for_file: unused_element, unnecessary_cast


class GetQuicksightAnalysisPermission {
  final List<String> actions;
  final String principal;

  /// Creates a new [GetQuicksightAnalysisPermission].
  /// [actions] Required.
  /// [principal] Required.
  GetQuicksightAnalysisPermission({
    required this.actions,
    required this.principal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': actions,
      'principal': principal,
    };
  }

  factory GetQuicksightAnalysisPermission.fromMap(Map<String, dynamic> map) {
    return GetQuicksightAnalysisPermission(
      actions: (map['actions'] as List).cast<String>(),
      principal: map['principal'] as String,
    );
  }
}

