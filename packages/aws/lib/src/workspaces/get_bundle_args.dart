// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workspaces_get_bundle_get_bundle_args_doc}
/// Arguments for getBundle.
/// {@endtemplate}
/// {@macro pulumi_workspaces_get_bundle_get_bundle_args_doc}
class GetBundleArgs {
  /// ID of the bundle.
  final pulumi.Input<String>? bundleId;

  /// Name of the bundle. You cannot combine this parameter with `bundle_id`.
  final pulumi.Input<String>? name;

  /// Owner of the bundles. You have to leave it blank for own bundles. You cannot combine this parameter with `bundle_id`.
  final pulumi.Input<String>? owner;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetBundleArgs].
  /// [bundleId] ID of the bundle.
  /// [name] Name of the bundle. You cannot combine this parameter with `bundle_id`.
  /// [owner] Owner of the bundles. You have to leave it blank for own bundles. You cannot combine this parameter with `bundle_id`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetBundleArgs({String? bundleId, String? name, String? owner, String? region})
    : bundleId = pulumi.Input.asOptionalInput<String>(bundleId),
      name = pulumi.Input.asOptionalInput<String>(name),
      owner = pulumi.Input.asOptionalInput<String>(owner),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      bundleId: map['bundleId'] == null ? null : map['bundleId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      owner: map['owner'] == null ? null : map['owner'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
