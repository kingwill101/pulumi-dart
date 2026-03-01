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
    pulumi.Output<Map<String, String>>? additionalEncryptionContext,
    required pulumi.Output<String> browserPolicy,
    pulumi.Output<String>? customerManagedKey,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      additionalEncryptionContext = pulumi.Input.asOptionalInput<Map<String, String>>(additionalEncryptionContext),
      browserPolicy = pulumi.Input.asInput<String>(browserPolicy),
      customerManagedKey = pulumi.Input.asOptionalInput<String>(customerManagedKey),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalEncryptionContext': ?additionalEncryptionContext,
      'browserPolicy': browserPolicy,
      'customerManagedKey': ?customerManagedKey,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory BrowserSettingsArgs.fromMap(Map<String, dynamic> map) {
    return BrowserSettingsArgs(
      additionalEncryptionContext: map['additionalEncryptionContext'] == null ? null : pulumi.Output.create<Map<String, String>>((map['additionalEncryptionContext'] as Map).cast<String, String>()),
      browserPolicy: pulumi.Output.create<String>(map['browserPolicy'] as String),
      customerManagedKey: map['customerManagedKey'] == null ? null : pulumi.Output.create<String>(map['customerManagedKey'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

