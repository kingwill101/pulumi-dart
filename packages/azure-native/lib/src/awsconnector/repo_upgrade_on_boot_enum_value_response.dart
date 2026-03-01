// ignore_for_file: unused_element, unnecessary_cast


/// Definition of RepoUpgradeOnBootEnumValue
class RepoUpgradeOnBootEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [RepoUpgradeOnBootEnumValueResponse].
  /// [value] Property value
  RepoUpgradeOnBootEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory RepoUpgradeOnBootEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return RepoUpgradeOnBootEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

