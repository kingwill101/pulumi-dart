// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_collection_rule_data_flow.dart';
import 'data_collection_rule_data_sources.dart';
import 'data_collection_rule_destinations.dart';
import 'data_collection_rule_identity.dart';
import 'data_collection_rule_stream_declaration.dart';

/// {@template pulumi_monitoring_data_collection_rule_data_collection_rule_args_doc}
/// The set of arguments for DataCollectionRule.
/// {@endtemplate}
/// {@macro pulumi_monitoring_data_collection_rule_data_collection_rule_args_doc}
class DataCollectionRuleArgs {
  /// The resource ID of the Data Collection Endpoint that this rule can be used with.
  final pulumi.Input<String>? dataCollectionEndpointId;
  /// One or more `data_flow` blocks as defined below.
  final pulumi.Input<List<DataCollectionRuleDataFlow>> dataFlows;
  /// A `data_sources` block as defined below. This property is optional and can be omitted if the rule is meant to be used via direct calls to the provisioned endpoint.
  final pulumi.Input<DataCollectionRuleDataSources>? dataSources;
  /// The description of the Data Collection Rule.
  final pulumi.Input<String>? description;
  /// A `destinations` block as defined below.
  final pulumi.Input<DataCollectionRuleDestinations> destinations;
  /// An `identity` block as defined below.
  final pulumi.Input<DataCollectionRuleIdentity>? identity;
  /// The kind of the Data Collection Rule. Possible values are `Linux`, `Windows`, `AgentDirectToStore` and `WorkspaceTransforms`. A rule of kind `Linux` does not allow for `windows_event_log` data sources. And a rule of kind `Windows` does not allow for `syslog` data sources. If kind is not specified, all kinds of data sources are allowed.
  ///
  /// > **Note:** Once `kind` has been set, changing it forces a new Data Collection Rule to be created.
  final pulumi.Input<String>? kind;
  /// The Azure Region where the Data Collection Rule should exist. Changing this forces a new Data Collection Rule to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Data Collection Rule. Changing this forces a new Data Collection Rule to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Data Collection Rule should exist. Changing this forces a new Data Collection Rule to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `stream_declaration` block as defined below.
  final pulumi.Input<List<DataCollectionRuleStreamDeclaration>>? streamDeclarations;
  /// A mapping of tags which should be assigned to the Data Collection Rule.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DataCollectionRuleArgs].
  /// [dataCollectionEndpointId] The resource ID of the Data Collection Endpoint that this rule can be used with.
  /// [dataFlows] One or more `data_flow` blocks as defined below.
  /// [dataSources] A `data_sources` block as defined below. This property is optional and can be omitted if the rule is meant to be used via direct calls to the provisioned endpoint.
  /// [description] The description of the Data Collection Rule.
  /// [destinations] A `destinations` block as defined below.
  /// [identity] An `identity` block as defined below.
  /// [kind] The kind of the Data Collection Rule. Possible values are `Linux`, `Windows`, `AgentDirectToStore` and `WorkspaceTransforms`. A rule of kind `Linux` does not allow for `windows_event_log` data sources. And a rule of kind `Windows` does not allow for `syslog` data sources. If kind is not specified, all kinds of data sources are allowed.
  /// [location] The Azure Region where the Data Collection Rule should exist. Changing this forces a new Data Collection Rule to be created.
  /// [name] The name which should be used for this Data Collection Rule. Changing this forces a new Data Collection Rule to be created.
  /// [resourceGroupName] The name of the Resource Group where the Data Collection Rule should exist. Changing this forces a new Data Collection Rule to be created.
  /// [streamDeclarations] A `stream_declaration` block as defined below.
  /// [tags] A mapping of tags which should be assigned to the Data Collection Rule.
  DataCollectionRuleArgs({
    String? dataCollectionEndpointId,
    required List<DataCollectionRuleDataFlow> dataFlows,
    DataCollectionRuleDataSources? dataSources,
    String? description,
    required DataCollectionRuleDestinations destinations,
    DataCollectionRuleIdentity? identity,
    String? kind,
    String? location,
    String? name,
    required String resourceGroupName,
    List<DataCollectionRuleStreamDeclaration>? streamDeclarations,
    Map<String, String>? tags,
  }) :
      dataCollectionEndpointId = pulumi.Input.asOptionalInput<String>(dataCollectionEndpointId),
      dataFlows = pulumi.Input.asInput<List<DataCollectionRuleDataFlow>>(dataFlows),
      dataSources = pulumi.Input.asOptionalInput<DataCollectionRuleDataSources>(dataSources),
      description = pulumi.Input.asOptionalInput<String>(description),
      destinations = pulumi.Input.asInput<DataCollectionRuleDestinations>(destinations),
      identity = pulumi.Input.asOptionalInput<DataCollectionRuleIdentity>(identity),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      streamDeclarations = pulumi.Input.asOptionalInput<List<DataCollectionRuleStreamDeclaration>>(streamDeclarations),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataCollectionEndpointId': ?dataCollectionEndpointId,
      'dataFlows': pulumi.Input.mapInputValue<List<DataCollectionRuleDataFlow>, List<Map<String, dynamic>>>(dataFlows, (value) => pulumi.Input.encodeList<DataCollectionRuleDataFlow, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataSources': ?pulumi.Input.mapOptionalInputValue<DataCollectionRuleDataSources, Map<String, dynamic>>(dataSources, (value) => value.toMap()),
      'description': ?description,
      'destinations': pulumi.Input.mapInputValue<DataCollectionRuleDestinations, Map<String, dynamic>>(destinations, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<DataCollectionRuleIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'kind': ?kind,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'streamDeclarations': ?pulumi.Input.mapOptionalInputValue<List<DataCollectionRuleStreamDeclaration>, List<Map<String, dynamic>>>(streamDeclarations, (value) => pulumi.Input.encodeList<DataCollectionRuleStreamDeclaration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory DataCollectionRuleArgs.fromMap(Map<String, dynamic> map) {
    return DataCollectionRuleArgs(
      dataCollectionEndpointId: map['dataCollectionEndpointId'] == null ? null : map['dataCollectionEndpointId'] as String,
      dataFlows: pulumi.Input.decodeList<DataCollectionRuleDataFlow>(map['dataFlows'], (value) => DataCollectionRuleDataFlow.fromMap((value as Map).cast<String, dynamic>())),
      dataSources: map['dataSources'] == null ? null : DataCollectionRuleDataSources.fromMap((map['dataSources'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      destinations: DataCollectionRuleDestinations.fromMap((map['destinations'] as Map).cast<String, dynamic>()),
      identity: map['identity'] == null ? null : DataCollectionRuleIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      kind: map['kind'] == null ? null : map['kind'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      streamDeclarations: map['streamDeclarations'] == null ? null : pulumi.Input.decodeList<DataCollectionRuleStreamDeclaration>(map['streamDeclarations'], (value) => DataCollectionRuleStreamDeclaration.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

