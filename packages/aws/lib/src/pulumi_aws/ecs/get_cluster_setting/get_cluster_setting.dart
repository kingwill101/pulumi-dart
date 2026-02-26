// ignore_for_file: unused_element, unnecessary_cast

class GetClusterSetting {
  final String name;
  final String value;

  GetClusterSetting({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory GetClusterSetting.fromMap(Map<String, dynamic> map) {
    return GetClusterSetting(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
