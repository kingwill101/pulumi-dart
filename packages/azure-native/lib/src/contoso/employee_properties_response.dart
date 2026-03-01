// ignore_for_file: unused_element, unnecessary_cast


/// Employee properties
class EmployeePropertiesResponse {
  /// Age of employee
  final int? age;
  /// City of employee
  final String? city;
  /// Profile of employee
  final String? profile;
  /// The status of the last operation.
  final String provisioningState;

  /// Creates a new [EmployeePropertiesResponse].
  /// [age] Age of employee
  /// [city] City of employee
  /// [profile] Profile of employee
  /// [provisioningState] The status of the last operation.
  EmployeePropertiesResponse({
    this.age,
    this.city,
    this.profile,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'age': ?age,
      'city': ?city,
      'profile': ?profile,
      'provisioningState': provisioningState,
    };
  }

  factory EmployeePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EmployeePropertiesResponse(
      age: map['age'] == null ? null : map['age'] as int,
      city: map['city'] == null ? null : map['city'] as String,
      profile: map['profile'] == null ? null : map['profile'] as String,
      provisioningState: map['provisioningState'] as String,
    );
  }
}

