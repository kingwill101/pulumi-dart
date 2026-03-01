// ignore_for_file: unused_element, unnecessary_cast


/// This is the executed Validation.
class ExecutedValidationResponse {
  /// This property specifies the starting timestamp.
  final String? executionTime;
  /// This property specifies the status of the validationProfile of the image version.
  final String status;
  /// This property specifies the type of image version validation.
  final String? type;
  /// This property specifies the valid version of the validation.
  final String? version;

  /// Creates a new [ExecutedValidationResponse].
  /// [executionTime] This property specifies the starting timestamp.
  /// [status] This property specifies the status of the validationProfile of the image version.
  /// [type] This property specifies the type of image version validation.
  /// [version] This property specifies the valid version of the validation.
  ExecutedValidationResponse({
    this.executionTime,
    required this.status,
    this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executionTime': ?executionTime,
      'status': status,
      'type': ?type,
      'version': ?version,
    };
  }

  factory ExecutedValidationResponse.fromMap(Map<String, dynamic> map) {
    return ExecutedValidationResponse(
      executionTime: map['executionTime'] == null ? null : map['executionTime'] as String,
      status: map['status'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

