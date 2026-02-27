import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_client_args.dart';

/// AzureClient resources hold client authentication information needed by the Anthos Multi-Cloud API to manage Azure resources on your Azure subscription.When an AzureCluster is created, an AzureClient resource needs to be provided and all operations on Azure resources associated to that cluster will authenticate to Azure services using the given client.AzureClient resources are immutable and cannot be modified upon creation.Each AzureClient resource is bound to a single Azure Active Directory Application and tenant.
///
/// For more information, see:
/// * [Multicloud overview](https://cloud.google.com/kubernetes-engine/multi-cloud/docs)
/// ## Example Usage
///
/// ### Basic_azure_client
/// A basic example of a containerazure azure client
///
///
/// ## Import
///
/// Client can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/azureClients/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Client can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:container/azureClient:AzureClient default projects/{{project}}/locations/{{location}}/azureClients/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:container/azureClient:AzureClient default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:container/azureClient:AzureClient default {{location}}/{{name}}
/// ```
class AzureClient extends pulumi.CustomResource {
  /// The Azure Active Directory Application ID.
  late final pulumi.Output<String> applicationId;

  /// Output only. The PEM encoded x509 certificate.
  late final pulumi.Output<String> certificate;

  /// Output only. The time at which this resource was created.
  late final pulumi.Output<String> createTime;

  /// The location for the resource
  late final pulumi.Output<String> location;

  /// The name of this resource.
  late final pulumi.Output<String> name;

  /// The project for the resource
  late final pulumi.Output<String> project;

  /// The Azure Active Directory Tenant ID.
  ///
  ///
  ///
  /// - - -
  late final pulumi.Output<String> tenantId;

  /// Output only. A globally unique identifier for the client.
  late final pulumi.Output<String> uid;

  AzureClient(
    String name, {
    AzureClientArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:container/azureClient:AzureClient',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationId = registerOutput<String>('applicationId');
    this.certificate = registerOutput<String>('certificate');
    this.createTime = registerOutput<String>('createTime');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.tenantId = registerOutput<String>('tenantId');
    this.uid = registerOutput<String>('uid');
  }
}
