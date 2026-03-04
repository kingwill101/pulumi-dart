// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_profile_response.dart';

class SubscriptionFeatureRegistrationResponseProperties {
  /// The feature approval type.
  final pulumi.Input<String> approvalType;

  /// Authorization Profile
  final pulumi.Input<AuthorizationProfileResponse>? authorizationProfile;

  /// The feature description.
  final pulumi.Input<String>? description;

  /// The featureDisplayName.
  final pulumi.Input<String> displayName;

  /// The feature documentation link.
  final pulumi.Input<String> documentationLink;

  /// The featureName.
  final pulumi.Input<String> featureName;

  /// Key-value pairs for meta data.
  final pulumi.Input<Map<String, String>>? metadata;

  /// The providerNamespace.
  final pulumi.Input<String> providerNamespace;

  /// The feature registration date.
  final pulumi.Input<String> registrationDate;

  /// The feature release date.
  final pulumi.Input<String> releaseDate;

  /// Indicates whether feature should be displayed in Portal.
  final pulumi.Input<bool>? shouldFeatureDisplayInPortal;

  /// The state.
  final pulumi.Input<String>? state;

  /// The subscriptionId.
  final pulumi.Input<String> subscriptionId;

  /// The tenantId.
  final pulumi.Input<String> tenantId;

  /// Creates a new [SubscriptionFeatureRegistrationResponseProperties].
  /// [approvalType] The feature approval type.
  /// [authorizationProfile] Authorization Profile
  /// [description] The feature description.
  /// [displayName] The featureDisplayName.
  /// [documentationLink] The feature documentation link.
  /// [featureName] The featureName.
  /// [metadata] Key-value pairs for meta data.
  /// [providerNamespace] The providerNamespace.
  /// [registrationDate] The feature registration date.
  /// [releaseDate] The feature release date.
  /// [shouldFeatureDisplayInPortal] Indicates whether feature should be displayed in Portal.
  /// [state] The state.
  /// [subscriptionId] The subscriptionId.
  /// [tenantId] The tenantId.
  SubscriptionFeatureRegistrationResponseProperties({
    required this.approvalType,
    this.authorizationProfile,
    this.description,
    required this.displayName,
    required this.documentationLink,
    required this.featureName,
    this.metadata,
    required this.providerNamespace,
    required this.registrationDate,
    required this.releaseDate,
    this.shouldFeatureDisplayInPortal,
    this.state,
    required this.subscriptionId,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalType': approvalType,
      'authorizationProfile':
          ?pulumi.Input.mapOptionalInputValue<
            AuthorizationProfileResponse,
            Map<String, dynamic>
          >(authorizationProfile, (value) => value.toMap()),
      'description': ?description,
      'displayName': displayName,
      'documentationLink': documentationLink,
      'featureName': featureName,
      'metadata': ?metadata,
      'providerNamespace': providerNamespace,
      'registrationDate': registrationDate,
      'releaseDate': releaseDate,
      'shouldFeatureDisplayInPortal': ?shouldFeatureDisplayInPortal,
      'state': ?state,
      'subscriptionId': subscriptionId,
      'tenantId': tenantId,
    };
  }

  factory SubscriptionFeatureRegistrationResponseProperties.fromMap(
    Map<String, dynamic> map,
  ) {
    return SubscriptionFeatureRegistrationResponseProperties(
      approvalType: pulumi.Input.fromValue(map['approvalType'] as String),
      authorizationProfile: (() {
        final guardedValue = map['authorizationProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AuthorizationProfileResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      documentationLink: pulumi.Input.fromValue(
        map['documentationLink'] as String,
      ),
      featureName: pulumi.Input.fromValue(map['featureName'] as String),
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      providerNamespace: pulumi.Input.fromValue(
        map['providerNamespace'] as String,
      ),
      registrationDate: pulumi.Input.fromValue(
        map['registrationDate'] as String,
      ),
      releaseDate: pulumi.Input.fromValue(map['releaseDate'] as String),
      shouldFeatureDisplayInPortal: (() {
        final guardedValue = map['shouldFeatureDisplayInPortal'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subscriptionId: pulumi.Input.fromValue(map['subscriptionId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
    );
  }
}
