// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_launch_template_instance_market_option_spot_option.dart';

class GetLaunchTemplateInstanceMarketOption {
  final String marketType;
  final List<GetLaunchTemplateInstanceMarketOptionSpotOption> spotOptions;

  /// Creates a new [GetLaunchTemplateInstanceMarketOption].
  /// [marketType] Required.
  /// [spotOptions] Required.
  GetLaunchTemplateInstanceMarketOption({
    required this.marketType,
    required this.spotOptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['marketType'] = marketType;
    map['spotOptions'] = pulumi.Input.encodeList<
        GetLaunchTemplateInstanceMarketOptionSpotOption,
        Map<String, dynamic>>(spotOptions, (value) => value.toMap());
    return map;
  }

  factory GetLaunchTemplateInstanceMarketOption.fromMap(
      Map<String, dynamic> map) {
    return GetLaunchTemplateInstanceMarketOption(
      marketType: map['marketType'] as String,
      spotOptions: pulumi.Input.decodeList<
              GetLaunchTemplateInstanceMarketOptionSpotOption>(
          map['spotOptions'],
          (value) => GetLaunchTemplateInstanceMarketOptionSpotOption.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
