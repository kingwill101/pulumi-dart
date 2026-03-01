// ignore_for_file: unused_element, unnecessary_cast

import 'authorization_profile_response.dart';

class SubscriptionFeatureRegistrationResponseProperties {
  /// The feature approval type.
  final String approvalType;
  /// Authorization Profile
  final AuthorizationProfileResponse? authorizationProfile;
  /// The feature description.
  final String? description;
  /// The featureDisplayName.
  final String displayName;
  /// The feature documentation link.
  final String documentationLink;
  /// The featureName.
  final String featureName;
  /// Key-value pairs for meta data.
  final Map<String, String>? metadata;
  /// The providerNamespace.
  final String providerNamespace;
  /// The feature registration date.
  final String registrationDate;
  /// The feature release date.
  final String releaseDate;
  /// Indicates whether feature should be displayed in Portal.
  final bool? shouldFeatureDisplayInPortal;
  /// The state.
  final String? state;
  /// The subscriptionId.
  final String subscriptionId;
  /// The tenantId.
  final String tenantId;

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
      'authorizationProfile': ?authorizationProfile == null ? null : authorizationProfile!.toMap(),
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
      approvalType: map['approvalType'] as String,
      authorizationProfile: map['authorizationProfile'] == null ? null : AuthorizationProfileResponse.fromMap((map['authorizationProfile'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      documentationLink: map['documentationLink'] as String,
      featureName: map['featureName'] as String,
      metadata: map['metadata'] == null ? null : (map['metadata'] as Map).cast<String, String>(),
      providerNamespace: map['providerNamespace'] as String,
      registrationDate: map['registrationDate'] as String,
      releaseDate: map['releaseDate'] as String,
      shouldFeatureDisplayInPortal: map['shouldFeatureDisplayInPortal'] == null ? null : map['shouldFeatureDisplayInPortal'] as bool,
      state: map['state'] == null ? null : map['state'] as String,
      subscriptionId: map['subscriptionId'] as String,
      tenantId: map['tenantId'] as String,
    );
  }
}

