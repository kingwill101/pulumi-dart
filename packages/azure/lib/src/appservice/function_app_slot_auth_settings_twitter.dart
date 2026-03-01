// ignore_for_file: unused_element, unnecessary_cast


class FunctionAppSlotAuthSettingsTwitter {
  /// The OAuth 1.0a consumer key of the Twitter application used for sign-in.
  final String consumerKey;
  /// The OAuth 1.0a consumer secret of the Twitter application used for sign-in.
  final String consumerSecret;

  /// Creates a new [FunctionAppSlotAuthSettingsTwitter].
  /// [consumerKey] The OAuth 1.0a consumer key of the Twitter application used for sign-in.
  /// [consumerSecret] The OAuth 1.0a consumer secret of the Twitter application used for sign-in.
  FunctionAppSlotAuthSettingsTwitter({
    required this.consumerKey,
    required this.consumerSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerKey': consumerKey,
      'consumerSecret': consumerSecret,
    };
  }

  factory FunctionAppSlotAuthSettingsTwitter.fromMap(Map<String, dynamic> map) {
    return FunctionAppSlotAuthSettingsTwitter(
      consumerKey: map['consumerKey'] as String,
      consumerSecret: map['consumerSecret'] as String,
    );
  }
}

