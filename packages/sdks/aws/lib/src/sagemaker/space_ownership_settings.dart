// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpaceOwnershipSettings {
  /// The user profile who is the owner of the private space.
  final pulumi.Input<String> ownerUserProfileName;

  /// Creates a new [SpaceOwnershipSettings].
  /// [ownerUserProfileName] The user profile who is the owner of the private space.
  SpaceOwnershipSettings({
    required this.ownerUserProfileName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ownerUserProfileName': ownerUserProfileName,
    };
  }

  factory SpaceOwnershipSettings.fromMap(Map<String, dynamic> map) {
    return SpaceOwnershipSettings(
      ownerUserProfileName: pulumi.Input.fromValue(map['ownerUserProfileName'] as String),
    );
  }
}

