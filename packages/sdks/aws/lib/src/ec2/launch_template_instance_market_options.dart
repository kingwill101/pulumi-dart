// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'launch_template_instance_market_options_spot_options.dart';

class LaunchTemplateInstanceMarketOptions {
  /// The market type. Can be `spot`.
  final pulumi.Input<String>? marketType;

  /// The options for [Spot Instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-spot-instances.html)
  final pulumi.Input<LaunchTemplateInstanceMarketOptionsSpotOptions>?
  spotOptions;

  /// Creates a new [LaunchTemplateInstanceMarketOptions].
  /// [marketType] The market type. Can be `spot`.
  /// [spotOptions] The options for [Spot Instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-spot-instances.html)
  LaunchTemplateInstanceMarketOptions({this.marketType, this.spotOptions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'marketType': ?marketType,
      'spotOptions':
          ?pulumi.Input.mapOptionalInputValue<
            LaunchTemplateInstanceMarketOptionsSpotOptions,
            Map<String, dynamic>
          >(spotOptions, (value) => value.toMap()),
    };
  }

  factory LaunchTemplateInstanceMarketOptions.fromMap(
    Map<String, dynamic> map,
  ) {
    return LaunchTemplateInstanceMarketOptions(
      marketType: (() {
        final guardedValue = map['marketType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      spotOptions: (() {
        final guardedValue = map['spotOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LaunchTemplateInstanceMarketOptionsSpotOptions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
