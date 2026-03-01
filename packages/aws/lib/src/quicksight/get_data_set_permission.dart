// ignore_for_file: unused_element, unnecessary_cast

class GetDataSetPermission {
  final List<String> actions;
  final String principal;

  /// Creates a new [GetDataSetPermission].
  /// [actions] Required.
  /// [principal] Required.
  GetDataSetPermission({required this.actions, required this.principal});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'actions': actions, 'principal': principal};
  }

  factory GetDataSetPermission.fromMap(Map<String, dynamic> map) {
    return GetDataSetPermission(
      actions: (map['actions'] as List).cast<String>(),
      principal: map['principal'] as String,
    );
  }
}
