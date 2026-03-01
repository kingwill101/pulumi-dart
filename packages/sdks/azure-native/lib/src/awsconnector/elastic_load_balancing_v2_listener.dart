import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_load_balancing_v2_listener_args.dart';
import 'elastic_load_balancing_v2_listener_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:awsconnector:ElasticLoadBalancingV2Listener iohfximiossvuyckrysts /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/elasticLoadBalancingV2Listeners/{name}
/// ```
class ElasticLoadBalancingV2Listener extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<ElasticLoadBalancingV2ListenerPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ElasticLoadBalancingV2Listener].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ElasticLoadBalancingV2Listener]. {@macro pulumi_awsconnector_elastic_load_balancing_v2_listener_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ElasticLoadBalancingV2Listener(
    String name, {
    ElasticLoadBalancingV2ListenerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:ElasticLoadBalancingV2Listener',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<ElasticLoadBalancingV2ListenerPropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
