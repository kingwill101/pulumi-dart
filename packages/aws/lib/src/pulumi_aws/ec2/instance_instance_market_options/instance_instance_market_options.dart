// ignore_for_file: unused_element, unnecessary_cast

import '../instance_instance_market_options_spot_options/instance_instance_market_options_spot_options.dart';

class InstanceInstanceMarketOptions {
  /// Type of market for the instance. Valid values are <span pulumi-lang-nodejs="`spot`" pulumi-lang-dotnet="`Spot`" pulumi-lang-go="`spot`" pulumi-lang-python="`spot`" pulumi-lang-yaml="`spot`" pulumi-lang-java="`spot`">`spot`</span> and `capacity-block`. Defaults to <span pulumi-lang-nodejs="`spot`" pulumi-lang-dotnet="`Spot`" pulumi-lang-go="`spot`" pulumi-lang-python="`spot`" pulumi-lang-yaml="`spot`" pulumi-lang-java="`spot`">`spot`</span>. Required if <span pulumi-lang-nodejs="`spotOptions`" pulumi-lang-dotnet="`SpotOptions`" pulumi-lang-go="`spotOptions`" pulumi-lang-python="`spot_options`" pulumi-lang-yaml="`spotOptions`" pulumi-lang-java="`spotOptions`">`spot_options`</span> is specified.
  final String? marketType;

  /// Block to configure the options for Spot Instances. See Spot Options below for details on attributes.
  final InstanceInstanceMarketOptionsSpotOptions? spotOptions;

  InstanceInstanceMarketOptions({
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

  factory InstanceInstanceMarketOptions.fromMap(Map<String, dynamic> map) {
    return InstanceInstanceMarketOptions(
      marketType:
          map['marketType'] == null ? null : map['marketType'] as String,
      spotOptions: map['spotOptions'] == null
          ? null
          : InstanceInstanceMarketOptionsSpotOptions.fromMap(
              (map['spotOptions'] as Map).cast<String, dynamic>()),
    );
  }
}
