// ignore_for_file: unused_element, unnecessary_cast

class GetOrganizationalUnitsChild {
  /// ARN of the organizational unit
  final String arn;

  /// Parent identifier of the organizational units.
  final String id;

  /// Name of the organizational unit
  final String name;

  GetOrganizationalUnitsChild({
    required this.arn,
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['id'] = id;
    map['name'] = name;
    return map;
  }

  factory GetOrganizationalUnitsChild.fromMap(Map<String, dynamic> map) {
    return GetOrganizationalUnitsChild(
      arn: map['arn'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }
}
