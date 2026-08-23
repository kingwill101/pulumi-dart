// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Provides details of the entity that created/updated the workspace.
class CreatedByResponse {
  /// The application ID of the application that initiated the creation of the workspace. For example, Azure Portal.
  final pulumi.Input<String> applicationId;
  /// The Object ID that created the workspace.
  final pulumi.Input<String> oid;
  /// The Personal Object ID corresponding to the object ID above
  final pulumi.Input<String> puid;

  /// Creates a new [CreatedByResponse].
  /// [applicationId] The application ID of the application that initiated the creation of the workspace. For example, Azure Portal.
  /// [oid] The Object ID that created the workspace.
  /// [puid] The Personal Object ID corresponding to the object ID above
  const CreatedByResponse({
    required this.applicationId,
    required this.oid,
    required this.puid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'oid': oid,
      'puid': puid,
    };
  }

  factory CreatedByResponse.fromMap(Map<String, dynamic> map) {
    return CreatedByResponse(
      applicationId: pulumi.Input.fromValue(map['applicationId'] as String),
      oid: pulumi.Input.fromValue(map['oid'] as String),
      puid: pulumi.Input.fromValue(map['puid'] as String),
    );
  }
}
