// ignore_for_file: unused_element, unnecessary_cast


/// Details of the last operations performed on the resource
class LastOperationPropertiesResponse {
  /// Details status of the last operation performed on the resource.
  final String details;

  /// Creates a new [LastOperationPropertiesResponse].
  /// [details] Details status of the last operation performed on the resource.
  LastOperationPropertiesResponse({
    required this.details,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': details,
    };
  }

  factory LastOperationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return LastOperationPropertiesResponse(
      details: map['details'] as String,
    );
  }
}

