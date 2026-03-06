// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_feature_registration_properties.dart';

/// {@template pulumi_features_subscription_feature_registration_args_doc}
/// The set of arguments for SubscriptionFeatureRegistration.
/// {@endtemplate}
/// {@macro pulumi_features_subscription_feature_registration_args_doc}
class SubscriptionFeatureRegistrationArgs {
  /// The feature name.
  final pulumi.Input<String>? featureName;
  final pulumi.Input<SubscriptionFeatureRegistrationProperties>? properties;
  /// The provider namespace.
  final pulumi.Input<String> providerNamespace;

  /// Creates a new [SubscriptionFeatureRegistrationArgs].
  /// [featureName] The feature name.
  /// [properties] Optional.
  /// [providerNamespace] The provider namespace.
  const SubscriptionFeatureRegistrationArgs({
    this.featureName,
    this.properties,
    required this.providerNamespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureName': ?featureName,
      'properties': ?pulumi.Input.mapOptionalInputValue<SubscriptionFeatureRegistrationProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'providerNamespace': providerNamespace,
    };
  }

  factory SubscriptionFeatureRegistrationArgs.fromMap(Map<String, dynamic> map) {
    return SubscriptionFeatureRegistrationArgs(
      featureName: (() { final guardedValue = map['featureName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubscriptionFeatureRegistrationProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      providerNamespace: pulumi.Input.fromValue(map['providerNamespace'] as String),
    );
  }
}

