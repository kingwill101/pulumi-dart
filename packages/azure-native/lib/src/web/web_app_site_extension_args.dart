// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_web_app_site_extension_args_doc}
/// The set of arguments for WebAppSiteExtension.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_site_extension_args_doc}
class WebAppSiteExtensionArgs {
  /// Site name.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// Site extension name.
  final pulumi.Input<String>? siteExtensionId;

  /// Creates a new [WebAppSiteExtensionArgs].
  /// [name] Site name.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [siteExtensionId] Site extension name.
  WebAppSiteExtensionArgs({
    required String name,
    required String resourceGroupName,
    String? siteExtensionId,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      siteExtensionId = pulumi.Input.asOptionalInput<String>(siteExtensionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'siteExtensionId': ?siteExtensionId,
    };
  }

  factory WebAppSiteExtensionArgs.fromMap(Map<String, dynamic> map) {
    return WebAppSiteExtensionArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      siteExtensionId: map['siteExtensionId'] == null ? null : map['siteExtensionId'] as String,
    );
  }
}

