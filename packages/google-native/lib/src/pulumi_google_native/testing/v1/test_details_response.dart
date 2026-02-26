// ignore_for_file: unused_element, unnecessary_cast

/// Additional details about the progress of the running test.
class TestDetailsResponse {
  /// If the TestState is ERROR, then this string will contain human-readable details about the error.
  final String errorMessage;

  /// Human-readable, detailed descriptions of the test's progress. For example: "Provisioning a device", "Starting Test". During the course of execution new data may be appended to the end of progress_messages.
  final List<String> progressMessages;

  TestDetailsResponse({
    required this.errorMessage,
    required this.progressMessages,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['errorMessage'] = errorMessage;
    map['progressMessages'] = progressMessages;
    return map;
  }

  factory TestDetailsResponse.fromMap(Map<String, dynamic> map) {
    return TestDetailsResponse(
      errorMessage: map['errorMessage'] as String,
      progressMessages: (map['progressMessages'] as List).cast<String>(),
    );
  }
}
