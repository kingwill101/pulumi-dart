// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ClusterIssueCodeEnumValue
class ClusterIssueCodeEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [ClusterIssueCodeEnumValueResponse].
  /// [value] Property value
  ClusterIssueCodeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ClusterIssueCodeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return ClusterIssueCodeEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

