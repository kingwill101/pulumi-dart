// ignore_for_file: unused_element, unnecessary_cast


/// An indication of AML file system health. Gives more information about health than just that related to provisioning.
class AmlFilesystemHealthResponse {
  /// List of AML file system health states.
  final String? state;
  /// Server-defined error code for the AML file system health
  final String? statusCode;
  /// Describes the health state.
  final String? statusDescription;

  /// Creates a new [AmlFilesystemHealthResponse].
  /// [state] List of AML file system health states.
  /// [statusCode] Server-defined error code for the AML file system health
  /// [statusDescription] Describes the health state.
  AmlFilesystemHealthResponse({
    this.state,
    this.statusCode,
    this.statusDescription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
      'statusCode': ?statusCode,
      'statusDescription': ?statusDescription,
    };
  }

  factory AmlFilesystemHealthResponse.fromMap(Map<String, dynamic> map) {
    return AmlFilesystemHealthResponse(
      state: map['state'] == null ? null : map['state'] as String,
      statusCode: map['statusCode'] == null ? null : map['statusCode'] as String,
      statusDescription: map['statusDescription'] == null ? null : map['statusDescription'] as String,
    );
  }
}

