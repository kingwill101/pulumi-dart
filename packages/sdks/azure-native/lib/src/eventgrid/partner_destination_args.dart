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
    this.activationState,
    this.endpointBaseUrl,
    this.endpointServiceContext,
    this.expirationTimeIfNotActivatedUtc,
    this.location,
    this.messageForActivation,
    this.partnerDestinationName,
    this.partnerRegistrationImmutableId,
    required this.resourceGroupName,
    this.tags,
  });

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
      activationState: (() { final guardedValue = map['activationState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointBaseUrl: (() { final guardedValue = map['endpointBaseUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointServiceContext: (() { final guardedValue = map['endpointServiceContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expirationTimeIfNotActivatedUtc: (() { final guardedValue = map['expirationTimeIfNotActivatedUtc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      messageForActivation: (() { final guardedValue = map['messageForActivation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partnerDestinationName: (() { final guardedValue = map['partnerDestinationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partnerRegistrationImmutableId: (() { final guardedValue = map['partnerRegistrationImmutableId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

