// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Management resource preference to link device.
class ManagementResourcePreferencesResponse {
  /// Customer preferred Management resource ARM ID.
  final pulumi.Input<String>? preferredManagementResourceId;

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
      preferredManagementResourceId: (() { final guardedValue = map['preferredManagementResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

