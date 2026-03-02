// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Management resource preference to link device.
class ManagementResourcePreferences {
  /// Customer preferred Management resource ARM ID.
  final pulumi.Input<String>? preferredManagementResourceId;

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
      preferredManagementResourceId: map['preferredManagementResourceId'] == null ? null : (map['preferredManagementResourceId'] as String).input(),
    );
  }
}

