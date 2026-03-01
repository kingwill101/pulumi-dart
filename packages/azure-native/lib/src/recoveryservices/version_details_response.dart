// ignore_for_file: unused_element, unnecessary_cast


/// Version related details.
class VersionDetailsResponse {
  /// Version expiry date.
  final String? expiryDate;
  /// A value indicating whether security update required.
  final String? status;
  /// The agent version.
  final String? version;

  /// Creates a new [VersionDetailsResponse].
  /// [expiryDate] Version expiry date.
  /// [status] A value indicating whether security update required.
  /// [version] The agent version.
  VersionDetailsResponse({
    this.expiryDate,
    this.status,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expiryDate': ?expiryDate,
      'status': ?status,
      'version': ?version,
    };
  }

  factory VersionDetailsResponse.fromMap(Map<String, dynamic> map) {
    return VersionDetailsResponse(
      expiryDate: map['expiryDate'] == null ? null : map['expiryDate'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

