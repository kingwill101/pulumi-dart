// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_collection_rule_data_sources.dart';
import 'data_collection_rule_destinations.dart';
import 'data_collection_rule_resource_identity.dart';
import 'data_flow.dart';
import 'stream_declaration.dart';

/// {@template pulumi_monitor_data_collection_rule_args_doc}
/// The set of arguments for DataCollectionRule.
/// {@endtemplate}
/// {@macro pulumi_monitor_data_collection_rule_args_doc}
class DataCollectionRuleArgs {
  /// The resource ID of the data collection endpoint that this rule can be used with.
  final pulumi.Input<String>? dataCollectionEndpointId;
  /// The name of the data collection rule. The name is case insensitive.
  final pulumi.Input<String>? dataCollectionRuleName;
  /// The specification of data flows.
  final pulumi.Input<List<DataFlow>>? dataFlows;
  /// The specification of data sources.
  /// This property is optional and can be omitted if the rule is meant to be used via direct calls to the provisioned endpoint.
  final pulumi.Input<DataCollectionRuleDataSources>? dataSources;
  /// Description of the data collection rule.
  final pulumi.Input<String>? description;
  /// The specification of destinations.
  final pulumi.Input<DataCollectionRuleDestinations>? destinations;
  /// Managed service identity of the resource.
  final pulumi.Input<DataCollectionRuleResourceIdentity>? identity;
  /// The kind of the resource.
  final pulumi.Input<String>? kind;
  /// The geo-location where the resource lives.
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Declaration of custom streams used in this rule.
  final pulumi.Input<Map<String, StreamDeclaration>>? streamDeclarations;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DataCollectionRuleArgs].
  /// [dataCollectionEndpointId] The resource ID of the data collection endpoint that this rule can be used with.
  /// [dataCollectionRuleName] The name of the data collection rule. The name is case insensitive.
  /// [dataFlows] The specification of data flows.
  /// [dataSources] The specification of data sources.
  /// [description] Description of the data collection rule.
  /// [destinations] The specification of destinations.
  /// [identity] Managed service identity of the resource.
  /// [kind] The kind of the resource.
  /// [location] The geo-location where the resource lives.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [streamDeclarations] Declaration of custom streams used in this rule.
  /// [tags] Resource tags.
  const DataCollectionRuleArgs({
    this.dataCollectionEndpointId,
    this.dataCollectionRuleName,
    this.dataFlows,
    this.dataSources,
    this.description,
    this.destinations,
    this.identity,
    this.kind,
    this.location,
    required this.resourceGroupName,
    this.streamDeclarations,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataCollectionEndpointId': ?dataCollectionEndpointId,
      'dataCollectionRuleName': ?dataCollectionRuleName,
      'dataFlows': ?pulumi.Input.mapOptionalInputValue<List<DataFlow>, List<Map<String, dynamic>>>(dataFlows, (value) => pulumi.Input.encodeList<DataFlow, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataSources': ?pulumi.Input.mapOptionalInputValue<DataCollectionRuleDataSources, Map<String, dynamic>>(dataSources, (value) => value.toMap()),
      'description': ?description,
      'destinations': ?pulumi.Input.mapOptionalInputValue<DataCollectionRuleDestinations, Map<String, dynamic>>(destinations, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<DataCollectionRuleResourceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'kind': ?kind,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'streamDeclarations': ?pulumi.Input.mapOptionalInputValue<Map<String, StreamDeclaration>, Map<String, Map<String, dynamic>>>(streamDeclarations, (value) => pulumi.Input.encodeMapValues<StreamDeclaration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory DataCollectionRuleArgs.fromMap(Map<String, dynamic> map) {
    return DataCollectionRuleArgs(
      dataCollectionEndpointId: (() { final guardedValue = map['dataCollectionEndpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataCollectionRuleName: (() { final guardedValue = map['dataCollectionRuleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataFlows: (() { final guardedValue = map['dataFlows']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataFlow>(guardedValue, (value) => DataFlow.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dataSources: (() { final guardedValue = map['dataSources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataCollectionRuleDataSources.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataCollectionRuleDestinations.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataCollectionRuleResourceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      streamDeclarations: (() { final guardedValue = map['streamDeclarations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<StreamDeclaration>(guardedValue, (value) => StreamDeclaration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
