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
  DataCollectionRuleArgs({
    pulumi.Output<String>? dataCollectionEndpointId,
    pulumi.Output<String>? dataCollectionRuleName,
    pulumi.Output<List<DataFlow>>? dataFlows,
    pulumi.Output<DataCollectionRuleDataSources>? dataSources,
    pulumi.Output<String>? description,
    pulumi.Output<DataCollectionRuleDestinations>? destinations,
    pulumi.Output<DataCollectionRuleResourceIdentity>? identity,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, StreamDeclaration>>? streamDeclarations,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      dataCollectionEndpointId = pulumi.Input.asOptionalInput<String>(dataCollectionEndpointId),
      dataCollectionRuleName = pulumi.Input.asOptionalInput<String>(dataCollectionRuleName),
      dataFlows = pulumi.Input.asOptionalInput<List<DataFlow>>(dataFlows),
      dataSources = pulumi.Input.asOptionalInput<DataCollectionRuleDataSources>(dataSources),
      description = pulumi.Input.asOptionalInput<String>(description),
      destinations = pulumi.Input.asOptionalInput<DataCollectionRuleDestinations>(destinations),
      identity = pulumi.Input.asOptionalInput<DataCollectionRuleResourceIdentity>(identity),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      streamDeclarations = pulumi.Input.asOptionalInput<Map<String, StreamDeclaration>>(streamDeclarations),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      dataCollectionEndpointId: map['dataCollectionEndpointId'] == null ? null : pulumi.Output.create<String>(map['dataCollectionEndpointId'] as String),
      dataCollectionRuleName: map['dataCollectionRuleName'] == null ? null : pulumi.Output.create<String>(map['dataCollectionRuleName'] as String),
      dataFlows: map['dataFlows'] == null ? null : pulumi.Output.create<List<DataFlow>>(pulumi.Input.decodeList<DataFlow>(map['dataFlows'], (value) => DataFlow.fromMap((value as Map).cast<String, dynamic>()))),
      dataSources: map['dataSources'] == null ? null : pulumi.Output.create<DataCollectionRuleDataSources>(DataCollectionRuleDataSources.fromMap((map['dataSources'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      destinations: map['destinations'] == null ? null : pulumi.Output.create<DataCollectionRuleDestinations>(DataCollectionRuleDestinations.fromMap((map['destinations'] as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : pulumi.Output.create<DataCollectionRuleResourceIdentity>(DataCollectionRuleResourceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      streamDeclarations: map['streamDeclarations'] == null ? null : pulumi.Output.create<Map<String, StreamDeclaration>>(pulumi.Input.decodeMapValues<StreamDeclaration>(map['streamDeclarations'], (value) => StreamDeclaration.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

