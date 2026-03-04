// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Enables or disables a capability on the dedicated host group. Minimum api-version: 2022-03-01.
class DedicatedHostGroupPropertiesAdditionalCapabilitiesResponse {
  /// The flag that enables or disables a capability to have UltraSSD Enabled Virtual Machines on Dedicated Hosts of the Dedicated Host Group. For the Virtual Machines to be UltraSSD Enabled, UltraSSDEnabled flag for the resource needs to be set true as well. The value is defaulted to 'false' when not provided. Please refer to https://docs.microsoft.com/en-us/azure/virtual-machines/disks-enable-ultra-ssd for more details on Ultra SSD feature. **Note:** The ultraSSDEnabled setting can only be enabled for Host Groups that are created as zonal. Minimum api-version: 2022-03-01.
  final pulumi.Input<bool>? ultraSSDEnabled;

  /// Creates a new [DedicatedHostGroupPropertiesAdditionalCapabilitiesResponse].
  /// [ultraSSDEnabled] The flag that enables or disables a capability to have UltraSSD Enabled Virtual Machines on Dedicated Hosts of the Dedicated Host Group. For the Virtual Machines to be UltraSSD Enabled, UltraSSDEnabled flag for the resource needs to be set true as well. The value is defaulted to 'false' when not provided. Please refer to https://docs.microsoft.com/en-us/azure/virtual-machines/disks-enable-ultra-ssd for more details on Ultra SSD feature. **Note:** The ultraSSDEnabled setting can only be enabled for Host Groups that are created as zonal. Minimum api-version: 2022-03-01.
  DedicatedHostGroupPropertiesAdditionalCapabilitiesResponse({
    this.ultraSSDEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ultraSSDEnabled': ?ultraSSDEnabled};
  }

  factory DedicatedHostGroupPropertiesAdditionalCapabilitiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return DedicatedHostGroupPropertiesAdditionalCapabilitiesResponse(
      ultraSSDEnabled: (() {
        final guardedValue = map['ultraSSDEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
