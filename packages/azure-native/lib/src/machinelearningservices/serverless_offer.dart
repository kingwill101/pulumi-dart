// ignore_for_file: unused_element, unnecessary_cast


class ServerlessOffer {
  /// [Required] The name of the Serverless Offer
  final String offerName;
  /// [Required] Publisher name of the Serverless Offer
  final String publisher;

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
      offerName: map['offerName'] as String,
      publisher: map['publisher'] as String,
    );
  }
}

