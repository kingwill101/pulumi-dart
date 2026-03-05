// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_launch_template_instance_market_option_spot_option.dart';

class GetLaunchTemplateInstanceMarketOption {
  final pulumi.Input<String> marketType;
  final pulumi.Input<List<GetLaunchTemplateInstanceMarketOptionSpotOption>> spotOptions;

  /// Creates a new [GetLaunchTemplateInstanceMarketOption].
  /// [marketType] Required.
  /// [spotOptions] Required.
  GetLaunchTemplateInstanceMarketOption({
    required this.marketType,
    required this.spotOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'marketType': marketType,
      'spotOptions': pulumi.Input.mapInputValue<List<GetLaunchTemplateInstanceMarketOptionSpotOption>, List<Map<String, dynamic>>>(spotOptions, (value) => pulumi.Input.encodeList<GetLaunchTemplateInstanceMarketOptionSpotOption, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetLaunchTemplateInstanceMarketOption.fromMap(Map<String, dynamic> map) {
    return GetLaunchTemplateInstanceMarketOption(
      marketType: pulumi.Input.fromValue(map['marketType'] as String),
      spotOptions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLaunchTemplateInstanceMarketOptionSpotOption>(map['spotOptions']!, (value) => GetLaunchTemplateInstanceMarketOptionSpotOption.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

