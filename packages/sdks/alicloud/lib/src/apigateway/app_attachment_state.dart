// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AppAttachment resources.
class AppAttachmentState {
  /// The api_id that app apply to access.
  final pulumi.Input<String>? apiId;
  /// The app that apply to the authorization.
  final pulumi.Input<String>? appId;
  /// The group that the api belongs to.
  final pulumi.Input<String>? groupId;
  /// Stage that the app apply to access.
  final pulumi.Input<String>? stageName;

  /// Creates a new [AppAttachmentState].
  /// [apiId] The api_id that app apply to access.
  /// [appId] The app that apply to the authorization.
  /// [groupId] The group that the api belongs to.
  /// [stageName] Stage that the app apply to access.
  AppAttachmentState({
    pulumi.Output<String>? apiId,
    pulumi.Output<String>? appId,
    pulumi.Output<String>? groupId,
    pulumi.Output<String>? stageName,
  }) :
      apiId = pulumi.Input.asOptionalInput<String>(apiId),
      appId = pulumi.Input.asOptionalInput<String>(appId),
      groupId = pulumi.Input.asOptionalInput<String>(groupId),
      stageName = pulumi.Input.asOptionalInput<String>(stageName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': ?apiId,
      'appId': ?appId,
      'groupId': ?groupId,
      'stageName': ?stageName,
    };
  }

  factory AppAttachmentState.fromMap(Map<String, dynamic> map) {
    return AppAttachmentState(
      apiId: map['apiId'] == null ? null : pulumi.Output.create<String>(map['apiId'] as String),
      appId: map['appId'] == null ? null : pulumi.Output.create<String>(map['appId'] as String),
      groupId: map['groupId'] == null ? null : pulumi.Output.create<String>(map['groupId'] as String),
      stageName: map['stageName'] == null ? null : pulumi.Output.create<String>(map['stageName'] as String),
    );
  }
}

