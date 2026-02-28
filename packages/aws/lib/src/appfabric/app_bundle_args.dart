// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appfabric_app_bundle_app_bundle_args_doc}
/// The set of arguments for AppBundle.
/// {@endtemplate}
/// {@macro pulumi_appfabric_app_bundle_app_bundle_args_doc}
class AppBundleArgs {
  /// The Amazon Resource Name (ARN) of the AWS Key Management Service (AWS KMS) key to use to encrypt the application data. If this is not specified, an AWS owned key is used for encryption.
  final pulumi.Input<String>? customerManagedKeyArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AppBundleArgs].
  /// [customerManagedKeyArn] The Amazon Resource Name (ARN) of the AWS Key Management Service (AWS KMS) key to use to encrypt the application data. If this is not specified, an AWS owned key is used for encryption.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  AppBundleArgs({
    String? customerManagedKeyArn,
    String? region,
    Map<String, String>? tags,
  })  : customerManagedKeyArn =
            pulumi.Input.asOptionalInput<String>(customerManagedKeyArn),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customerManagedKeyArnValue = customerManagedKeyArn;
    if (customerManagedKeyArnValue != null) {
      map['customerManagedKeyArn'] = customerManagedKeyArnValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory AppBundleArgs.fromMap(Map<String, dynamic> map) {
    return AppBundleArgs(
      customerManagedKeyArn: map['customerManagedKeyArn'] == null
          ? null
          : map['customerManagedKeyArn'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
