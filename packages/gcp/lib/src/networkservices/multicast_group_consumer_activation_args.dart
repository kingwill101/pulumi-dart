// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multicast_group_consumer_activation_log_config.dart';

/// {@template pulumi_networkservices_multicast_group_consumer_activation_multicast_group_consumer_activation_args_doc}
/// The set of arguments for MulticastGroupConsumerActivation.
/// {@endtemplate}
/// {@macro pulumi_networkservices_multicast_group_consumer_activation_multicast_group_consumer_activation_args_doc}
class MulticastGroupConsumerActivationArgs {
  /// An optional text description of the multicast group consumer activation.
  final pulumi.Input<String>? description;

  /// Labels as key-value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;

  /// The logging configuration.
  /// Structure is documented below.
  final pulumi.Input<MulticastGroupConsumerActivationLogConfig>? logConfig;

  /// The resource name of the multicast consumer association that is in the
  /// same zone as this multicast group consumer activation.
  /// Use the following format:
  /// `projects/*/locations/*/multicastConsumerAssociations/*`.
  final pulumi.Input<String> multicastConsumerAssociation;

  /// A unique name for the multicast group consumer activation.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  final pulumi.Input<String> multicastGroupConsumerActivationId;

  /// The resource name of the multicast group range activation created by the
  /// admin in the same zone as this multicast group consumer activation. Use the
  /// following format:
  /// // `projects/*/locations/*/multicastGroupRangeActivations/*`.
  final pulumi.Input<String> multicastGroupRangeActivation;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [MulticastGroupConsumerActivationArgs].
  /// [description] An optional text description of the multicast group consumer activation.
  /// [labels] Labels as key-value pairs
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [logConfig] The logging configuration.
  /// [multicastConsumerAssociation] The resource name of the multicast consumer association that is in the
  /// [multicastGroupConsumerActivationId] A unique name for the multicast group consumer activation.
  /// [multicastGroupRangeActivation] The resource name of the multicast group range activation created by the
  /// [project] The ID of the project in which the resource belongs.
  MulticastGroupConsumerActivationArgs({
    String? description,
    Map<String, String>? labels,
    required String location,
    MulticastGroupConsumerActivationLogConfig? logConfig,
    required String multicastConsumerAssociation,
    required String multicastGroupConsumerActivationId,
    required String multicastGroupRangeActivation,
    String? project,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asInput<String>(location),
        logConfig = pulumi.Input.asOptionalInput<
            MulticastGroupConsumerActivationLogConfig>(logConfig),
        multicastConsumerAssociation =
            pulumi.Input.asInput<String>(multicastConsumerAssociation),
        multicastGroupConsumerActivationId =
            pulumi.Input.asInput<String>(multicastGroupConsumerActivationId),
        multicastGroupRangeActivation =
            pulumi.Input.asInput<String>(multicastGroupRangeActivation),
        project = pulumi.Input.asOptionalInput<String>(project);

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
      map['logConfig'] = pulumi.Input.mapOptionalInputValue<
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
      description:
          map['description'] == null ? null : map['description'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      logConfig: map['logConfig'] == null
          ? null
          : MulticastGroupConsumerActivationLogConfig.fromMap(
              (map['logConfig'] as Map).cast<String, dynamic>()),
      multicastConsumerAssociation:
          map['multicastConsumerAssociation'] as String,
      multicastGroupConsumerActivationId:
          map['multicastGroupConsumerActivationId'] as String,
      multicastGroupRangeActivation:
          map['multicastGroupRangeActivation'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
