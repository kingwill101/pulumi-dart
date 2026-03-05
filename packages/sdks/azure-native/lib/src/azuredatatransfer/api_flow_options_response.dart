// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties specific to API Flow Type
class ApiFlowOptionsResponse {
  /// Remote Calling Mode in the Azure Data Transfer API Flow, which describes how the API Flow will be invoked
  final pulumi.Input<String>? apiMode;
  /// Optional field to override the audience of the remote endpoint. The property has reached end of life support starting version 2025-05-30-preview. Please create and use the authentication property instead.
  final pulumi.Input<String>? audienceOverride;
  /// Unique CNAME to represent the Azure Data Transfer API Flow instance
  final pulumi.Input<String>? cname;
  /// Determines which identity to use for extracting the user token for Azure Data Transfer API Flow. The property has reached end of life support starting version 2025-05-30-preview. Please create and use the authentication property instead.
  final pulumi.Input<String>? identityTranslation;
  /// Remote stub app registration Client ID. The property has reached end of life support starting version 2025-05-30-preview. Please create and use the authentication property instead.
  final pulumi.Input<String>? remoteCallingModeClientId;
  /// Remote host to which communication needs to be made. The property has reached end of life support starting version 2025-05-30-preview. Please create and use the remoteEndpointSettings.endpoint property instead.
  final pulumi.Input<String>? remoteEndpoint;
  /// Sender's app user assigned Manage Identity client ID. The property has reached end of life support starting version 2025-05-30-preview. Please create and use the authentication property instead.
  final pulumi.Input<String>? senderClientId;

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
      apiMode: (() { final guardedValue = map['apiMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      audienceOverride: (() { final guardedValue = map['audienceOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cname: (() { final guardedValue = map['cname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identityTranslation: (() { final guardedValue = map['identityTranslation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remoteCallingModeClientId: (() { final guardedValue = map['remoteCallingModeClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remoteEndpoint: (() { final guardedValue = map['remoteEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      senderClientId: (() { final guardedValue = map['senderClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

