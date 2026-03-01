// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cfg_aggregate_delivery_aggregate_delivery_args_doc}
/// The set of arguments for AggregateDelivery.
/// {@endtemplate}
/// {@macro pulumi_cfg_aggregate_delivery_aggregate_delivery_args_doc}
class AggregateDeliveryArgs {
  /// Aggregator ID.
  final pulumi.Input<String> aggregatorId;
  /// Indicates whether the specified destination receives resource change logs. If the value of this parameter is true, Cloud Config delivers the resource change logs to OSS, Log Service, or MNS when the configurations of the resources change. Valid values:
  /// - true: The specified destination receives resource change logs.
  /// - false: The specified destination does not receive resource change logs.
  final pulumi.Input<bool>? configurationItemChangeNotification;
  /// Indicates whether the specified destination receives scheduled resource snapshots. Cloud Config delivers scheduled resource snapshots at 04:00Z and 16:00Z to OSS, MNS, or Log Service every day. The time is displayed in UTC. Valid values:
  /// - true: The specified destination receives scheduled resource snapshots.
  /// - false: The specified destination does not receive scheduled resource snapshots.
  final pulumi.Input<bool>? configurationSnapshot;
  /// The rule that is attached to the delivery channel.
  ///
  /// This parameter is available when you deliver data of all types to MNS or deliver snapshots to Log Service.
  ///
  /// If you specify the risk level or resource types for subscription events, this is as follows:
  ///
  /// The lowest risk level of the events to which you want to subscribe is in the following format: {"filterType":"RuleRiskLevel","value":"1","multiple":false}, The value field indicates the risk level of the events to which you want to subscribe. Valid values: 1, 2, and 3. The value 1 indicates the high risk level, the value 2 indicates the medium risk level, and the value 3 indicates the low risk level.
  ///
  /// The setting of the resource types of the events to which you want to subscribe is in the following format: {"filterType":"ResourceType","values":["ACS::ACK::Cluster","ACS::ActionTrail::Trail","ACS::CBWP::CommonBandwidthPackage"],"multiple":true}, The values field indicates the resource types of the events to which you want to subscribe. The value of the field is a JSON array.
  ///
  /// Examples:[{"filterType":"ResourceType","values":["ACS::ActionTrail::Trail","ACS::CBWP::CommonBandwidthPackage","ACS::CDN::Domain","ACS::CEN::CenBandwidthPackage","ACS::CEN::CenInstance","ACS::CEN::Flowlog","ACS::DdosCoo::Instance"],"multiple":true}].
  final pulumi.Input<String>? deliveryChannelCondition;
  /// The name of the delivery channel.
  final pulumi.Input<String>? deliveryChannelName;
  /// The ARN of the delivery destination.
  /// - If the value of the DeliveryChannelType parameter is OSS, the value of this parameter is the ARN of the destination OSS bucket.
  /// - If the value of the DeliveryChannelType parameter is MNS, the value of this parameter is the ARN of the destination MNS topic.
  /// - If the value of the DeliveryChannelType parameter is SLS, the value of this parameter is the ARN of the destination Log Service Logstore.
  final pulumi.Input<String> deliveryChannelTargetArn;
  /// The type of the delivery channel. Valid values:
  /// - OSS: Object Storage Service (OSS)
  /// - MNS: Message Service (MNS)
  /// - SLS: Log Service
  final pulumi.Input<String> deliveryChannelType;
  /// The description of the delivery method.
  final pulumi.Input<String>? description;
  /// Indicates whether the specified destination receives resource non-compliance events. If the value of this parameter is true, Cloud Config delivers resource non-compliance events to Log Service or MNS when resources are evaluated as non-compliant. Valid values:
  /// - true: The specified destination receives resource non-compliance events.
  /// - false: The specified destination does not receive resource non-compliance events.
  final pulumi.Input<bool>? nonCompliantNotification;
  /// The ARN of the OSS bucket to which the delivered data is transferred when the size of the data exceeds the specified upper limit of the delivery channel.
  final pulumi.Input<String>? oversizedDataOssTargetArn;
  /// The status of the delivery method. Valid values:
  /// - 0: The delivery method is disabled.
  /// - 1: The delivery destination is enabled. This is the default value.
  final pulumi.Input<int>? status;

