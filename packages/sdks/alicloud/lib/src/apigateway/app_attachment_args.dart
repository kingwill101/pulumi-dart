// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_app_attachment_app_attachment_args_doc}
/// The set of arguments for AppAttachment.
/// {@endtemplate}
/// {@macro pulumi_apigateway_app_attachment_app_attachment_args_doc}
class AppAttachmentArgs {
  /// The api_id that app apply to access.
  final pulumi.Input<String> apiId;
  /// The app that apply to the authorization.
  final pulumi.Input<String> appId;
  /// The group that the api belongs to.
  final pulumi.Input<String> groupId;
  /// Stage that the app apply to access.
  final pulumi.Input<String> stageName;

  /// Creates a new [AppAttachmentArgs].
  /// [apiId] The api_id that app apply to access.
  /// [appId] The app that apply to the authorization.
  /// [groupId] The group that the api belongs to.
  /// [stageName] Stage that the app apply to access.
  const AppAttachmentArgs({
    required this.apiId,
    required this.appId,
    required this.groupId,
    required this.stageName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'appId': appId,
      'groupId': groupId,
      'stageName': stageName,
    };
  }

  factory AppAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return AppAttachmentArgs(
      apiId: pulumi.Input.fromValue(map['apiId'] as String),
      appId: pulumi.Input.fromValue(map['appId'] as String),
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      stageName: pulumi.Input.fromValue(map['stageName'] as String),
    );
  }
}

