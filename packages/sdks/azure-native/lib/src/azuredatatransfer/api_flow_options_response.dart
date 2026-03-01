// ignore_for_file: unused_element, unnecessary_cast


/// Properties specific to API Flow Type
class ApiFlowOptionsResponse {
  /// Remote Calling Mode in the Azure Data Transfer API Flow, which describes how the API Flow will be invoked
  final String? apiMode;
  /// Optional field to override the audience of the remote endpoint. The property has reached end of life support starting version 2025-05-30-preview. Please create and use the authentication property instead.
  final String? audienceOverride;
  /// Unique CNAME to represent the Azure Data Transfer API Flow instance
  final String? cname;
  /// Determines which identity to use for extracting the user token for Azure Data Transfer API Flow. The property has reached end of life support starting version 2025-05-30-preview. Please create and use the authentication property instead.
  final String? identityTranslation;
  /// Remote stub app registration Client ID. The property has reached end of life support starting version 2025-05-30-preview. Please create and use the authentication property instead.
  final String? remoteCallingModeClientId;
  /// Remote host to which communication needs to be made. The property has reached end of life support starting version 2025-05-30-preview. Please create and use the remoteEndpointSettings.endpoint property instead.
  final String? remoteEndpoint;
  /// Sender's app user assigned Manage Identity client ID. The property has reached end of life support starting version 2025-05-30-preview. Please create and use the authentication property instead.
  final String? senderClientId;

  /// Creates a new [ApiFlowOptionsResponse].
  /// [apiMode] Remote Calling Mode in the Azure Data Transfer API Flow, which describes how the API Flow will be invoked
  /// [audienceOverride] Optional field to override the audience of the remote endpoint. The property has reached end of life support starting version 2025-05-30-preview. Please create and use the authentication property instead.
  /// [cname] Unique CNAME to represent the Azure Data Transfer API Flow instance
  /// [identityTranslation] Determines which identity to use for extracting the user token for Azure Data Transfer API Flow. The property has reached end of life support starting version 2025-05-30-preview. Please create and use the authentication property instead.
  /// [remoteCallingModeClientId] Remote stub app registration Client ID. The property has reached end of life support starting version 2025-05-30-preview. Please create and use the authentication property instead.
  /// [remoteEndpoint] Remote host to which communication needs to be made. The property has reached end of life support starting version 2025-05-30-preview. Please create and use the remoteEndpointSettings.endpoint property instead.
  /// [senderClientId] Sender's app user assigned Manage Identity client ID. The property has reached end of life support starting version 2025-05-30-preview. Please create and use the authentication property instead.
  ApiFlowOptionsResponse({
    this.apiMode,
    this.audienceOverride,
    this.cname,
    this.identityTranslation,
    this.remoteCallingModeClientId,
    this.remoteEndpoint,
    this.senderClientId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiMode': ?apiMode,
      'audienceOverride': ?audienceOverride,
      'cname': ?cname,
      'identityTranslation': ?identityTranslation,
      'remoteCallingModeClientId': ?remoteCallingModeClientId,
      'remoteEndpoint': ?remoteEndpoint,
      'senderClientId': ?senderClientId,
    };
  }

  factory ApiFlowOptionsResponse.fromMap(Map<String, dynamic> map) {
    return ApiFlowOptionsResponse(
      apiMode: map['apiMode'] == null ? null : map['apiMode'] as String,
      audienceOverride: map['audienceOverride'] == null ? null : map['audienceOverride'] as String,
      cname: map['cname'] == null ? null : map['cname'] as String,
      identityTranslation: map['identityTranslation'] == null ? null : map['identityTranslation'] as String,
      remoteCallingModeClientId: map['remoteCallingModeClientId'] == null ? null : map['remoteCallingModeClientId'] as String,
      remoteEndpoint: map['remoteEndpoint'] == null ? null : map['remoteEndpoint'] as String,
      senderClientId: map['senderClientId'] == null ? null : map['senderClientId'] as String,
    );
  }
}

