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
    final map = <String, dynamic>{};
    map['actions'] = actions;
    map['principal'] = principal;
    return map;
  }

  factory GetQuicksightAnalysisPermission.fromMap(Map<String, dynamic> map) {
    return GetQuicksightAnalysisPermission(
      actions: (map['actions'] as List).cast<String>(),
      principal: map['principal'] as String,
    );
  }
}
