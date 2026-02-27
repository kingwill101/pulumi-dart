// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../multicast_group_range_activation_log_config/multicast_group_range_activation_log_config.dart';

/// The set of arguments for MulticastGroupRangeActivation.
class MulticastGroupRangeActivationArgs {
  /// An optional text description of the multicast group range activation.
  final Input<String>? description;

  /// Labels as key-value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final Input<String> location;

  /// The logging configuration.
  /// Structure is documented below.
  final Input<MulticastGroupRangeActivationLogConfig>? logConfig;

  /// The resource name of a multicast domain activation that is in the
  /// same zone as this multicast group.
  /// Use the following format:
  /// `projects/*/locations/*/multicastDomainActivations/*`
  final Input<String> multicastDomainActivation;

  /// The resource name of the global multicast group range for the
  /// group. Use the following format:
  /// `projects/*/locations/global/multicastGroupRanges/*`
  final Input<String> multicastGroupRange;

  /// A unique name for the multicast group range activation.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  final Input<String> multicastGroupRangeActivationId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  MulticastGroupRangeActivationArgs({
    this.description,
    this.labels,
    required this.location,
    this.logConfig,
    required this.multicastDomainActivation,
    required this.multicastGroupRange,
    required this.multicastGroupRangeActivationId,
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
          MulticastGroupRangeActivationLogConfig,
          Map<String, dynamic>>(logConfigValue, (value) => value.toMap());
    }
    map['multicastDomainActivation'] = multicastDomainActivation;
    map['multicastGroupRange'] = multicastGroupRange;
    map['multicastGroupRangeActivationId'] = multicastGroupRangeActivationId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory MulticastGroupRangeActivationArgs.fromMap(Map<String, dynamic> map) {
    return MulticastGroupRangeActivationArgs(
      description: Input.asOptionalInput<String>(map['description']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      logConfig: Input.asOptionalInput<MulticastGroupRangeActivationLogConfig>(
          map['logConfig']),
      multicastDomainActivation:
          Input.asInput<String>(map['multicastDomainActivation']),
      multicastGroupRange: Input.asInput<String>(map['multicastGroupRange']),
      multicastGroupRangeActivationId:
          Input.asInput<String>(map['multicastGroupRangeActivationId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
