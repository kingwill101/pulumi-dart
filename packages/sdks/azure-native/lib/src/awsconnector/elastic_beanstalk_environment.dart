import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_beanstalk_environment_args.dart';
import 'elastic_beanstalk_environment_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:awsconnector:ElasticBeanstalkEnvironment xytloifpzeomlsrzhmb /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/elasticBeanstalkEnvironments/{name}
/// ```
class ElasticBeanstalkEnvironment extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<ElasticBeanstalkEnvironmentPropertiesResponse>
  properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ElasticBeanstalkEnvironment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ElasticBeanstalkEnvironment]. {@macro pulumi_awsconnector_elastic_beanstalk_environment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ElasticBeanstalkEnvironment(
    String name, {
    ElasticBeanstalkEnvironmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:awsconnector:ElasticBeanstalkEnvironment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ElasticBeanstalkEnvironmentPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ElasticBeanstalkEnvironmentPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
