// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BrowserSettings resources.
class BrowserSettingsState {
  /// Additional encryption context for the browser settings.
  final pulumi.Input<Map<String, String>>? additionalEncryptionContext;
  /// List of web portal ARNs to associate with the browser settings.
  final pulumi.Input<List<String>>? associatedPortalArns;
  /// Browser policy for the browser settings. This is a JSON string that defines the browser settings policy.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? browserPolicy;
  /// ARN of the browser settings resource.
  final pulumi.Input<String>? browserSettingsArn;
  /// ARN of the customer managed KMS key.
  final pulumi.Input<String>? customerManagedKey;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [BrowserSettingsState].
  /// [additionalEncryptionContext] Additional encryption context for the browser settings.
  /// [associatedPortalArns] List of web portal ARNs to associate with the browser settings.
  /// [browserPolicy] Browser policy for the browser settings. This is a JSON string that defines the browser settings policy.
  /// [browserSettingsArn] ARN of the browser settings resource.
  /// [customerManagedKey] ARN of the customer managed KMS key.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  BrowserSettingsState({
    this.additionalEncryptionContext,
    this.associatedPortalArns,
    this.browserPolicy,
    this.browserSettingsArn,
    this.customerManagedKey,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalEncryptionContext': ?additionalEncryptionContext,
      'associatedPortalArns': ?associatedPortalArns,
      'browserPolicy': ?browserPolicy,
      'browserSettingsArn': ?browserSettingsArn,
      'customerManagedKey': ?customerManagedKey,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory BrowserSettingsState.fromMap(Map<String, dynamic> map) {
    return BrowserSettingsState(
      additionalEncryptionContext: map['additionalEncryptionContext'] == null ? null : ((map['additionalEncryptionContext'] as Map).cast<String, String>()).input(),
      associatedPortalArns: map['associatedPortalArns'] == null ? null : ((map['associatedPortalArns'] as List).cast<String>()).input(),
      browserPolicy: map['browserPolicy'] == null ? null : (map['browserPolicy'] as String).input(),
      browserSettingsArn: map['browserSettingsArn'] == null ? null : (map['browserSettingsArn'] as String).input(),
      customerManagedKey: map['customerManagedKey'] == null ? null : (map['customerManagedKey'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

