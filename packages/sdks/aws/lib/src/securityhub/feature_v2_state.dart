// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FeatureV2 resources.
class FeatureV2State {
  /// Name of the opt-in feature to enable. Valid values: `NETWORK_SCANNING`. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? featureName;
  /// Current enablement status of the feature. Valid values: `ENABLED`, `DISABLED`.
  final pulumi.Input<String?>? featureStatus;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [FeatureV2State].
  /// [featureName] Name of the opt-in feature to enable. Valid values: `NETWORK_SCANNING`. Changing this forces a new resource to be created.
  /// [featureStatus] Current enablement status of the feature. Valid values: `ENABLED`, `DISABLED`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const FeatureV2State({
    this.featureName,
    this.featureStatus,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureName': ?featureName,
      'featureStatus': ?featureStatus,
      'region': ?region,
    };
  }

  factory FeatureV2State.fromMap(Map<String, dynamic> map) {
    return FeatureV2State(
      featureName: (() { final guardedValue = map['featureName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      featureStatus: (() { final guardedValue = map['featureStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
