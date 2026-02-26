// ignore_for_file: unused_element, unnecessary_cast

class GetDataSetPermission {
  final List<String> actions;
  final String principal;

  GetDataSetPermission({
    required this.actions,
    required this.principal,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actions'] = actions;
    map['principal'] = principal;
    return map;
  }

  factory GetDataSetPermission.fromMap(Map<String, dynamic> map) {
    return GetDataSetPermission(
      actions: (map['actions'] as List).cast<String>(),
      principal: map['principal'] as String,
    );
  }
}
