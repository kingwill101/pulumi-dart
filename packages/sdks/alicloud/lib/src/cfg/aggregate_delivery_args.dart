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
    required this.aggregatorId,
    this.configurationItemChangeNotification,
    this.configurationSnapshot,
    this.deliveryChannelCondition,
    this.deliveryChannelName,
    required this.deliveryChannelTargetArn,
    required this.deliveryChannelType,
    this.description,
    this.nonCompliantNotification,
    this.oversizedDataOssTargetArn,
    this.status,
  });

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
      aggregatorId: (map['aggregatorId'] as String).input(),
      configurationItemChangeNotification: map['configurationItemChangeNotification'] == null ? null : (map['configurationItemChangeNotification']! as bool).input(),
      configurationSnapshot: map['configurationSnapshot'] == null ? null : (map['configurationSnapshot']! as bool).input(),
      deliveryChannelCondition: map['deliveryChannelCondition'] == null ? null : (map['deliveryChannelCondition']! as String).input(),
      deliveryChannelName: map['deliveryChannelName'] == null ? null : (map['deliveryChannelName']! as String).input(),
      deliveryChannelTargetArn: (map['deliveryChannelTargetArn'] as String).input(),
      deliveryChannelType: (map['deliveryChannelType'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      nonCompliantNotification: map['nonCompliantNotification'] == null ? null : (map['nonCompliantNotification']! as bool).input(),
      oversizedDataOssTargetArn: map['oversizedDataOssTargetArn'] == null ? null : (map['oversizedDataOssTargetArn']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as int).input(),
    );
  }
}

