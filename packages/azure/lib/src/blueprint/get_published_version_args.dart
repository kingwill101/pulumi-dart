// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_blueprint_get_published_version_get_published_version_args_doc}
/// Arguments for getPublishedVersion.
/// {@endtemplate}
/// {@macro pulumi_blueprint_get_published_version_get_published_version_args_doc}
class GetPublishedVersionArgs {
  /// The name of the Blueprint Definition
  final pulumi.Input<String> blueprintName;
  /// The ID of the Management Group / Subscription where this Blueprint Definition is stored.
  final pulumi.Input<String> scopeId;
  /// The Version name of the Published Version of the Blueprint Definition
  final pulumi.Input<String> version;

  /// Creates a new [GetPublishedVersionArgs].
  /// [blueprintName] The name of the Blueprint Definition
  /// [scopeId] The ID of the Management Group / Subscription where this Blueprint Definition is stored.
  /// [version] The Version name of the Published Version of the Blueprint Definition
  GetPublishedVersionArgs({
    required String blueprintName,
    required String scopeId,
    required String version,
  }) :
      blueprintName = pulumi.Input.asInput<String>(blueprintName),
      scopeId = pulumi.Input.asInput<String>(scopeId),
      version = pulumi.Input.asInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blueprintName': blueprintName,
      'scopeId': scopeId,
      'version': version,
    };
  }

  factory GetPublishedVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetPublishedVersionArgs(
      blueprintName: map['blueprintName'] as String,
      scopeId: map['scopeId'] as String,
      version: map['version'] as String,
    );
  }
}

