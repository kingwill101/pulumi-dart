// ignore_for_file: unused_element, unnecessary_cast


class AppServiceAuthSettingsTwitter {
  /// The consumer key of the Twitter app used for login
  final String consumerKey;
  /// The consumer secret of the Twitter app used for login.
  final String consumerSecret;

  /// Creates a new [AppServiceAuthSettingsTwitter].
  /// [consumerKey] The consumer key of the Twitter app used for login
  /// [consumerSecret] The consumer secret of the Twitter app used for login.
  AppServiceAuthSettingsTwitter({
    required this.consumerKey,
    required this.consumerSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerKey': consumerKey,
      'consumerSecret': consumerSecret,
    };
  }

  factory AppServiceAuthSettingsTwitter.fromMap(Map<String, dynamic> map) {
    return AppServiceAuthSettingsTwitter(
      consumerKey: map['consumerKey'] as String,
      consumerSecret: map['consumerSecret'] as String,
    );
  }
}

