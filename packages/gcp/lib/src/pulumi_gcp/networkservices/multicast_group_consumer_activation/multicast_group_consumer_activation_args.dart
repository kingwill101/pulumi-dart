// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../multicast_group_consumer_activation_log_config/multicast_group_consumer_activation_log_config.dart';

/// The set of arguments for MulticastGroupConsumerActivation.
class MulticastGroupConsumerActivationArgs {
  /// An optional text description of the multicast group consumer activation.
  final Input<String>? description;

  /// Labels as key-value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final Input<String> location;

  /// The logging configuration.
  /// Structure is documented below.
  final Input<MulticastGroupConsumerActivationLogConfig>? logConfig;

  /// The resource name of the multicast consumer association that is in the
  /// same zone as this multicast group consumer activation.
  /// Use the following format:
  /// `projects/*/locations/*/multicastConsumerAssociations/*`.
  final Input<String> multicastConsumerAssociation;

  /// A unique name for the multicast group consumer activation.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  final Input<String> multicastGroupConsumerActivationId;

  /// The resource name of the multicast group range activation created by the
  /// admin in the same zone as this multicast group consumer activation. Use the
  /// following format:
  /// // `projects/*/locations/*/multicastGroupRangeActivations/*`.
  final Input<String> multicastGroupRangeActivation;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  MulticastGroupConsumerActivationArgs({
    this.description,
    this.labels,
    required this.location,
    this.logConfig,
    required this.multicastConsumerAssociation,
    required this.multicastGroupConsumerActivationId,
    required this.multicastGroupRangeActivation,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final logConfigValue = logConfig;
    if (logConfigValue != null) {
      map['logConfig'] = Input.mapOptionalInputValue<
          MulticastGroupConsumerActivationLogConfig,
          Map<String, dynamic>>(logConfigValue, (value) => value.toMap());
    }
    map['multicastConsumerAssociation'] = multicastConsumerAssociation;
    map['multicastGroupConsumerActivationId'] =
        multicastGroupConsumerActivationId;
    map['multicastGroupRangeActivation'] = multicastGroupRangeActivation;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory MulticastGroupConsumerActivationArgs.fromMap(
      Map<String, dynamic> map) {
    return MulticastGroupConsumerActivationArgs(
      description: Input.asOptionalInput<String>(map['description']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      logConfig:
          Input.asOptionalInput<MulticastGroupConsumerActivationLogConfig>(
              map['logConfig']),
      multicastConsumerAssociation:
          Input.asInput<String>(map['multicastConsumerAssociation']),
      multicastGroupConsumerActivationId:
          Input.asInput<String>(map['multicastGroupConsumerActivationId']),
      multicastGroupRangeActivation:
          Input.asInput<String>(map['multicastGroupRangeActivation']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
