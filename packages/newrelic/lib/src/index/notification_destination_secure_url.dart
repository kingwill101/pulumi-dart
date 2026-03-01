// ignore_for_file: unused_element, unnecessary_cast


class NotificationDestinationSecureUrl {
  /// The prefix of the URL.
  final String prefix;
  /// The suffix of the URL, which contains sensitive data.
  final String secureSuffix;

  /// Creates a new [NotificationDestinationSecureUrl].
  /// [prefix] The prefix of the URL.
  /// [secureSuffix] The suffix of the URL, which contains sensitive data.
  NotificationDestinationSecureUrl({
    required this.prefix,
    required this.secureSuffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prefix': prefix,
      'secureSuffix': secureSuffix,
    };
  }

  factory NotificationDestinationSecureUrl.fromMap(Map<String, dynamic> map) {
    return NotificationDestinationSecureUrl(
      prefix: map['prefix'] as String,
      secureSuffix: map['secureSuffix'] as String,
    );
  }
}

