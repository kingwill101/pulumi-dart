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
  /// ARN of the configuration set.
  final String? arn;
  final String? configurationSetName;
  /// Object that defines the dedicated IP pool used to send emails with the configuration set.
  final List<GetConfigurationSetDeliveryOption>? deliveryOptions;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;
  /// Object that defines whether Amazon SES collects reputation metrics for emails sent with the configuration set.
  final List<GetConfigurationSetReputationOption>? reputationOptions;
  /// Object that defines whether Amazon SES can send email sent with the configuration set.
  final List<GetConfigurationSetSendingOption>? sendingOptions;
  /// Object that contains information about the suppression list preferences for your account.
  final List<GetConfigurationSetSuppressionOption>? suppressionOptions;
  /// Key-value map of resource tags.
  final Map<String, String>? tags;
  /// Object that defines the open and click tracking options for emails sent with the configuration set.
  final List<GetConfigurationSetTrackingOption>? trackingOptions;
  /// Object that contains information about the VDM preferences for your configuration set.
  final List<GetConfigurationSetVdmOption>? vdmOptions;

  /// Creates a new [GetConfigurationSetResult].
  /// [arn] ARN of the configuration set.
  /// [configurationSetName] Optional.
  /// [deliveryOptions] Object that defines the dedicated IP pool used to send emails with the configuration set.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  /// [reputationOptions] Object that defines whether Amazon SES collects reputation metrics for emails sent with the configuration set.
  /// [sendingOptions] Object that defines whether Amazon SES can send email sent with the configuration set.
  /// [suppressionOptions] Object that contains information about the suppression list preferences for your account.
  /// [tags] Key-value map of resource tags.
  /// [trackingOptions] Object that defines the open and click tracking options for emails sent with the configuration set.
  /// [vdmOptions] Object that contains information about the VDM preferences for your configuration set.
  const GetConfigurationSetResult({
    this.arn,
    this.configurationSetName,
    this.deliveryOptions,
    this.id,
    this.region,
    this.reputationOptions,
    this.sendingOptions,
    this.suppressionOptions,
    this.tags,
    this.trackingOptions,
    this.vdmOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'configurationSetName': ?configurationSetName,
      'deliveryOptions': ?(() { final guardedValue = deliveryOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetConfigurationSetDeliveryOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'region': ?region,
      'reputationOptions': ?(() { final guardedValue = reputationOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetConfigurationSetReputationOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sendingOptions': ?(() { final guardedValue = sendingOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetConfigurationSetSendingOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'suppressionOptions': ?(() { final guardedValue = suppressionOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetConfigurationSetSuppressionOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
      'trackingOptions': ?(() { final guardedValue = trackingOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetConfigurationSetTrackingOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'vdmOptions': ?(() { final guardedValue = vdmOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetConfigurationSetVdmOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetConfigurationSetResult.fromMap(Map<String, dynamic> map) {
    return GetConfigurationSetResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      configurationSetName: (() { final guardedValue = map['configurationSetName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deliveryOptions: (() { final guardedValue = map['deliveryOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetConfigurationSetDeliveryOption>(guardedValue, (value) => GetConfigurationSetDeliveryOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      reputationOptions: (() { final guardedValue = map['reputationOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetConfigurationSetReputationOption>(guardedValue, (value) => GetConfigurationSetReputationOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      sendingOptions: (() { final guardedValue = map['sendingOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetConfigurationSetSendingOption>(guardedValue, (value) => GetConfigurationSetSendingOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      suppressionOptions: (() { final guardedValue = map['suppressionOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetConfigurationSetSuppressionOption>(guardedValue, (value) => GetConfigurationSetSuppressionOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      trackingOptions: (() { final guardedValue = map['trackingOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetConfigurationSetTrackingOption>(guardedValue, (value) => GetConfigurationSetTrackingOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      vdmOptions: (() { final guardedValue = map['vdmOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetConfigurationSetVdmOption>(guardedValue, (value) => GetConfigurationSetVdmOption.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
