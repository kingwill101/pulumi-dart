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
      'authorizationProfile': ?pulumi.Input.mapOptionalInputValue<AuthorizationProfileResponse, Map<String, dynamic>>(authorizationProfile, (value) => value.toMap()),
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

  factory SubscriptionFeatureRegistrationResponseProperties.fromMap(Map<String, dynamic> map) {
    return SubscriptionFeatureRegistrationResponseProperties(
      approvalType: (map['approvalType'] as String).input(),
      authorizationProfile: map['authorizationProfile'] == null ? null : (AuthorizationProfileResponse.fromMap((map['authorizationProfile'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      documentationLink: (map['documentationLink'] as String).input(),
      featureName: (map['featureName'] as String).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata'] as Map).cast<String, String>()).input(),
      providerNamespace: (map['providerNamespace'] as String).input(),
      registrationDate: (map['registrationDate'] as String).input(),
      releaseDate: (map['releaseDate'] as String).input(),
      shouldFeatureDisplayInPortal: map['shouldFeatureDisplayInPortal'] == null ? null : (map['shouldFeatureDisplayInPortal'] as bool).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      subscriptionId: (map['subscriptionId'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
    );
  }
}

