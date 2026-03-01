// ignore_for_file: unused_element, unnecessary_cast


/// Management resource preference to link device.
class ManagementResourcePreferences {
  /// Customer preferred Management resource ARM ID.
  final String? preferredManagementResourceId;

  /// Creates a new [ManagementResourcePreferences].
  /// [preferredManagementResourceId] Customer preferred Management resource ARM ID.
  ManagementResourcePreferences({
    this.preferredManagementResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preferredManagementResourceId': ?preferredManagementResourceId,
    };
  }

  factory ManagementResourcePreferences.fromMap(Map<String, dynamic> map) {
    return ManagementResourcePreferences(
      preferredManagementResourceId: map['preferredManagementResourceId'] == null ? null : map['preferredManagementResourceId'] as String,
    );
  }
}

