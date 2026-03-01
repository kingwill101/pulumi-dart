// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edgemarketplace_get_offer_access_token_args_doc}
/// Arguments for getOfferAccessToken.
/// {@endtemplate}
/// {@macro pulumi_edgemarketplace_get_offer_access_token_args_doc}
class GetOfferAccessTokenArgs {
  /// Id of the offer
  final pulumi.Input<String> offerId;
  /// The name of the publisher.
  final pulumi.Input<String> requestId;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [GetOfferAccessTokenArgs].
  /// [offerId] Id of the offer
  /// [requestId] The name of the publisher.
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  GetOfferAccessTokenArgs({
    required pulumi.Output<String> offerId,
    required pulumi.Output<String> requestId,
    required pulumi.Output<String> resourceUri,
  }) :
      offerId = pulumi.Input.asInput<String>(offerId),
      requestId = pulumi.Input.asInput<String>(requestId),
      resourceUri = pulumi.Input.asInput<String>(resourceUri);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offerId': offerId,
      'requestId': requestId,
      'resourceUri': resourceUri,
    };
  }

  factory GetOfferAccessTokenArgs.fromMap(Map<String, dynamic> map) {
    return GetOfferAccessTokenArgs(
      offerId: pulumi.Output.create<String>(map['offerId'] as String),
      requestId: pulumi.Output.create<String>(map['requestId'] as String),
      resourceUri: pulumi.Output.create<String>(map['resourceUri'] as String),
    );
  }
}

