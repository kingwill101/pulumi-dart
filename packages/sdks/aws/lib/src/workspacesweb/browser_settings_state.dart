// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BrowserSettings resources.
class BrowserSettingsState {
  /// Additional encryption context for the browser settings.
  final pulumi.Input<Map<String, String>?>? additionalEncryptionContext;
  /// List of web portal ARNs to associate with the browser settings.
  final pulumi.Input<List<String>?>? associatedPortalArns;
  /// Browser policy for the browser settings. This is a JSON string that defines the browser settings policy.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? browserPolicy;
  /// ARN of the browser settings resource.
  final pulumi.Input<String?>? browserSettingsArn;
  /// ARN of the customer managed KMS key.
  final pulumi.Input<String?>? customerManagedKey;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [BrowserSettingsState].
  /// [additionalEncryptionContext] Additional encryption context for the browser settings.
  /// [associatedPortalArns] List of web portal ARNs to associate with the browser settings.
  /// [browserPolicy] Browser policy for the browser settings. This is a JSON string that defines the browser settings policy.
  /// [browserSettingsArn] ARN of the browser settings resource.
  /// [customerManagedKey] ARN of the customer managed KMS key.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const BrowserSettingsState({
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
      additionalEncryptionContext: (() { final guardedValue = map['additionalEncryptionContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      associatedPortalArns: (() { final guardedValue = map['associatedPortalArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      browserPolicy: (() { final guardedValue = map['browserPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      browserSettingsArn: (() { final guardedValue = map['browserSettingsArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerManagedKey: (() { final guardedValue = map['customerManagedKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
