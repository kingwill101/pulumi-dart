// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_features_get_subscription_feature_registration_args_doc}
/// Arguments for getSubscriptionFeatureRegistration.
/// {@endtemplate}
/// {@macro pulumi_features_get_subscription_feature_registration_args_doc}
class GetSubscriptionFeatureRegistrationArgs {
  /// The feature name.
  final pulumi.Input<String> featureName;
  /// The provider namespace.
  final pulumi.Input<String> providerNamespace;

  /// Creates a new [GetSubscriptionFeatureRegistrationArgs].
  /// [featureName] The feature name.
  /// [providerNamespace] The provider namespace.
  GetSubscriptionFeatureRegistrationArgs({
    required this.featureName,
    required this.providerNamespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureName': featureName,
      'providerNamespace': providerNamespace,
    };
  }

  factory GetSubscriptionFeatureRegistrationArgs.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionFeatureRegistrationArgs(
      featureName: (map['featureName'] as String).input(),
      providerNamespace: (map['providerNamespace'] as String).input(),
    );
  }
}

