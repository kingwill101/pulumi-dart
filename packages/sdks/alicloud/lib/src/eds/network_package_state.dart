// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkPackage resources.
class NetworkPackageState {
  /// The bandwidth of package public network bandwidth peak. Valid values: 1~200. Unit:Mbps.
  final pulumi.Input<int>? bandwidth;
  /// The internet charge type  of  package.
  final pulumi.Input<String>? internetChargeType;
  /// The ID of office site.
  final pulumi.Input<String>? officeSiteId;
  /// The status of network package. Valid values: `Creating`, `InUse`, `Releasing`,`Released`.
  final pulumi.Input<String>? status;

  /// Creates a new [NetworkPackageState].
  /// [bandwidth] The bandwidth of package public network bandwidth peak. Valid values: 1~200. Unit:Mbps.
  /// [internetChargeType] The internet charge type  of  package.
  /// [officeSiteId] The ID of office site.
  /// [status] The status of network package. Valid values: `Creating`, `InUse`, `Releasing`,`Released`.
  NetworkPackageState({
    this.bandwidth,
    this.internetChargeType,
    this.officeSiteId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': ?bandwidth,
      'internetChargeType': ?internetChargeType,
      'officeSiteId': ?officeSiteId,
      'status': ?status,
    };
  }

  factory NetworkPackageState.fromMap(Map<String, dynamic> map) {
    return NetworkPackageState(
      bandwidth: (() { final guardedValue = map['bandwidth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      internetChargeType: (() { final guardedValue = map['internetChargeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      officeSiteId: (() { final guardedValue = map['officeSiteId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

