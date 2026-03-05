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
    this.apiId,
    this.appId,
    this.groupId,
    this.stageName,
  });

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
      apiId: (() { final guardedValue = map['apiId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stageName: (() { final guardedValue = map['stageName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

