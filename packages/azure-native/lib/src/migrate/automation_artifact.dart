// ignore_for_file: unused_element, unnecessary_cast

import 'azure_file_share_hydration_profile.dart';

/// Class for automation artifact.
class AutomationArtifact {
  /// Gets or sets the artifacts.
  final Map<String, String>? artifacts;
  /// Azure file share profile for hydration of application folders not mounted on
  /// the container file system.
  final AzureFileShareHydrationProfile? azureFileShareProfile;
  /// Gets or sets the status of automation artifacts.
  final String? status;

  /// Creates a new [AutomationArtifact].
  /// [artifacts] Gets or sets the artifacts.
  /// [azureFileShareProfile] Azure file share profile for hydration of application folders not mounted on
  /// [status] Gets or sets the status of automation artifacts.
  AutomationArtifact({
    this.artifacts,
    this.azureFileShareProfile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifacts': ?artifacts,
      'azureFileShareProfile': ?azureFileShareProfile == null ? null : azureFileShareProfile!.toMap(),
      'status': ?status,
    };
  }

  factory AutomationArtifact.fromMap(Map<String, dynamic> map) {
    return AutomationArtifact(
      artifacts: map['artifacts'] == null ? null : (map['artifacts'] as Map).cast<String, String>(),
      azureFileShareProfile: map['azureFileShareProfile'] == null ? null : AzureFileShareHydrationProfile.fromMap((map['azureFileShareProfile'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

