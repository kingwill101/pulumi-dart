// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../configuration_set_delivery_options/configuration_set_delivery_options2.dart';
import '../configuration_set_reputation_options/configuration_set_reputation_options.dart';
import '../configuration_set_sending_options/configuration_set_sending_options.dart';
import '../configuration_set_suppression_options/configuration_set_suppression_options.dart';
import '../configuration_set_tracking_options/configuration_set_tracking_options2.dart';
import '../configuration_set_vdm_options/configuration_set_vdm_options.dart';

/// The set of arguments for ConfigurationSet.
class ConfigurationSetArgs2 {
  /// The name of the configuration set.
  final Input<String> configurationSetName;

  /// An object that defines the dedicated IP pool that is used to send emails that you send using the configuration set. See <span pulumi-lang-nodejs="`deliveryOptions`" pulumi-lang-dotnet="`DeliveryOptions`" pulumi-lang-go="`deliveryOptions`" pulumi-lang-python="`delivery_options`" pulumi-lang-yaml="`deliveryOptions`" pulumi-lang-java="`deliveryOptions`">`delivery_options`</span> Block for details.
  final Input<ConfigurationSetDeliveryOptions2>? deliveryOptions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// An object that defines whether or not Amazon SES collects reputation metrics for the emails that you send that use the configuration set. See <span pulumi-lang-nodejs="`reputationOptions`" pulumi-lang-dotnet="`ReputationOptions`" pulumi-lang-go="`reputationOptions`" pulumi-lang-python="`reputation_options`" pulumi-lang-yaml="`reputationOptions`" pulumi-lang-java="`reputationOptions`">`reputation_options`</span> Block for details.
  final Input<ConfigurationSetReputationOptions>? reputationOptions;

  /// An object that defines whether or not Amazon SES can send email that you send using the configuration set. See <span pulumi-lang-nodejs="`sendingOptions`" pulumi-lang-dotnet="`SendingOptions`" pulumi-lang-go="`sendingOptions`" pulumi-lang-python="`sending_options`" pulumi-lang-yaml="`sendingOptions`" pulumi-lang-java="`sendingOptions`">`sending_options`</span> Block for details.
  final Input<ConfigurationSetSendingOptions>? sendingOptions;

  /// An object that contains information about the suppression list preferences for your account. See <span pulumi-lang-nodejs="`suppressionOptions`" pulumi-lang-dotnet="`SuppressionOptions`" pulumi-lang-go="`suppressionOptions`" pulumi-lang-python="`suppression_options`" pulumi-lang-yaml="`suppressionOptions`" pulumi-lang-java="`suppressionOptions`">`suppression_options`</span> Block for details.
  final Input<ConfigurationSetSuppressionOptions>? suppressionOptions;

  /// A map of tags to assign to the service. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// An object that defines the open and click tracking options for emails that you send using the configuration set. See <span pulumi-lang-nodejs="`trackingOptions`" pulumi-lang-dotnet="`TrackingOptions`" pulumi-lang-go="`trackingOptions`" pulumi-lang-python="`tracking_options`" pulumi-lang-yaml="`trackingOptions`" pulumi-lang-java="`trackingOptions`">`tracking_options`</span> Block for details.
  final Input<ConfigurationSetTrackingOptions2>? trackingOptions;

  /// An object that defines the VDM settings that apply to emails that you send using the configuration set. See <span pulumi-lang-nodejs="`vdmOptions`" pulumi-lang-dotnet="`VdmOptions`" pulumi-lang-go="`vdmOptions`" pulumi-lang-python="`vdm_options`" pulumi-lang-yaml="`vdmOptions`" pulumi-lang-java="`vdmOptions`">`vdm_options`</span> Block for details.
  final Input<ConfigurationSetVdmOptions>? vdmOptions;

  ConfigurationSetArgs2({
    required this.configurationSetName,
    this.deliveryOptions,
    this.region,
    this.reputationOptions,
    this.sendingOptions,
    this.suppressionOptions,
    this.tags,
    this.trackingOptions,
    this.vdmOptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['configurationSetName'] = configurationSetName;
    final deliveryOptionsValue = deliveryOptions;
    if (deliveryOptionsValue != null) {
      map['deliveryOptions'] = Input.mapOptionalInputValue<
          ConfigurationSetDeliveryOptions2,
          Map<String, dynamic>>(deliveryOptionsValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final reputationOptionsValue = reputationOptions;
    if (reputationOptionsValue != null) {
      map['reputationOptions'] = Input.mapOptionalInputValue<
              ConfigurationSetReputationOptions, Map<String, dynamic>>(
          reputationOptionsValue, (value) => value.toMap());
    }
    final sendingOptionsValue = sendingOptions;
    if (sendingOptionsValue != null) {
      map['sendingOptions'] = Input.mapOptionalInputValue<
          ConfigurationSetSendingOptions,
          Map<String, dynamic>>(sendingOptionsValue, (value) => value.toMap());
    }
    final suppressionOptionsValue = suppressionOptions;
    if (suppressionOptionsValue != null) {
      map['suppressionOptions'] = Input.mapOptionalInputValue<
              ConfigurationSetSuppressionOptions, Map<String, dynamic>>(
          suppressionOptionsValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final trackingOptionsValue = trackingOptions;
    if (trackingOptionsValue != null) {
      map['trackingOptions'] = Input.mapOptionalInputValue<
          ConfigurationSetTrackingOptions2,
          Map<String, dynamic>>(trackingOptionsValue, (value) => value.toMap());
    }
    final vdmOptionsValue = vdmOptions;
    if (vdmOptionsValue != null) {
      map['vdmOptions'] = Input.mapOptionalInputValue<
          ConfigurationSetVdmOptions,
          Map<String, dynamic>>(vdmOptionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ConfigurationSetArgs2.fromMap(Map<String, dynamic> map) {
    return ConfigurationSetArgs2(
      configurationSetName: Input.asInput<String>(map['configurationSetName']),
      deliveryOptions: Input.asOptionalInput<ConfigurationSetDeliveryOptions2>(
          map['deliveryOptions']),
      region: Input.asOptionalInput<String>(map['region']),
      reputationOptions:
          Input.asOptionalInput<ConfigurationSetReputationOptions>(
              map['reputationOptions']),
      sendingOptions: Input.asOptionalInput<ConfigurationSetSendingOptions>(
          map['sendingOptions']),
      suppressionOptions:
          Input.asOptionalInput<ConfigurationSetSuppressionOptions>(
              map['suppressionOptions']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      trackingOptions: Input.asOptionalInput<ConfigurationSetTrackingOptions2>(
          map['trackingOptions']),
      vdmOptions:
          Input.asOptionalInput<ConfigurationSetVdmOptions>(map['vdmOptions']),
    );
  }
}
