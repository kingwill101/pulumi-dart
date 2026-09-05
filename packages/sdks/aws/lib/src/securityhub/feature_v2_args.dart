// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityhub_feature_v2_feature_v2_args_doc}
/// The set of arguments for FeatureV2.
/// {@endtemplate}
/// {@macro pulumi_securityhub_feature_v2_feature_v2_args_doc}
class FeatureV2Args {
  /// Name of the opt-in feature to enable. Valid values: `NETWORK_SCANNING`. Changing this forces a new resource to be created.
  final pulumi.Input<String> featureName;
  /// Current enablement status of the feature. Valid values: `ENABLED`, `DISABLED`.
  final pulumi.Input<String> featureStatus;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [FeatureV2Args].
  /// [featureName] Name of the opt-in feature to enable. Valid values: `NETWORK_SCANNING`. Changing this forces a new resource to be created.
  /// [featureStatus] Current enablement status of the feature. Valid values: `ENABLED`, `DISABLED`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const FeatureV2Args({
    required this.featureName,
    required this.featureStatus,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureName': featureName,
      'featureStatus': featureStatus,
      'region': ?region,
    };
  }

  factory FeatureV2Args.fromMap(Map<String, dynamic> map) {
    return FeatureV2Args(
      featureName: pulumi.Input.fromValue(map['featureName'] as String),
      featureStatus: pulumi.Input.fromValue(map['featureStatus'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
