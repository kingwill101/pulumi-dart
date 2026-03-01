// ignore_for_file: unused_element, unnecessary_cast

import 'appliance_version_response.dart';

/// Holds informatiom about the available versions for upgrade.
class AvailableUpdatesResponse {
  /// The latest version for in place update. The current appliance can be updated to this version using the API or m4c CLI.
  final ApplianceVersionResponse inPlaceUpdate;

  /// The newest deployable version of the appliance. The current appliance can't be updated into this version, and the owner must manually deploy this OVA to a new appliance.
  final ApplianceVersionResponse newDeployableAppliance;

  /// Creates a new [AvailableUpdatesResponse].
  /// [inPlaceUpdate] The latest version for in place update. The current appliance can be updated to this version using the API or m4c CLI.
  /// [newDeployableAppliance] The newest deployable version of the appliance. The current appliance can't be updated into this version, and the owner must manually deploy this OVA to a new appliance.
  AvailableUpdatesResponse({
    required this.inPlaceUpdate,
    required this.newDeployableAppliance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inPlaceUpdate': inPlaceUpdate.toMap(),
      'newDeployableAppliance': newDeployableAppliance.toMap(),
    };
  }

  factory AvailableUpdatesResponse.fromMap(Map<String, dynamic> map) {
    return AvailableUpdatesResponse(
      inPlaceUpdate: ApplianceVersionResponse.fromMap(
        (map['inPlaceUpdate'] as Map).cast<String, dynamic>(),
      ),
      newDeployableAppliance: ApplianceVersionResponse.fromMap(
        (map['newDeployableAppliance'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
