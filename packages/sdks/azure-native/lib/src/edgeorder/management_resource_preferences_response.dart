// ignore_for_file: unused_element, unnecessary_cast


/// Management resource preference to link device.
class ManagementResourcePreferencesResponse {
  /// Customer preferred Management resource ARM ID.
  final String? preferredManagementResourceId;

  /// Creates a new [ManagementResourcePreferencesResponse].
  /// [preferredManagementResourceId] Customer preferred Management resource ARM ID.
  ManagementResourcePreferencesResponse({
    this.preferredManagementResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preferredManagementResourceId': ?preferredManagementResourceId,
    };
  }

  factory ManagementResourcePreferencesResponse.fromMap(Map<String, dynamic> map) {
    return ManagementResourcePreferencesResponse(
      preferredManagementResourceId: map['preferredManagementResourceId'] == null ? null : map['preferredManagementResourceId'] as String,
    );
  }
}

