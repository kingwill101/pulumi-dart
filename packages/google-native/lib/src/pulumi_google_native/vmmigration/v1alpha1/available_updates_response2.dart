// ignore_for_file: unused_element, unnecessary_cast

import 'appliance_version_response2.dart';

/// Holds informatiom about the available versions for upgrade.
class AvailableUpdatesResponse2 {
  /// The latest version for in place update. The current appliance can be updated to this version using the API or m4c CLI.
  final ApplianceVersionResponse2 inPlaceUpdate;

  /// The newest deployable version of the appliance. The current appliance can't be updated into this version, and the owner must manually deploy this OVA to a new appliance.
  final ApplianceVersionResponse2 newDeployableAppliance;

  AvailableUpdatesResponse2({
    required this.inPlaceUpdate,
    required this.newDeployableAppliance,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['inPlaceUpdate'] = inPlaceUpdate.toMap();
    map['newDeployableAppliance'] = newDeployableAppliance.toMap();
    return map;
  }

  factory AvailableUpdatesResponse2.fromMap(Map<String, dynamic> map) {
    return AvailableUpdatesResponse2(
      inPlaceUpdate: ApplianceVersionResponse2.fromMap(
          (map['inPlaceUpdate'] as Map).cast<String, dynamic>()),
      newDeployableAppliance: ApplianceVersionResponse2.fromMap(
          (map['newDeployableAppliance'] as Map).cast<String, dynamic>()),
    );
  }
}
