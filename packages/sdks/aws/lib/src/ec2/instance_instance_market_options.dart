// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_instance_market_options_spot_options.dart';

class InstanceInstanceMarketOptions {
  /// Type of market for the instance. Valid values are `spot` and `capacity-block`. Defaults to `spot`. Required if `spot_options` is specified.
  final pulumi.Input<String>? marketType;
  /// Block to configure the options for Spot Instances. See Spot Options below for details on attributes.
  final pulumi.Input<InstanceInstanceMarketOptionsSpotOptions>? spotOptions;

  /// Creates a new [InstanceInstanceMarketOptions].
  /// [marketType] Type of market for the instance. Valid values are `spot` and `capacity-block`. Defaults to `spot`. Required if `spot_options` is specified.
  /// [spotOptions] Block to configure the options for Spot Instances. See Spot Options below for details on attributes.
  InstanceInstanceMarketOptions({
    this.marketType,
    this.spotOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'marketType': ?marketType,
      'spotOptions': ?pulumi.Input.mapOptionalInputValue<InstanceInstanceMarketOptionsSpotOptions, Map<String, dynamic>>(spotOptions, (value) => value.toMap()),
    };
  }

  factory InstanceInstanceMarketOptions.fromMap(Map<String, dynamic> map) {
    return InstanceInstanceMarketOptions(
      marketType: map['marketType'] == null ? null : ((map['marketType'] as String).input()).input(),
      spotOptions: map['spotOptions'] == null ? null : ((InstanceInstanceMarketOptionsSpotOptions.fromMap((map['spotOptions']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

