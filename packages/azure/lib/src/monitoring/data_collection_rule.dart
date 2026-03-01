import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_collection_rule_args.dart';
import 'data_collection_rule_data_flow.dart';
import 'data_collection_rule_data_sources.dart';
import 'data_collection_rule_destinations.dart';
import 'data_collection_rule_identity.dart';
import 'data_collection_rule_stream_declaration.dart';

/// Manages a Data Collection Rule.
///
/// ## Import
///
/// Data Collection Rules can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:monitoring/dataCollectionRule:DataCollectionRule example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/group1/providers/Microsoft.Insights/dataCollectionRules/rule1
/// ```
class DataCollectionRule extends pulumi.CustomResource {
  /// The resource ID of the Data Collection Endpoint that this rule can be used with.
  late final pulumi.Output<String?> dataCollectionEndpointId;
  /// One or more `data_flow` blocks as defined below.
  late final pulumi.Output<List<DataCollectionRuleDataFlow>> dataFlows;
  /// A `data_sources` block as defined below. This property is optional and can be omitted if the rule is meant to be used via direct calls to the provisioned endpoint.
  late final pulumi.Output<DataCollectionRuleDataSources?> dataSources;
  /// The description of the Data Collection Rule.
  late final pulumi.Output<String?> description;
  /// A `destinations` block as defined below.
  late final pulumi.Output<DataCollectionRuleDestinations> destinations;
  /// An `identity` block as defined below.
  late final pulumi.Output<DataCollectionRuleIdentity?> identity;
  /// The immutable ID of the Data Collection Rule.
  late final pulumi.Output<String> immutableId;
  /// The kind of the Data Collection Rule. Possible values are `Linux`, `Windows`, `AgentDirectToStore` and `WorkspaceTransforms`. A rule of kind `Linux` does not allow for `windows_event_log` data sources. And a rule of kind `Windows` does not allow for `syslog` data sources. If kind is not specified, all kinds of data sources are allowed.
  ///
  /// > **Note:** Once `kind` has been set, changing it forces a new Data Collection Rule to be created.
  late final pulumi.Output<String?> kind;
  /// The Azure Region where the Data Collection Rule should exist. Changing this forces a new Data Collection Rule to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for this Data Collection Rule. Changing this forces a new Data Collection Rule to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the Data Collection Rule should exist. Changing this forces a new Data Collection Rule to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A `stream_declaration` block as defined below.
  late final pulumi.Output<List<DataCollectionRuleStreamDeclaration>?> streamDeclarations;
  /// A mapping of tags which should be assigned to the Data Collection Rule.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [DataCollectionRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataCollectionRule]. {@macro pulumi_monitoring_data_collection_rule_data_collection_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataCollectionRule(
    String name, {
    DataCollectionRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:monitoring/dataCollectionRule:DataCollectionRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dataCollectionEndpointId = registerOutput<String?>('dataCollectionEndpointId');
    this.dataFlows = registerOutput<List<DataCollectionRuleDataFlow>>('dataFlows');
    this.dataSources = registerOutput<DataCollectionRuleDataSources?>('dataSources');
    this.description = registerOutput<String?>('description');
    this.destinations = registerOutput<DataCollectionRuleDestinations>('destinations');
    this.identity = registerOutput<DataCollectionRuleIdentity?>('identity');
    this.immutableId = registerOutput<String>('immutableId');
    this.kind = registerOutput<String?>('kind');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.streamDeclarations = registerOutput<List<DataCollectionRuleStreamDeclaration>?>('streamDeclarations');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
