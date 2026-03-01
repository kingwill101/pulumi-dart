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
    pulumi.Output<Map<String, String>>? additionalEncryptionContext,
    pulumi.Output<List<String>>? associatedPortalArns,
    pulumi.Output<String>? browserPolicy,
    pulumi.Output<String>? browserSettingsArn,
    pulumi.Output<String>? customerManagedKey,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      additionalEncryptionContext = pulumi.Input.asOptionalInput<Map<String, String>>(additionalEncryptionContext),
      associatedPortalArns = pulumi.Input.asOptionalInput<List<String>>(associatedPortalArns),
      browserPolicy = pulumi.Input.asOptionalInput<String>(browserPolicy),
      browserSettingsArn = pulumi.Input.asOptionalInput<String>(browserSettingsArn),
      customerManagedKey = pulumi.Input.asOptionalInput<String>(customerManagedKey),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      additionalEncryptionContext: map['additionalEncryptionContext'] == null ? null : pulumi.Output.create<Map<String, String>>((map['additionalEncryptionContext'] as Map).cast<String, String>()),
      associatedPortalArns: map['associatedPortalArns'] == null ? null : pulumi.Output.create<List<String>>((map['associatedPortalArns'] as List).cast<String>()),
      browserPolicy: map['browserPolicy'] == null ? null : pulumi.Output.create<String>(map['browserPolicy'] as String),
      browserSettingsArn: map['browserSettingsArn'] == null ? null : pulumi.Output.create<String>(map['browserSettingsArn'] as String),
      customerManagedKey: map['customerManagedKey'] == null ? null : pulumi.Output.create<String>(map['customerManagedKey'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

