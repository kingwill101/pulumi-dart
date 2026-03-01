// ignore_for_file: unused_element, unnecessary_cast


class AppSpecAlertDestinationsSlackWebhook {
  /// The Slack channel to send notifications to.
  final String channel;
  /// The Slack webhook URL.
  final String url;

  /// Creates a new [AppSpecAlertDestinationsSlackWebhook].
  /// [channel] The Slack channel to send notifications to.
  /// [url] The Slack webhook URL.
  AppSpecAlertDestinationsSlackWebhook({
    required this.channel,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': channel,
      'url': url,
    };
  }

  factory AppSpecAlertDestinationsSlackWebhook.fromMap(Map<String, dynamic> map) {
    return AppSpecAlertDestinationsSlackWebhook(
      channel: map['channel'] as String,
      url: map['url'] as String,
    );
  }
}

