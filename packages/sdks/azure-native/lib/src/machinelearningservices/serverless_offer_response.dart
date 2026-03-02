// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerlessOfferResponse {
  /// [Required] The name of the Serverless Offer
  final pulumi.Input<String> offerName;
  /// [Required] Publisher name of the Serverless Offer
  final pulumi.Input<String> publisher;

  /// Creates a new [ServerlessOfferResponse].
  /// [offerName] [Required] The name of the Serverless Offer
  /// [publisher] [Required] Publisher name of the Serverless Offer
  ServerlessOfferResponse({
    required this.offerName,
    required this.publisher,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offerName': offerName,
      'publisher': publisher,
    };
  }

  factory ServerlessOfferResponse.fromMap(Map<String, dynamic> map) {
    return ServerlessOfferResponse(
      offerName: (map['offerName'] as String).input(),
      publisher: (map['publisher'] as String).input(),
    );
  }
}

