// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BandwidthPackage resources.
class BandwidthPackageState {
  /// Whether to enable auto-renewal for the bandwidth package. Only applicable when `payment_type` is `PrePaid`. Valid values: `true`, `false`. Default to `false`.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  ///
  /// ->**NOTE:** PrePaid mode will deduct fees from the account directly and the bandwidth package can't be deleted before expired time.
  final pulumi.Input<bool>? autoRenew;
  /// The bandwidth in Mbps of the bandwidth package. Cannot be less than 2Mbps.
  final pulumi.Input<int>? bandwidth;
  /// The name of the bandwidth package. Defaults to null.
  final pulumi.Input<String>? cenBandwidthPackageName;
  /// Field `charge_type` has been deprecated from version 1.97.0. Use `payment_type` and instead.
  final pulumi.Input<String>? chargeType;
  /// The description of the bandwidth package. Default to null.
  final pulumi.Input<String>? description;
  /// The time of the bandwidth package to expire.
  final pulumi.Input<String>? expiredTime;
  /// The area A to which the network instance belongs. Valid values: `China` | `North-America` | `Asia-Pacific` | `Europe` | `Australia`.
  final pulumi.Input<String>? geographicRegionAId;
  /// The area B to which the network instance belongs. Valid values: `China` | `North-America` | `Asia-Pacific` | `Europe` | `Australia`.
  final pulumi.Input<String>? geographicRegionBId;
  /// Field `geographic_region_ids` has been deprecated from version 1.97.0. Use `geographic_region_a_id` and `geographic_region_b_id` instead.
  final pulumi.Input<List<String>>? geographicRegionIds;
  /// Field `name` has been deprecated from version 1.97.0. Use `cen_bandwidth_package_name` and instead.
  final pulumi.Input<String>? name;
  /// The billing method. Valid value: `PostPaid` | `PrePaid`. Default to `PrePaid`. If set to PrePaid, the bandwidth package can't be deleted before expired time.
  final pulumi.Input<String>? paymentType;
  /// The purchase period in month. Valid value: `1`, `2`, `3`, `6`, `12`.
  /// > **NOTE:** The attribute `period` is only used to create Subscription instance or modify the PayAsYouGo instance to Subscription. Once effect, it will not be modified that means running `pulumi up` will not effect the resource.
  final pulumi.Input<int>? period;
  /// The association status of the bandwidth package.
  final pulumi.Input<String>? status;

  /// Creates a new [BandwidthPackageState].
  /// [autoRenew] Whether to enable auto-renewal for the bandwidth package. Only applicable when `payment_type` is `PrePaid`. Valid values: `true`, `false`. Default to `false`.
  /// [bandwidth] The bandwidth in Mbps of the bandwidth package. Cannot be less than 2Mbps.
  /// [cenBandwidthPackageName] The name of the bandwidth package. Defaults to null.
  /// [chargeType] Field `charge_type` has been deprecated from version 1.97.0. Use `payment_type` and instead.
  /// [description] The description of the bandwidth package. Default to null.
  /// [expiredTime] The time of the bandwidth package to expire.
  /// [geographicRegionAId] The area A to which the network instance belongs. Valid values: `China` | `North-America` | `Asia-Pacific` | `Europe` | `Australia`.
  /// [geographicRegionBId] The area B to which the network instance belongs. Valid values: `China` | `North-America` | `Asia-Pacific` | `Europe` | `Australia`.
  /// [geographicRegionIds] Field `geographic_region_ids` has been deprecated from version 1.97.0. Use `geographic_region_a_id` and `geographic_region_b_id` instead.
  /// [name] Field `name` has been deprecated from version 1.97.0. Use `cen_bandwidth_package_name` and instead.
  /// [paymentType] The billing method. Valid value: `PostPaid` | `PrePaid`. Default to `PrePaid`. If set to PrePaid, the bandwidth package can't be deleted before expired time.
  /// [period] The purchase period in month. Valid value: `1`, `2`, `3`, `6`, `12`.
  /// [status] The association status of the bandwidth package.
  BandwidthPackageState({
    this.autoRenew,
    this.bandwidth,
    this.cenBandwidthPackageName,
    this.chargeType,
    this.description,
    this.expiredTime,
    this.geographicRegionAId,
    this.geographicRegionBId,
    this.geographicRegionIds,
    this.name,
    this.paymentType,
    this.period,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenew': ?autoRenew,
      'bandwidth': ?bandwidth,
      'cenBandwidthPackageName': ?cenBandwidthPackageName,
      'chargeType': ?chargeType,
      'description': ?description,
      'expiredTime': ?expiredTime,
      'geographicRegionAId': ?geographicRegionAId,
      'geographicRegionBId': ?geographicRegionBId,
      'geographicRegionIds': ?geographicRegionIds,
      'name': ?name,
      'paymentType': ?paymentType,
      'period': ?period,
      'status': ?status,
    };
  }

  factory BandwidthPackageState.fromMap(Map<String, dynamic> map) {
    return BandwidthPackageState(
      autoRenew: map['autoRenew'] == null ? null : (map['autoRenew'] as bool).input(),
      bandwidth: map['bandwidth'] == null ? null : (map['bandwidth'] as int).input(),
      cenBandwidthPackageName: map['cenBandwidthPackageName'] == null ? null : (map['cenBandwidthPackageName'] as String).input(),
      chargeType: map['chargeType'] == null ? null : (map['chargeType'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      expiredTime: map['expiredTime'] == null ? null : (map['expiredTime'] as String).input(),
      geographicRegionAId: map['geographicRegionAId'] == null ? null : (map['geographicRegionAId'] as String).input(),
      geographicRegionBId: map['geographicRegionBId'] == null ? null : (map['geographicRegionBId'] as String).input(),
      geographicRegionIds: map['geographicRegionIds'] == null ? null : ((map['geographicRegionIds'] as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType'] as String).input(),
      period: map['period'] == null ? null : (map['period'] as int).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

