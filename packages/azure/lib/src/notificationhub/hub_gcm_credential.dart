// ignore_for_file: unused_element, unnecessary_cast


class HubGcmCredential {
  /// The API Key associated with the Google Cloud Messaging service.
  final String apiKey;

  /// Creates a new [HubGcmCredential].
  /// [apiKey] The API Key associated with the Google Cloud Messaging service.
  HubGcmCredential({
    required this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': apiKey,
    };
  }

  factory HubGcmCredential.fromMap(Map<String, dynamic> map) {
    return HubGcmCredential(
      apiKey: map['apiKey'] as String,
    );
  }
}

