// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getBundle.
class GetBundleArgs {
  /// ID of the bundle.
  final Input<String>? bundleId;

  /// Name of the bundle. You cannot combine this parameter with <span pulumi-lang-nodejs="`bundleId`" pulumi-lang-dotnet="`BundleId`" pulumi-lang-go="`bundleId`" pulumi-lang-python="`bundle_id`" pulumi-lang-yaml="`bundleId`" pulumi-lang-java="`bundleId`">`bundle_id`</span>.
  final Input<String>? name;

  /// Owner of the bundles. You have to leave it blank for own bundles. You cannot combine this parameter with <span pulumi-lang-nodejs="`bundleId`" pulumi-lang-dotnet="`BundleId`" pulumi-lang-go="`bundleId`" pulumi-lang-python="`bundle_id`" pulumi-lang-yaml="`bundleId`" pulumi-lang-java="`bundleId`">`bundle_id`</span>.
  final Input<String>? owner;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetBundleArgs({
    this.bundleId,
    this.name,
    this.owner,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bundleIdValue = bundleId;
    if (bundleIdValue != null) {
      map['bundleId'] = bundleIdValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final ownerValue = owner;
    if (ownerValue != null) {
      map['owner'] = ownerValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetBundleArgs.fromMap(Map<String, dynamic> map) {
    return GetBundleArgs(
      bundleId: Input.asOptionalInput<String>(map['bundleId']),
      name: Input.asOptionalInput<String>(map['name']),
      owner: Input.asOptionalInput<String>(map['owner']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
