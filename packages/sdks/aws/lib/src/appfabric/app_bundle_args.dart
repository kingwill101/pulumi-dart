// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appfabric_app_bundle_app_bundle_args_doc}
/// The set of arguments for AppBundle.
/// {@endtemplate}
/// {@macro pulumi_appfabric_app_bundle_app_bundle_args_doc}
class AppBundleArgs {
  /// ARN of the KMS key to use to encrypt the application data. If this is not specified, an AWS owned key is used for encryption.
  final pulumi.Input<String?>? customerManagedKeyArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [AppBundleArgs].
  /// [customerManagedKeyArn] ARN of the KMS key to use to encrypt the application data. If this is not specified, an AWS owned key is used for encryption.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const AppBundleArgs({
    this.customerManagedKeyArn,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedKeyArn': ?customerManagedKeyArn,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory AppBundleArgs.fromMap(Map<String, dynamic> map) {
    return AppBundleArgs(
      customerManagedKeyArn: (() { final guardedValue = map['customerManagedKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
