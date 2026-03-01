// ignore_for_file: unused_element, unnecessary_cast


/// Definition of SoftwareUpdateOptions
class SoftwareUpdateOptionsResponse {
  /// <p>Whether automatic service software updates are enabled for the domain.</p>
  final bool? autoSoftwareUpdateEnabled;

  /// Creates a new [SoftwareUpdateOptionsResponse].
  /// [autoSoftwareUpdateEnabled] <p>Whether automatic service software updates are enabled for the domain.</p>
  SoftwareUpdateOptionsResponse({
    this.autoSoftwareUpdateEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoSoftwareUpdateEnabled': ?autoSoftwareUpdateEnabled,
    };
  }

  factory SoftwareUpdateOptionsResponse.fromMap(Map<String, dynamic> map) {
    return SoftwareUpdateOptionsResponse(
      autoSoftwareUpdateEnabled: map['autoSoftwareUpdateEnabled'] == null ? null : map['autoSoftwareUpdateEnabled'] as bool,
    );
  }
}

