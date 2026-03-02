// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_file_share_hydration_profile.dart';

/// Class for automation artifact.
class AutomationArtifact {
  /// Gets or sets the artifacts.
  final pulumi.Input<Map<String, String>>? artifacts;
  /// Azure file share profile for hydration of application folders not mounted on
  /// the container file system.
  final pulumi.Input<AzureFileShareHydrationProfile>? azureFileShareProfile;
  /// Gets or sets the status of automation artifacts.
  final pulumi.Input<String>? status;

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
      'azureFileShareProfile': ?pulumi.Input.mapOptionalInputValue<AzureFileShareHydrationProfile, Map<String, dynamic>>(azureFileShareProfile, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory AutomationArtifact.fromMap(Map<String, dynamic> map) {
    return AutomationArtifact(
      artifacts: map['artifacts'] == null ? null : ((map['artifacts']! as Map).cast<String, String>()).input(),
      azureFileShareProfile: map['azureFileShareProfile'] == null ? null : (AzureFileShareHydrationProfile.fromMap((map['azureFileShareProfile']! as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

