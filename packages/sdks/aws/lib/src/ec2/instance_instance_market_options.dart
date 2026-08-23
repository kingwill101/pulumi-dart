// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_instance_market_options_spot_options.dart';

class InstanceInstanceMarketOptions {
  /// Type of market for the instance. Valid values are `spot`, `capacity-block`, and `interruptible-capacity-reservation`. Use `interruptible-capacity-reservation` to launch instances into [interruptible Capacity Reservations](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/capacity-consumer-procedures.html). Defaults to `spot`. Required if `spotOptions` is specified.
  final pulumi.Input<String>? marketType;
  /// Block to configure the options for Spot Instances. See Spot Options below for details on attributes.
  final pulumi.Input<InstanceInstanceMarketOptionsSpotOptions>? spotOptions;

  /// Creates a new [InstanceInstanceMarketOptions].
  /// [marketType] Type of market for the instance. Valid values are `spot`, `capacity-block`, and `interruptible-capacity-reservation`. Use `interruptible-capacity-reservation` to launch instances into [interruptible Capacity Reservations](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/capacity-consumer-procedures.html). Defaults to `spot`. Required if `spotOptions` is specified.
  /// [spotOptions] Block to configure the options for Spot Instances. See Spot Options below for details on attributes.
  const InstanceInstanceMarketOptions({
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
      marketType: (() { final guardedValue = map['marketType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spotOptions: (() { final guardedValue = map['spotOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceInstanceMarketOptionsSpotOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
