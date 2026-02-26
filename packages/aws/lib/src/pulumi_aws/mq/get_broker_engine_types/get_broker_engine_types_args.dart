// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getBrokerEngineTypes.
class GetBrokerEngineTypesArgs {
  /// MQ engine type to return version details for.
  final Input<String>? engineType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetBrokerEngineTypesArgs({
    this.engineType,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final engineTypeValue = engineType;
    if (engineTypeValue != null) {
      map['engineType'] = engineTypeValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetBrokerEngineTypesArgs.fromMap(Map<String, dynamic> map) {
    return GetBrokerEngineTypesArgs(
      engineType: Input.asOptionalInput<String>(map['engineType']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
