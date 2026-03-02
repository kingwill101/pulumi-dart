// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerlessOffer {
  /// [Required] The name of the Serverless Offer
  final pulumi.Input<String> offerName;
  /// [Required] Publisher name of the Serverless Offer
  final pulumi.Input<String> publisher;

  /// Creates a new [ServerlessOffer].
  /// [offerName] [Required] The name of the Serverless Offer
  /// [publisher] [Required] Publisher name of the Serverless Offer
  ServerlessOffer({
    required this.offerName,
    required this.publisher,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offerName': offerName,
      'publisher': publisher,
    };
  }

  factory ServerlessOffer.fromMap(Map<String, dynamic> map) {
    return ServerlessOffer(
      offerName: (map['offerName'] as String).input(),
      publisher: (map['publisher'] as String).input(),
    );
  }
}

