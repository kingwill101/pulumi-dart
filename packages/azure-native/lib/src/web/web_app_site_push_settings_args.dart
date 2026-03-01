// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_web_app_site_push_settings_args_doc}
/// The set of arguments for WebAppSitePushSettings.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_site_push_settings_args_doc}
class WebAppSitePushSettingsArgs {
  /// Gets or sets a JSON string containing a list of dynamic tags that will be evaluated from user claims in the push registration endpoint.
  final pulumi.Input<String>? dynamicTagsJson;
  /// Gets or sets a flag indicating whether the Push endpoint is enabled.
  final pulumi.Input<bool> isPushEnabled;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Name of web app.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// Gets or sets a JSON string containing a list of tags that are whitelisted for use by the push registration endpoint.
  final pulumi.Input<String>? tagWhitelistJson;
  /// Gets or sets a JSON string containing a list of tags that require user authentication to be used in the push registration endpoint.
  /// Tags can consist of alphanumeric characters and the following:
  /// '_', '@', '#', '.', ':', '-'.
  /// Validation should be performed at the PushRequestHandler.
  final pulumi.Input<String>? tagsRequiringAuth;

  /// Creates a new [WebAppSitePushSettingsArgs].
  /// [dynamicTagsJson] Gets or sets a JSON string containing a list of dynamic tags that will be evaluated from user claims in the push registration endpoint.
  /// [isPushEnabled] Gets or sets a flag indicating whether the Push endpoint is enabled.
  /// [kind] Kind of resource.
  /// [name] Name of web app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [tagWhitelistJson] Gets or sets a JSON string containing a list of tags that are whitelisted for use by the push registration endpoint.
  /// [tagsRequiringAuth] Gets or sets a JSON string containing a list of tags that require user authentication to be used in the push registration endpoint.
  WebAppSitePushSettingsArgs({
    String? dynamicTagsJson,
    required bool isPushEnabled,
    String? kind,
    required String name,
    required String resourceGroupName,
    String? tagWhitelistJson,
    String? tagsRequiringAuth,
  }) :
      dynamicTagsJson = pulumi.Input.asOptionalInput<String>(dynamicTagsJson),
      isPushEnabled = pulumi.Input.asInput<bool>(isPushEnabled),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tagWhitelistJson = pulumi.Input.asOptionalInput<String>(tagWhitelistJson),
      tagsRequiringAuth = pulumi.Input.asOptionalInput<String>(tagsRequiringAuth);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dynamicTagsJson': ?dynamicTagsJson,
      'isPushEnabled': isPushEnabled,
      'kind': ?kind,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tagWhitelistJson': ?tagWhitelistJson,
      'tagsRequiringAuth': ?tagsRequiringAuth,
    };
  }

  factory WebAppSitePushSettingsArgs.fromMap(Map<String, dynamic> map) {
    return WebAppSitePushSettingsArgs(
      dynamicTagsJson: map['dynamicTagsJson'] == null ? null : map['dynamicTagsJson'] as String,
      isPushEnabled: map['isPushEnabled'] as bool,
      kind: map['kind'] == null ? null : map['kind'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tagWhitelistJson: map['tagWhitelistJson'] == null ? null : map['tagWhitelistJson'] as String,
      tagsRequiringAuth: map['tagsRequiringAuth'] == null ? null : map['tagsRequiringAuth'] as String,
    );
  }
}

