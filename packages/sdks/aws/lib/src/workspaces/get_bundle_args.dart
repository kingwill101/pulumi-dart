// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workspaces_get_bundle_get_bundle_args_doc}
/// Arguments for getBundle.
/// {@endtemplate}
/// {@macro pulumi_workspaces_get_bundle_get_bundle_args_doc}
class GetBundleArgs {
  /// ID of the bundle.
  final pulumi.Input<String>? bundleId;
  /// Name of the bundle. You cannot combine this parameter with `bundleId`.
  final pulumi.Input<String>? name;
  /// Owner of the bundles. You have to leave it blank for own bundles. You cannot combine this parameter with `bundleId`.
  final pulumi.Input<String>? owner;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetBundleArgs].
  /// [bundleId] ID of the bundle.
  /// [name] Name of the bundle. You cannot combine this parameter with `bundleId`.
  /// [owner] Owner of the bundles. You have to leave it blank for own bundles. You cannot combine this parameter with `bundleId`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetBundleArgs({
    this.bundleId,
    this.name,
    this.owner,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundleId': ?bundleId,
      'name': ?name,
      'owner': ?owner,
      'region': ?region,
    };
  }

  factory GetBundleArgs.fromMap(Map<String, dynamic> map) {
    return GetBundleArgs(
      bundleId: (() { final guardedValue = map['bundleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
