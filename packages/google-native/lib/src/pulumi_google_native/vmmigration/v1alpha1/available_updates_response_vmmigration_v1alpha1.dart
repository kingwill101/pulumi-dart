// ignore_for_file: unused_element, unnecessary_cast

import 'appliance_version_response_vmmigration_v1alpha1.dart';

/// Holds informatiom about the available versions for upgrade.
class AvailableUpdatesResponseVmmigrationV1alpha1 {
  /// The latest version for in place update. The current appliance can be updated to this version using the API or m4c CLI.
  final ApplianceVersionResponseVmmigrationV1alpha1 inPlaceUpdate;

  /// The newest deployable version of the appliance. The current appliance can't be updated into this version, and the owner must manually deploy this OVA to a new appliance.
  final ApplianceVersionResponseVmmigrationV1alpha1 newDeployableAppliance;

  AvailableUpdatesResponseVmmigrationV1alpha1({
    required this.inPlaceUpdate,
    required this.newDeployableAppliance,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['inPlaceUpdate'] = inPlaceUpdate.toMap();
    map['newDeployableAppliance'] = newDeployableAppliance.toMap();
    return map;
  }

  factory AvailableUpdatesResponseVmmigrationV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return AvailableUpdatesResponseVmmigrationV1alpha1(
      inPlaceUpdate: ApplianceVersionResponseVmmigrationV1alpha1.fromMap(
          (map['inPlaceUpdate'] as Map).cast<String, dynamic>()),
      newDeployableAppliance:
          ApplianceVersionResponseVmmigrationV1alpha1.fromMap(
              (map['newDeployableAppliance'] as Map).cast<String, dynamic>()),
    );
  }
}
