// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_partner_destination_args_doc}
/// The set of arguments for PartnerDestination.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_partner_destination_args_doc}
class PartnerDestinationArgs {
  /// Activation state of the partner destination.
  final pulumi.Input<String>? activationState;
  /// Endpoint Base URL of the partner destination
  final pulumi.Input<String>? endpointBaseUrl;
  /// Endpoint context associated with this partner destination.
  final pulumi.Input<String>? endpointServiceContext;
  /// Expiration time of the partner destination. If this timer expires and the partner destination was never activated,
  /// the partner destination and corresponding channel are deleted.
  final pulumi.Input<String>? expirationTimeIfNotActivatedUtc;
  /// Location of the resource.
  final pulumi.Input<String>? location;
  /// Context or helpful message that can be used during the approval process.
  final pulumi.Input<String>? messageForActivation;
  /// Name of the partner destination.
  final pulumi.Input<String>? partnerDestinationName;
  /// The immutable Id of the corresponding partner registration.
  final pulumi.Input<String>? partnerRegistrationImmutableId;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;
  /// Tags of the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PartnerDestinationArgs].
  /// [activationState] Activation state of the partner destination.
  /// [endpointBaseUrl] Endpoint Base URL of the partner destination
  /// [endpointServiceContext] Endpoint context associated with this partner destination.
  /// [expirationTimeIfNotActivatedUtc] Expiration time of the partner destination. If this timer expires and the partner destination was never activated,
  /// [location] Location of the resource.
  /// [messageForActivation] Context or helpful message that can be used during the approval process.
  /// [partnerDestinationName] Name of the partner destination.
  /// [partnerRegistrationImmutableId] The immutable Id of the corresponding partner registration.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  /// [tags] Tags of the resource.
  PartnerDestinationArgs({
    String? activationState,
    String? endpointBaseUrl,
    String? endpointServiceContext,
    String? expirationTimeIfNotActivatedUtc,
    String? location,
    String? messageForActivation,
    String? partnerDestinationName,
    String? partnerRegistrationImmutableId,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      activationState = pulumi.Input.asOptionalInput<String>(activationState),
      endpointBaseUrl = pulumi.Input.asOptionalInput<String>(endpointBaseUrl),
      endpointServiceContext = pulumi.Input.asOptionalInput<String>(endpointServiceContext),
      expirationTimeIfNotActivatedUtc = pulumi.Input.asOptionalInput<String>(expirationTimeIfNotActivatedUtc),
      location = pulumi.Input.asOptionalInput<String>(location),
      messageForActivation = pulumi.Input.asOptionalInput<String>(messageForActivation),
      partnerDestinationName = pulumi.Input.asOptionalInput<String>(partnerDestinationName),
      partnerRegistrationImmutableId = pulumi.Input.asOptionalInput<String>(partnerRegistrationImmutableId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationState': ?activationState,
      'endpointBaseUrl': ?endpointBaseUrl,
      'endpointServiceContext': ?endpointServiceContext,
      'expirationTimeIfNotActivatedUtc': ?expirationTimeIfNotActivatedUtc,
      'location': ?location,
      'messageForActivation': ?messageForActivation,
      'partnerDestinationName': ?partnerDestinationName,
      'partnerRegistrationImmutableId': ?partnerRegistrationImmutableId,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory PartnerDestinationArgs.fromMap(Map<String, dynamic> map) {
    return PartnerDestinationArgs(
      activationState: map['activationState'] == null ? null : map['activationState'] as String,
      endpointBaseUrl: map['endpointBaseUrl'] == null ? null : map['endpointBaseUrl'] as String,
      endpointServiceContext: map['endpointServiceContext'] == null ? null : map['endpointServiceContext'] as String,
      expirationTimeIfNotActivatedUtc: map['expirationTimeIfNotActivatedUtc'] == null ? null : map['expirationTimeIfNotActivatedUtc'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      messageForActivation: map['messageForActivation'] == null ? null : map['messageForActivation'] as String,
      partnerDestinationName: map['partnerDestinationName'] == null ? null : map['partnerDestinationName'] as String,
      partnerRegistrationImmutableId: map['partnerRegistrationImmutableId'] == null ? null : map['partnerRegistrationImmutableId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

