// ignore_for_file: unused_element, unnecessary_cast


class GetAlertChannelConfig {
  final String? apiKey;
  final String? authPassword;
  final String? authType;
  final String? authUsername;
  final String? baseUrl;
  final String? channel;
  final Map<String, String>? headers;
  final String? includeJsonAttachment;
  final String? key;
  final Map<String, String>? payload;
  final String? payloadString;
  final String? payloadType;
  final String? recipients;
  final String? region;
  final String? routeKey;
  final String? serviceKey;
  final String? tags;
  final String? teams;
  final String? url;
  final String? userId;

  /// Creates a new [GetAlertChannelConfig].
  /// [apiKey] Optional.
  /// [authPassword] Optional.
  /// [authType] Optional.
  /// [authUsername] Optional.
  /// [baseUrl] Optional.
  /// [channel] Optional.
  /// [headers] Optional.
  /// [includeJsonAttachment] Optional.
  /// [key] Optional.
  /// [payload] Optional.
  /// [payloadString] Optional.
  /// [payloadType] Optional.
  /// [recipients] Optional.
  /// [region] Optional.
  /// [routeKey] Optional.
  /// [serviceKey] Optional.
  /// [tags] Optional.
  /// [teams] Optional.
  /// [url] Optional.
  /// [userId] Optional.
  GetAlertChannelConfig({
    this.apiKey,
    this.authPassword,
    this.authType,
    this.authUsername,
    this.baseUrl,
    this.channel,
    this.headers,
    this.includeJsonAttachment,
    this.key,
    this.payload,
    this.payloadString,
    this.payloadType,
    this.recipients,
    this.region,
    this.routeKey,
    this.serviceKey,
    this.tags,
    this.teams,
    this.url,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
      'authPassword': ?authPassword,
      'authType': ?authType,
      'authUsername': ?authUsername,
      'baseUrl': ?baseUrl,
      'channel': ?channel,
      'headers': ?headers,
      'includeJsonAttachment': ?includeJsonAttachment,
      'key': ?key,
      'payload': ?payload,
      'payloadString': ?payloadString,
      'payloadType': ?payloadType,
      'recipients': ?recipients,
      'region': ?region,
      'routeKey': ?routeKey,
      'serviceKey': ?serviceKey,
      'tags': ?tags,
      'teams': ?teams,
      'url': ?url,
      'userId': ?userId,
    };
  }

  factory GetAlertChannelConfig.fromMap(Map<String, dynamic> map) {
    return GetAlertChannelConfig(
      apiKey: map['apiKey'] == null ? null : map['apiKey'] as String,
      authPassword: map['authPassword'] == null ? null : map['authPassword'] as String,
      authType: map['authType'] == null ? null : map['authType'] as String,
      authUsername: map['authUsername'] == null ? null : map['authUsername'] as String,
      baseUrl: map['baseUrl'] == null ? null : map['baseUrl'] as String,
      channel: map['channel'] == null ? null : map['channel'] as String,
      headers: map['headers'] == null ? null : (map['headers'] as Map).cast<String, String>(),
      includeJsonAttachment: map['includeJsonAttachment'] == null ? null : map['includeJsonAttachment'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      payload: map['payload'] == null ? null : (map['payload'] as Map).cast<String, String>(),
      payloadString: map['payloadString'] == null ? null : map['payloadString'] as String,
      payloadType: map['payloadType'] == null ? null : map['payloadType'] as String,
      recipients: map['recipients'] == null ? null : map['recipients'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      routeKey: map['routeKey'] == null ? null : map['routeKey'] as String,
      serviceKey: map['serviceKey'] == null ? null : map['serviceKey'] as String,
      tags: map['tags'] == null ? null : map['tags'] as String,
      teams: map['teams'] == null ? null : map['teams'] as String,
      url: map['url'] == null ? null : map['url'] as String,
      userId: map['userId'] == null ? null : map['userId'] as String,
    );
  }
}

