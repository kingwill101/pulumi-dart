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
    pulumi.Output<int>? bandwidth,
    pulumi.Output<String>? internetChargeType,
    pulumi.Output<String>? officeSiteId,
    pulumi.Output<String>? status,
  }) :
      bandwidth = pulumi.Input.asOptionalInput<int>(bandwidth),
      internetChargeType = pulumi.Input.asOptionalInput<String>(internetChargeType),
      officeSiteId = pulumi.Input.asOptionalInput<String>(officeSiteId),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      bandwidth: map['bandwidth'] == null ? null : pulumi.Output.create<int>(map['bandwidth'] as int),
      internetChargeType: map['internetChargeType'] == null ? null : pulumi.Output.create<String>(map['internetChargeType'] as String),
      officeSiteId: map['officeSiteId'] == null ? null : pulumi.Output.create<String>(map['officeSiteId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

