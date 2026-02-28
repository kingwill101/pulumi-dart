// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventarc_v1_get_channel_connection_iam_policy_args_doc}
/// Arguments for getChannelConnectionIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_eventarc_v1_get_channel_connection_iam_policy_args_doc}
class GetChannelConnectionIamPolicyArgs {
  final pulumi.Input<String> channelConnectionId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetChannelConnectionIamPolicyArgs].
  /// [channelConnectionId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetChannelConnectionIamPolicyArgs({
    required String channelConnectionId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  })  : channelConnectionId = pulumi.Input.asInput<String>(channelConnectionId),
        location = pulumi.Input.asInput<String>(location),
        optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['channelConnectionId'] = channelConnectionId;
    map['location'] = location;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetChannelConnectionIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetChannelConnectionIamPolicyArgs(
      channelConnectionId: map['channelConnectionId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
