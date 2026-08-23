// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_configuration_set_delivery_option.dart';
import 'get_configuration_set_reputation_option.dart';
import 'get_configuration_set_sending_option.dart';
import 'get_configuration_set_suppression_option.dart';
import 'get_configuration_set_tracking_option.dart';
import 'get_configuration_set_vdm_option.dart';

/// Result data returned by getConfigurationSet.
class GetConfigurationSetResult {
  final String arn;
  final String configurationSetName;
  /// An object that defines the dedicated IP pool that is used to send emails that you send using the configuration set.
  final List<GetConfigurationSetDeliveryOption> deliveryOptions;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;
  /// An object that defines whether or not Amazon SES collects reputation metrics for the emails that you send that use the configuration set.
  final List<GetConfigurationSetReputationOption> reputationOptions;
  /// An object that defines whether or not Amazon SES can send email that you send using the configuration set.
  final List<GetConfigurationSetSendingOption> sendingOptions;
  /// An object that contains information about the suppression list preferences for your account.
  final List<GetConfigurationSetSuppressionOption> suppressionOptions;
  /// Key-value map of resource tags for the container recipe.
  final Map<String, String> tags;
  /// An object that defines the open and click tracking options for emails that you send using the configuration set.
  final List<GetConfigurationSetTrackingOption> trackingOptions;
  /// An object that contains information about the VDM preferences for your configuration set.
  final List<GetConfigurationSetVdmOption> vdmOptions;

  /// Creates a new [GetConfigurationSetResult].
  /// [arn] Required.
  /// [configurationSetName] Required.
  /// [deliveryOptions] An object that defines the dedicated IP pool that is used to send emails that you send using the configuration set.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  /// [reputationOptions] An object that defines whether or not Amazon SES collects reputation metrics for the emails that you send that use the configuration set.
  /// [sendingOptions] An object that defines whether or not Amazon SES can send email that you send using the configuration set.
  /// [suppressionOptions] An object that contains information about the suppression list preferences for your account.
  /// [tags] Key-value map of resource tags for the container recipe.
  /// [trackingOptions] An object that defines the open and click tracking options for emails that you send using the configuration set.
  /// [vdmOptions] An object that contains information about the VDM preferences for your configuration set.
  const GetConfigurationSetResult({
    required this.arn,
    required this.configurationSetName,
    required this.deliveryOptions,
    required this.id,
    required this.region,
    required this.reputationOptions,
    required this.sendingOptions,
    required this.suppressionOptions,
    required this.tags,
    required this.trackingOptions,
    required this.vdmOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'configurationSetName': configurationSetName,
      'deliveryOptions': pulumi.Input.encodeList<GetConfigurationSetDeliveryOption, Map<String, dynamic>>(deliveryOptions, (value) => value.toMap()),
      'id': id,
      'region': region,
      'reputationOptions': pulumi.Input.encodeList<GetConfigurationSetReputationOption, Map<String, dynamic>>(reputationOptions, (value) => value.toMap()),
      'sendingOptions': pulumi.Input.encodeList<GetConfigurationSetSendingOption, Map<String, dynamic>>(sendingOptions, (value) => value.toMap()),
      'suppressionOptions': pulumi.Input.encodeList<GetConfigurationSetSuppressionOption, Map<String, dynamic>>(suppressionOptions, (value) => value.toMap()),
      'tags': tags,
      'trackingOptions': pulumi.Input.encodeList<GetConfigurationSetTrackingOption, Map<String, dynamic>>(trackingOptions, (value) => value.toMap()),
      'vdmOptions': pulumi.Input.encodeList<GetConfigurationSetVdmOption, Map<String, dynamic>>(vdmOptions, (value) => value.toMap()),
    };
  }

  factory GetConfigurationSetResult.fromMap(Map<String, dynamic> map) {
    return GetConfigurationSetResult(
      arn: map['arn'] as String,
      configurationSetName: map['configurationSetName'] as String,
      deliveryOptions: pulumi.Input.decodeList<GetConfigurationSetDeliveryOption>(map['deliveryOptions']!, (value) => GetConfigurationSetDeliveryOption.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      region: map['region'] as String,
      reputationOptions: pulumi.Input.decodeList<GetConfigurationSetReputationOption>(map['reputationOptions']!, (value) => GetConfigurationSetReputationOption.fromMap((value as Map).cast<String, dynamic>())),
      sendingOptions: pulumi.Input.decodeList<GetConfigurationSetSendingOption>(map['sendingOptions']!, (value) => GetConfigurationSetSendingOption.fromMap((value as Map).cast<String, dynamic>())),
      suppressionOptions: pulumi.Input.decodeList<GetConfigurationSetSuppressionOption>(map['suppressionOptions']!, (value) => GetConfigurationSetSuppressionOption.fromMap((value as Map).cast<String, dynamic>())),
      tags: (map['tags'] as Map).cast<String, String>(),
      trackingOptions: pulumi.Input.decodeList<GetConfigurationSetTrackingOption>(map['trackingOptions']!, (value) => GetConfigurationSetTrackingOption.fromMap((value as Map).cast<String, dynamic>())),
      vdmOptions: pulumi.Input.decodeList<GetConfigurationSetVdmOption>(map['vdmOptions']!, (value) => GetConfigurationSetVdmOption.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
