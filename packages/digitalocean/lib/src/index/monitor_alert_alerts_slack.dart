// ignore_for_file: unused_element, unnecessary_cast


class MonitorAlertAlertsSlack {
  /// The Slack channel to send alerts to
  final String channel;
  /// The webhook URL for Slack
  final String url;

  /// Creates a new [MonitorAlertAlertsSlack].
  /// [channel] The Slack channel to send alerts to
  /// [url] The webhook URL for Slack
  MonitorAlertAlertsSlack({
    required this.channel,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': channel,
      'url': url,
    };
  }

  factory MonitorAlertAlertsSlack.fromMap(Map<String, dynamic> map) {
    return MonitorAlertAlertsSlack(
      channel: map['channel'] as String,
      url: map['url'] as String,
    );
  }
}

