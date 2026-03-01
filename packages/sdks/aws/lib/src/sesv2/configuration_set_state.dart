// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_set_delivery_options.dart';
import 'configuration_set_reputation_options.dart';
import 'configuration_set_sending_options.dart';
import 'configuration_set_suppression_options.dart';
import 'configuration_set_tracking_options.dart';
import 'configuration_set_vdm_options.dart';

/// Input properties used for looking up and filtering ConfigurationSet resources.
class ConfigurationSetState {
  /// ARN of the Configuration Set.
  final pulumi.Input<String>? arn;
  /// The name of the configuration set.
  final pulumi.Input<String>? configurationSetName;
  /// An object that defines the dedicated IP pool that is used to send emails that you send using the configuration set. See `delivery_options` Block for details.
  final pulumi.Input<ConfigurationSetDeliveryOptions>? deliveryOptions;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// An object that defines whether or not Amazon SES collects reputation metrics for the emails that you send that use the configuration set. See `reputation_options` Block for details.
  final pulumi.Input<ConfigurationSetReputationOptions>? reputationOptions;
  /// An object that defines whether or not Amazon SES can send email that you send using the configuration set. See `sending_options` Block for details.
  final pulumi.Input<ConfigurationSetSendingOptions>? sendingOptions;
  /// An object that contains information about the suppression list preferences for your account. See `suppression_options` Block for details.
  final pulumi.Input<ConfigurationSetSuppressionOptions>? suppressionOptions;
  /// A map of tags to assign to the service. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// An object that defines the open and click tracking options for emails that you send using the configuration set. See `tracking_options` Block for details.
  final pulumi.Input<ConfigurationSetTrackingOptions>? trackingOptions;
  /// An object that defines the VDM settings that apply to emails that you send using the configuration set. See `vdm_options` Block for details.
  final pulumi.Input<ConfigurationSetVdmOptions>? vdmOptions;

  /// Creates a new [ConfigurationSetState].
  /// [arn] ARN of the Configuration Set.
  /// [configurationSetName] The name of the configuration set.
  /// [deliveryOptions] An object that defines the dedicated IP pool that is used to send emails that you send using the configuration set. See `delivery_options` Block for details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [reputationOptions] An object that defines whether or not Amazon SES collects reputation metrics for the emails that you send that use the configuration set. See `reputation_options` Block for details.
  /// [sendingOptions] An object that defines whether or not Amazon SES can send email that you send using the configuration set. See `sending_options` Block for details.
  /// [suppressionOptions] An object that contains information about the suppression list preferences for your account. See `suppression_options` Block for details.
  /// [tags] A map of tags to assign to the service. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  /// [trackingOptions] An object that defines the open and click tracking options for emails that you send using the configuration set. See `tracking_options` Block for details.
  /// [vdmOptions] An object that defines the VDM settings that apply to emails that you send using the configuration set. See `vdm_options` Block for details.
  ConfigurationSetState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? configurationSetName,
    pulumi.Output<ConfigurationSetDeliveryOptions>? deliveryOptions,
    pulumi.Output<String>? region,
    pulumi.Output<ConfigurationSetReputationOptions>? reputationOptions,
    pulumi.Output<ConfigurationSetSendingOptions>? sendingOptions,
    pulumi.Output<ConfigurationSetSuppressionOptions>? suppressionOptions,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<ConfigurationSetTrackingOptions>? trackingOptions,
    pulumi.Output<ConfigurationSetVdmOptions>? vdmOptions,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      configurationSetName = pulumi.Input.asOptionalInput<String>(configurationSetName),
      deliveryOptions = pulumi.Input.asOptionalInput<ConfigurationSetDeliveryOptions>(deliveryOptions),
      region = pulumi.Input.asOptionalInput<String>(region),
      reputationOptions = pulumi.Input.asOptionalInput<ConfigurationSetReputationOptions>(reputationOptions),
      sendingOptions = pulumi.Input.asOptionalInput<ConfigurationSetSendingOptions>(sendingOptions),
      suppressionOptions = pulumi.Input.asOptionalInput<ConfigurationSetSuppressionOptions>(suppressionOptions),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      trackingOptions = pulumi.Input.asOptionalInput<ConfigurationSetTrackingOptions>(trackingOptions),
      vdmOptions = pulumi.Input.asOptionalInput<ConfigurationSetVdmOptions>(vdmOptions);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'configurationSetName': ?configurationSetName,
      'deliveryOptions': ?pulumi.Input.mapOptionalInputValue<ConfigurationSetDeliveryOptions, Map<String, dynamic>>(deliveryOptions, (value) => value.toMap()),
      'region': ?region,
      'reputationOptions': ?pulumi.Input.mapOptionalInputValue<ConfigurationSetReputationOptions, Map<String, dynamic>>(reputationOptions, (value) => value.toMap()),
      'sendingOptions': ?pulumi.Input.mapOptionalInputValue<ConfigurationSetSendingOptions, Map<String, dynamic>>(sendingOptions, (value) => value.toMap()),
      'suppressionOptions': ?pulumi.Input.mapOptionalInputValue<ConfigurationSetSuppressionOptions, Map<String, dynamic>>(suppressionOptions, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'trackingOptions': ?pulumi.Input.mapOptionalInputValue<ConfigurationSetTrackingOptions, Map<String, dynamic>>(trackingOptions, (value) => value.toMap()),
      'vdmOptions': ?pulumi.Input.mapOptionalInputValue<ConfigurationSetVdmOptions, Map<String, dynamic>>(vdmOptions, (value) => value.toMap()),
    };
  }

  factory ConfigurationSetState.fromMap(Map<String, dynamic> map) {
    return ConfigurationSetState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      configurationSetName: map['configurationSetName'] == null ? null : pulumi.Output.create<String>(map['configurationSetName'] as String),
      deliveryOptions: map['deliveryOptions'] == null ? null : pulumi.Output.create<ConfigurationSetDeliveryOptions>(ConfigurationSetDeliveryOptions.fromMap((map['deliveryOptions'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      reputationOptions: map['reputationOptions'] == null ? null : pulumi.Output.create<ConfigurationSetReputationOptions>(ConfigurationSetReputationOptions.fromMap((map['reputationOptions'] as Map).cast<String, dynamic>())),
      sendingOptions: map['sendingOptions'] == null ? null : pulumi.Output.create<ConfigurationSetSendingOptions>(ConfigurationSetSendingOptions.fromMap((map['sendingOptions'] as Map).cast<String, dynamic>())),
      suppressionOptions: map['suppressionOptions'] == null ? null : pulumi.Output.create<ConfigurationSetSuppressionOptions>(ConfigurationSetSuppressionOptions.fromMap((map['suppressionOptions'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      trackingOptions: map['trackingOptions'] == null ? null : pulumi.Output.create<ConfigurationSetTrackingOptions>(ConfigurationSetTrackingOptions.fromMap((map['trackingOptions'] as Map).cast<String, dynamic>())),
      vdmOptions: map['vdmOptions'] == null ? null : pulumi.Output.create<ConfigurationSetVdmOptions>(ConfigurationSetVdmOptions.fromMap((map['vdmOptions'] as Map).cast<String, dynamic>())),
    );
  }
}

