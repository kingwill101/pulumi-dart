// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'per_node_remote_support_session_response.dart';
import 'remote_support_node_settings_response.dart';

/// Remote Support properties of the cluster.
class RemoteSupportPropertiesResponse {
  /// Remote Support Access Level
  final pulumi.Input<String> accessLevel;
  /// Expiration DateTimeStamp when Remote Support Access will be expired
  final pulumi.Input<String> expirationTimeStamp;
  final pulumi.Input<List<RemoteSupportNodeSettingsResponse>> remoteSupportNodeSettings;
  final pulumi.Input<List<PerNodeRemoteSupportSessionResponse>> remoteSupportSessionDetails;
  /// Remote Support Type for cluster
  final pulumi.Input<String> remoteSupportType;

  /// Creates a new [RemoteSupportPropertiesResponse].
  /// [accessLevel] Remote Support Access Level
  /// [expirationTimeStamp] Expiration DateTimeStamp when Remote Support Access will be expired
  /// [remoteSupportNodeSettings] Required.
  /// [remoteSupportSessionDetails] Required.
  /// [remoteSupportType] Remote Support Type for cluster
  const RemoteSupportPropertiesResponse({
    required this.accessLevel,
    required this.expirationTimeStamp,
    required this.remoteSupportNodeSettings,
    required this.remoteSupportSessionDetails,
    required this.remoteSupportType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLevel': accessLevel,
      'expirationTimeStamp': expirationTimeStamp,
      'remoteSupportNodeSettings': pulumi.Input.mapInputValue<List<RemoteSupportNodeSettingsResponse>, List<Map<String, dynamic>>>(remoteSupportNodeSettings, (value) => pulumi.Input.encodeList<RemoteSupportNodeSettingsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'remoteSupportSessionDetails': pulumi.Input.mapInputValue<List<PerNodeRemoteSupportSessionResponse>, List<Map<String, dynamic>>>(remoteSupportSessionDetails, (value) => pulumi.Input.encodeList<PerNodeRemoteSupportSessionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'remoteSupportType': remoteSupportType,
    };
  }

  factory RemoteSupportPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return RemoteSupportPropertiesResponse(
      accessLevel: pulumi.Input.fromValue(map['accessLevel'] as String),
      expirationTimeStamp: pulumi.Input.fromValue(map['expirationTimeStamp'] as String),
      remoteSupportNodeSettings: pulumi.Input.fromValue(pulumi.Input.decodeList<RemoteSupportNodeSettingsResponse>(map['remoteSupportNodeSettings']!, (value) => RemoteSupportNodeSettingsResponse.fromMap((value as Map).cast<String, dynamic>()))),
      remoteSupportSessionDetails: pulumi.Input.fromValue(pulumi.Input.decodeList<PerNodeRemoteSupportSessionResponse>(map['remoteSupportSessionDetails']!, (value) => PerNodeRemoteSupportSessionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      remoteSupportType: pulumi.Input.fromValue(map['remoteSupportType'] as String),
    );
  }
}
