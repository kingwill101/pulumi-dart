// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipaddress_provisioning_type.dart';

/// The public IP Address configuration of the networking configuration of a Pool.
class PublicIPAddressConfiguration {
  /// The number of IPs specified here limits the maximum size of the Pool - 100 dedicated nodes or 100 Spot/low-priority nodes can be allocated for each public IP. For example, a pool needing 250 dedicated VMs would need at least 3 public IPs specified. Each element of this collection is of the form: /subscriptions/{subscription}/resourceGroups/{group}/providers/Microsoft.Network/publicIPAddresses/{ip}.
  final pulumi.Input<List<String>>? ipAddressIds;
  /// The default value is BatchManaged
  final pulumi.Input<IPAddressProvisioningType>? provision;

  /// Creates a new [PublicIPAddressConfiguration].
  /// [ipAddressIds] The number of IPs specified here limits the maximum size of the Pool - 100 dedicated nodes or 100 Spot/low-priority nodes can be allocated for each public IP. For example, a pool needing 250 dedicated VMs would need at least 3 public IPs specified. Each element of this collection is of the form: /subscriptions/{subscription}/resourceGroups/{group}/providers/Microsoft.Network/publicIPAddresses/{ip}.
  /// [provision] The default value is BatchManaged
  PublicIPAddressConfiguration({
    this.ipAddressIds,
    this.provision,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddressIds': ?ipAddressIds,
      'provision': ?pulumi.Input.mapOptionalInputValue<IPAddressProvisioningType, String>(provision, (value) => value.value),
    };
  }

  factory PublicIPAddressConfiguration.fromMap(Map<String, dynamic> map) {
    return PublicIPAddressConfiguration(
      ipAddressIds: map['ipAddressIds'] == null ? null : ((map['ipAddressIds']! as List).cast<String>()).input(),
      provision: map['provision'] == null ? null : (IPAddressProvisioningType.fromValue(map['provision']! as String)).input(),
    );
  }
}

