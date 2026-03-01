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
  SubscriptionFeatureRegistrationArgs({
    pulumi.Output<String>? featureName,
    pulumi.Output<SubscriptionFeatureRegistrationProperties>? properties,
    required pulumi.Output<String> providerNamespace,
  }) :
      featureName = pulumi.Input.asOptionalInput<String>(featureName),
      properties = pulumi.Input.asOptionalInput<SubscriptionFeatureRegistrationProperties>(properties),
      providerNamespace = pulumi.Input.asInput<String>(providerNamespace);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureName': ?featureName,
      'properties': ?pulumi.Input.mapOptionalInputValue<SubscriptionFeatureRegistrationProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'providerNamespace': providerNamespace,
    };
  }

  factory SubscriptionFeatureRegistrationArgs.fromMap(Map<String, dynamic> map) {
    return SubscriptionFeatureRegistrationArgs(
      featureName: map['featureName'] == null ? null : pulumi.Output.create<String>(map['featureName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<SubscriptionFeatureRegistrationProperties>(SubscriptionFeatureRegistrationProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      providerNamespace: pulumi.Output.create<String>(map['providerNamespace'] as String),
    );
  }
}

