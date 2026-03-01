// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_log_format_parameters.dart';
import 'managed_service_identity.dart';
import 'retention_policy_parameters.dart';
import 'traffic_analytics_properties.dart';

/// {@template pulumi_network_flow_log_args_doc}
/// The set of arguments for FlowLog.
/// {@endtemplate}
/// {@macro pulumi_network_flow_log_args_doc}
class FlowLogArgs {
  /// Flag to enable/disable flow logging.
  final pulumi.Input<bool>? enabled;
  /// Optional field to filter network traffic logs based on SrcIP, SrcPort, DstIP, DstPort, Protocol, Encryption, Direction and Action. If not specified, all network traffic will be logged.
  final pulumi.Input<String>? enabledFilteringCriteria;
  /// Parameters that define the configuration of traffic analytics.
  final pulumi.Input<TrafficAnalyticsProperties>? flowAnalyticsConfiguration;
  /// The name of the flow log.
  final pulumi.Input<String>? flowLogName;
  /// Parameters that define the flow log format.
  final pulumi.Input<FlowLogFormatParameters>? format;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// FlowLog resource Managed Identity
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the network watcher.
  final pulumi.Input<String> networkWatcherName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Parameters that define the retention policy for flow log.
  final pulumi.Input<RetentionPolicyParameters>? retentionPolicy;
  /// ID of the storage account which is used to store the flow log.
  final pulumi.Input<String> storageId;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// ID of network security group to which flow log will be applied.
  final pulumi.Input<String> targetResourceId;

  /// Creates a new [FlowLogArgs].
  /// [enabled] Flag to enable/disable flow logging.
  /// [enabledFilteringCriteria] Optional field to filter network traffic logs based on SrcIP, SrcPort, DstIP, DstPort, Protocol, Encryption, Direction and Action. If not specified, all network traffic will be logged.
  /// [flowAnalyticsConfiguration] Parameters that define the configuration of traffic analytics.
  /// [flowLogName] The name of the flow log.
  /// [format] Parameters that define the flow log format.
  /// [id] Resource ID.
  /// [identity] FlowLog resource Managed Identity
  /// [location] Resource location.
  /// [networkWatcherName] The name of the network watcher.
  /// [resourceGroupName] The name of the resource group.
  /// [retentionPolicy] Parameters that define the retention policy for flow log.
  /// [storageId] ID of the storage account which is used to store the flow log.
  /// [tags] Resource tags.
  /// [targetResourceId] ID of network security group to which flow log will be applied.
  FlowLogArgs({
    bool? enabled,
    String? enabledFilteringCriteria,
    TrafficAnalyticsProperties? flowAnalyticsConfiguration,
    String? flowLogName,
    FlowLogFormatParameters? format,
    String? id,
    ManagedServiceIdentity? identity,
    String? location,
    required String networkWatcherName,
    required String resourceGroupName,
    RetentionPolicyParameters? retentionPolicy,
    required String storageId,
    Map<String, String>? tags,
    required String targetResourceId,
  }) :
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      enabledFilteringCriteria = pulumi.Input.asOptionalInput<String>(enabledFilteringCriteria),
      flowAnalyticsConfiguration = pulumi.Input.asOptionalInput<TrafficAnalyticsProperties>(flowAnalyticsConfiguration),
      flowLogName = pulumi.Input.asOptionalInput<String>(flowLogName),
      format = pulumi.Input.asOptionalInput<FlowLogFormatParameters>(format),
      id = pulumi.Input.asOptionalInput<String>(id),
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      networkWatcherName = pulumi.Input.asInput<String>(networkWatcherName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      retentionPolicy = pulumi.Input.asOptionalInput<RetentionPolicyParameters>(retentionPolicy),
      storageId = pulumi.Input.asInput<String>(storageId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      targetResourceId = pulumi.Input.asInput<String>(targetResourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'enabledFilteringCriteria': ?enabledFilteringCriteria,
      'flowAnalyticsConfiguration': ?pulumi.Input.mapOptionalInputValue<TrafficAnalyticsProperties, Map<String, dynamic>>(flowAnalyticsConfiguration, (value) => value.toMap()),
      'flowLogName': ?flowLogName,
      'format': ?pulumi.Input.mapOptionalInputValue<FlowLogFormatParameters, Map<String, dynamic>>(format, (value) => value.toMap()),
      'id': ?id,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'networkWatcherName': networkWatcherName,
      'resourceGroupName': resourceGroupName,
      'retentionPolicy': ?pulumi.Input.mapOptionalInputValue<RetentionPolicyParameters, Map<String, dynamic>>(retentionPolicy, (value) => value.toMap()),
      'storageId': storageId,
      'tags': ?tags,
      'targetResourceId': targetResourceId,
    };
  }

  factory FlowLogArgs.fromMap(Map<String, dynamic> map) {
    return FlowLogArgs(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      enabledFilteringCriteria: map['enabledFilteringCriteria'] == null ? null : map['enabledFilteringCriteria'] as String,
      flowAnalyticsConfiguration: map['flowAnalyticsConfiguration'] == null ? null : TrafficAnalyticsProperties.fromMap((map['flowAnalyticsConfiguration'] as Map).cast<String, dynamic>()),
      flowLogName: map['flowLogName'] == null ? null : map['flowLogName'] as String,
      format: map['format'] == null ? null : FlowLogFormatParameters.fromMap((map['format'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
      identity: map['identity'] == null ? null : ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      networkWatcherName: map['networkWatcherName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      retentionPolicy: map['retentionPolicy'] == null ? null : RetentionPolicyParameters.fromMap((map['retentionPolicy'] as Map).cast<String, dynamic>()),
      storageId: map['storageId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      targetResourceId: map['targetResourceId'] as String,
    );
  }
}

