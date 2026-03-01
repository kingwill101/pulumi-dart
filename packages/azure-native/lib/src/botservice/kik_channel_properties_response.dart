// ignore_for_file: unused_element, unnecessary_cast


/// The parameters to provide for the Kik channel.
class KikChannelPropertiesResponse {
  /// Kik API key. Value only returned through POST to the action Channel List API, otherwise empty.
  final String? apiKey;
  /// Whether this channel is enabled for the bot
  final bool isEnabled;
  /// Whether this channel is validated for the bot
  final bool? isValidated;
  /// The Kik user name
  final String userName;

  /// Creates a new [KikChannelPropertiesResponse].
  /// [apiKey] Kik API key. Value only returned through POST to the action Channel List API, otherwise empty.
  /// [isEnabled] Whether this channel is enabled for the bot
  /// [isValidated] Whether this channel is validated for the bot
  /// [userName] The Kik user name
  KikChannelPropertiesResponse({
    this.apiKey,
    required this.isEnabled,
    this.isValidated,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
      'isEnabled': isEnabled,
      'isValidated': ?isValidated,
      'userName': userName,
    };
  }

  factory KikChannelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return KikChannelPropertiesResponse(
      apiKey: map['apiKey'] == null ? null : map['apiKey'] as String,
      isEnabled: map['isEnabled'] as bool,
      isValidated: map['isValidated'] == null ? null : map['isValidated'] as bool,
      userName: map['userName'] as String,
    );
  }
}

