// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workspacesweb_browser_settings_browser_settings_args_doc}
/// The set of arguments for BrowserSettings.
/// {@endtemplate}
/// {@macro pulumi_workspacesweb_browser_settings_browser_settings_args_doc}
class BrowserSettingsArgs {
  /// Additional encryption context for the browser settings.
  final pulumi.Input<Map<String, String>>? additionalEncryptionContext;

  /// Browser policy for the browser settings. This is a JSON string that defines the browser settings policy.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> browserPolicy;

  /// ARN of the customer managed KMS key.
  final pulumi.Input<String>? customerManagedKey;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [BrowserSettingsArgs].
  /// [additionalEncryptionContext] Additional encryption context for the browser settings.
  /// [browserPolicy] Browser policy for the browser settings. This is a JSON string that defines the browser settings policy.
  /// [customerManagedKey] ARN of the customer managed KMS key.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  BrowserSettingsArgs({
    Map<String, String>? additionalEncryptionContext,
    required String browserPolicy,
    String? customerManagedKey,
    String? region,
    Map<String, String>? tags,
  })  : additionalEncryptionContext =
            pulumi.Input.asOptionalInput<Map<String, String>>(
                additionalEncryptionContext),
        browserPolicy = pulumi.Input.asInput<String>(browserPolicy),
        customerManagedKey =
            pulumi.Input.asOptionalInput<String>(customerManagedKey),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalEncryptionContextValue = additionalEncryptionContext;
    if (additionalEncryptionContextValue != null) {
      map['additionalEncryptionContext'] = additionalEncryptionContextValue;
    }
    map['browserPolicy'] = browserPolicy;
    final customerManagedKeyValue = customerManagedKey;
    if (customerManagedKeyValue != null) {
      map['customerManagedKey'] = customerManagedKeyValue;
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

  factory BrowserSettingsArgs.fromMap(Map<String, dynamic> map) {
    return BrowserSettingsArgs(
      additionalEncryptionContext: map['additionalEncryptionContext'] == null
          ? null
          : (map['additionalEncryptionContext'] as Map).cast<String, String>(),
      browserPolicy: map['browserPolicy'] as String,
      customerManagedKey: map['customerManagedKey'] == null
          ? null
          : map['customerManagedKey'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