  /// Creates a new [AggregateDeliveryArgs].
  /// [aggregatorId] Aggregator ID.
  /// [configurationItemChangeNotification] Indicates whether the specified destination receives resource change logs. If the value of this parameter is true, Cloud Config delivers the resource change logs to OSS, Log Service, or MNS when the configurations of the resources change. Valid values:
  /// [configurationSnapshot] Indicates whether the specified destination receives scheduled resource snapshots. Cloud Config delivers scheduled resource snapshots at 04:00Z and 16:00Z to OSS, MNS, or Log Service every day. The time is displayed in UTC. Valid values:
  /// [deliveryChannelCondition] The rule that is attached to the delivery channel.
  /// [deliveryChannelName] The name of the delivery channel.
  /// [deliveryChannelTargetArn] The ARN of the delivery destination.
  /// [deliveryChannelType] The type of the delivery channel. Valid values:
  /// [description] The description of the delivery method.
  /// [nonCompliantNotification] Indicates whether the specified destination receives resource non-compliance events. If the value of this parameter is true, Cloud Config delivers resource non-compliance events to Log Service or MNS when resources are evaluated as non-compliant. Valid values:
  /// [oversizedDataOssTargetArn] The ARN of the OSS bucket to which the delivered data is transferred when the size of the data exceeds the specified upper limit of the delivery channel.
  /// [status] The status of the delivery method. Valid values:
  AggregateDeliveryArgs({
    required pulumi.Output<String> aggregatorId,
    pulumi.Output<bool>? configurationItemChangeNotification,
    pulumi.Output<bool>? configurationSnapshot,
    pulumi.Output<String>? deliveryChannelCondition,
    pulumi.Output<String>? deliveryChannelName,
    required pulumi.Output<String> deliveryChannelTargetArn,
    required pulumi.Output<String> deliveryChannelType,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? nonCompliantNotification,
    pulumi.Output<String>? oversizedDataOssTargetArn,
    pulumi.Output<int>? status,
  }) :
      aggregatorId = pulumi.Input.asInput<String>(aggregatorId),
      configurationItemChangeNotification = pulumi.Input.asOptionalInput<bool>(configurationItemChangeNotification),
      configurationSnapshot = pulumi.Input.asOptionalInput<bool>(configurationSnapshot),
      deliveryChannelCondition = pulumi.Input.asOptionalInput<String>(deliveryChannelCondition),
      deliveryChannelName = pulumi.Input.asOptionalInput<String>(deliveryChannelName),
      deliveryChannelTargetArn = pulumi.Input.asInput<String>(deliveryChannelTargetArn),
      deliveryChannelType = pulumi.Input.asInput<String>(deliveryChannelType),
      description = pulumi.Input.asOptionalInput<String>(description),
      nonCompliantNotification = pulumi.Input.asOptionalInput<bool>(nonCompliantNotification),
      oversizedDataOssTargetArn = pulumi.Input.asOptionalInput<String>(oversizedDataOssTargetArn),
      status = pulumi.Input.asOptionalInput<int>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregatorId': aggregatorId,
      'configurationItemChangeNotification': ?configurationItemChangeNotification,
      'configurationSnapshot': ?configurationSnapshot,
      'deliveryChannelCondition': ?deliveryChannelCondition,
      'deliveryChannelName': ?deliveryChannelName,
      'deliveryChannelTargetArn': deliveryChannelTargetArn,
      'deliveryChannelType': deliveryChannelType,
      'description': ?description,
      'nonCompliantNotification': ?nonCompliantNotification,
      'oversizedDataOssTargetArn': ?oversizedDataOssTargetArn,
      'status': ?status,
    };
  }

  factory AggregateDeliveryArgs.fromMap(Map<String, dynamic> map) {
    return AggregateDeliveryArgs(
      aggregatorId: pulumi.Output.create<String>(map['aggregatorId'] as String),
      configurationItemChangeNotification: map['configurationItemChangeNotification'] == null ? null : pulumi.Output.create<bool>(map['configurationItemChangeNotification'] as bool),
      configurationSnapshot: map['configurationSnapshot'] == null ? null : pulumi.Output.create<bool>(map['configurationSnapshot'] as bool),
      deliveryChannelCondition: map['deliveryChannelCondition'] == null ? null : pulumi.Output.create<String>(map['deliveryChannelCondition'] as String),
      deliveryChannelName: map['deliveryChannelName'] == null ? null : pulumi.Output.create<String>(map['deliveryChannelName'] as String),
      deliveryChannelTargetArn: pulumi.Output.create<String>(map['deliveryChannelTargetArn'] as String),
      deliveryChannelType: pulumi.Output.create<String>(map['deliveryChannelType'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      nonCompliantNotification: map['nonCompliantNotification'] == null ? null : pulumi.Output.create<bool>(map['nonCompliantNotification'] as bool),
      oversizedDataOssTargetArn: map['oversizedDataOssTargetArn'] == null ? null : pulumi.Output.create<String>(map['oversizedDataOssTargetArn'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<int>(map['status'] as int),
    );
  }
}

