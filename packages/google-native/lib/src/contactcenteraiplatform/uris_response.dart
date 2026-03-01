// ignore_for_file: unused_element, unnecessary_cast

/// Message storing the URIs of the ContactCenter.
class URIsResponse {
  /// Chat Bot Uri of the ContactCenter
  final String chatBotUri;

  /// Media Uri of the ContactCenter.
  final String mediaUri;

  /// Root Uri of the ContactCenter.
  final String rootUri;

  /// Virtual Agent Streaming Service Uri of the ContactCenter.
  final String virtualAgentStreamingServiceUri;

  /// Creates a new [URIsResponse].
  /// [chatBotUri] Chat Bot Uri of the ContactCenter
  /// [mediaUri] Media Uri of the ContactCenter.
  /// [rootUri] Root Uri of the ContactCenter.
  /// [virtualAgentStreamingServiceUri] Virtual Agent Streaming Service Uri of the ContactCenter.
  URIsResponse({
    required this.chatBotUri,
    required this.mediaUri,
    required this.rootUri,
    required this.virtualAgentStreamingServiceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatBotUri': chatBotUri,
      'mediaUri': mediaUri,
      'rootUri': rootUri,
      'virtualAgentStreamingServiceUri': virtualAgentStreamingServiceUri,
    };
  }

  factory URIsResponse.fromMap(Map<String, dynamic> map) {
    return URIsResponse(
      chatBotUri: map['chatBotUri'] as String,
      mediaUri: map['mediaUri'] as String,
      rootUri: map['rootUri'] as String,
      virtualAgentStreamingServiceUri:
          map['virtualAgentStreamingServiceUri'] as String,
    );
  }
}
