// ignore_for_file: unused_element, unnecessary_cast


/// Definition of DeploymentStatusEnumValue
class DeploymentStatusEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [DeploymentStatusEnumValueResponse].
  /// [value] Property value
  DeploymentStatusEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory DeploymentStatusEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentStatusEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

