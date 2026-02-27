// ignore_for_file: unused_element, unnecessary_cast

import '../launch_template_instance_market_options_spot_options/launch_template_instance_market_options_spot_options.dart';

class LaunchTemplateInstanceMarketOptions {
  /// The market type. Can be `spot`.
  final String? marketType;

  /// The options for [Spot Instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-spot-instances.html)
  final LaunchTemplateInstanceMarketOptionsSpotOptions? spotOptions;

  LaunchTemplateInstanceMarketOptions({
    this.marketType,
    this.spotOptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final marketTypeValue = marketType;
    if (marketTypeValue != null) {
      map['marketType'] = marketTypeValue;
    }
    final spotOptionsValue = spotOptions;
    if (spotOptionsValue != null) {
      map['spotOptions'] = spotOptionsValue.toMap();
    }
    return map;
  }

  factory LaunchTemplateInstanceMarketOptions.fromMap(
      Map<String, dynamic> map) {
    return LaunchTemplateInstanceMarketOptions(
      marketType:
          map['marketType'] == null ? null : map['marketType'] as String,
      spotOptions: map['spotOptions'] == null
          ? null
          : LaunchTemplateInstanceMarketOptionsSpotOptions.fromMap(
              (map['spotOptions'] as Map).cast<String, dynamic>()),
    );
  }
}
