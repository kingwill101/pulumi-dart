// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for BrowserSettings.
class BrowserSettingsArgs {
  /// Additional encryption context for the browser settings.
  final Input<Map<String, String>>? additionalEncryptionContext;

  /// Browser policy for the browser settings. This is a JSON string that defines the browser settings policy.
  ///
  /// The following arguments are optional:
  final Input<String> browserPolicy;

  /// ARN of the customer managed KMS key.
  final Input<String>? customerManagedKey;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags assigned to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  BrowserSettingsArgs({
    this.additionalEncryptionContext,
    required this.browserPolicy,
    this.customerManagedKey,
    this.region,
    this.tags,
  });

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
      additionalEncryptionContext: Input.asOptionalInput<Map<String, String>>(
          map['additionalEncryptionContext']),
      browserPolicy: Input.asInput<String>(map['browserPolicy']),
      customerManagedKey:
          Input.asOptionalInput<String>(map['customerManagedKey']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
