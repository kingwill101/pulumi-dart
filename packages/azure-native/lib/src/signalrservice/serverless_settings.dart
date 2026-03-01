// ignore_for_file: unused_element, unnecessary_cast


/// Serverless settings.
class ServerlessSettings {
  /// Gets or sets Client Connection Timeout. Optional to be set.
  /// Value in seconds.
  /// Default value is 30 seconds.
  /// Customer should set the timeout to a shorter period if messages are expected to be sent in shorter intervals,
  /// and want the client to disconnect more quickly after the last message is sent.
  /// You can set the timeout to a longer period if messages are expected to be sent in longer intervals,
  /// and they want to keep the same client connection alive during this session.
  /// The service considers the client disconnected if it hasn't received a message (including keep-alive) in this interval.
  final int? connectionTimeoutInSeconds;

  /// Creates a new [ServerlessSettings].
  /// [connectionTimeoutInSeconds] Gets or sets Client Connection Timeout. Optional to be set.
  ServerlessSettings({
    this.connectionTimeoutInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionTimeoutInSeconds': ?connectionTimeoutInSeconds,
    };
  }

  factory ServerlessSettings.fromMap(Map<String, dynamic> map) {
    return ServerlessSettings(
      connectionTimeoutInSeconds: map['connectionTimeoutInSeconds'] == null ? null : map['connectionTimeoutInSeconds'] as int,
    );
  }
}

