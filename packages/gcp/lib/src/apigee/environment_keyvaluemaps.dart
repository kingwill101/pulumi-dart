import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_keyvaluemaps_args.dart';

/// Collection of key/value string pairs.
///
///
/// To get more information about EnvironmentKeyvaluemaps, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.environments.keyvaluemaps/create)
/// * How-to Guides
/// * [Using key value maps](https://cloud.google.com/apigee/docs/api-platform/cache/key-value-maps)
///
/// ## Example Usage
///
/// ### Apigee Environment Keyvaluemaps Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const current = gcp.organizations.getClientConfig({});
/// const apigeeNetwork = new gcp.compute.Network("apigee_network", {name: "apigee-network"});
/// const apigeeRange = new gcp.compute.GlobalAddress("apigee_range", {
///     name: "apigee-range",
///     purpose: "VPC_PEERING",
///     addressType: "INTERNAL",
///     prefixLength: 16,
///     network: apigeeNetwork.id,
/// });
/// const apigeeVpcConnection = new gcp.servicenetworking.Connection("apigee_vpc_connection", {
///     network: apigeeNetwork.id,
///     service: "servicenetworking.googleapis.com",
///     reservedPeeringRanges: [apigeeRange.name],
/// });
/// const apigeeOrg = new gcp.apigee.Organization("apigee_org", {
///     analyticsRegion: "us-central1",
///     projectId: current.then(current => current.project),
///     authorizedNetwork: apigeeNetwork.id,
/// }, {
///     dependsOn: [apigeeVpcConnection],
/// });
/// const apigeeEnvironment = new gcp.apigee.Environment("apigee_environment", {
///     orgId: apigeeOrg.id,
///     name: "tf-test-env",
///     description: "Apigee Environment",
///     displayName: "Apigee Environment",
/// });
/// const apigeeInstance = new gcp.apigee.Instance("apigee_instance", {
///     name: "tf-test-instance",
///     location: "us-central1",
///     orgId: apigeeOrg.id,
/// });
/// const apigeeInstanceAttachment = new gcp.apigee.InstanceAttachment("apigee_instance_attachment", {
///     instanceId: apigeeInstance.id,
///     environment: apigeeEnvironment.name,
/// });
/// const apigeeEnvironmentKeyvaluemaps = new gcp.apigee.EnvironmentKeyvaluemaps("apigee_environment_keyvaluemaps", {
///     envId: apigeeEnvironment.id,
///     name: "tf-test-env-kvms",
/// }, {
///     dependsOn: [
///         apigeeOrg,
///         apigeeEnvironment,
///         apigeeInstance,
///         apigeeInstanceAttachment,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// current = gcp.organizations.get_client_config()
/// apigee_network = gcp.compute.Network("apigee_network", name="apigee-network")
/// apigee_range = gcp.compute.GlobalAddress("apigee_range",
///     name="apigee-range",
///     purpose="VPC_PEERING",
///     address_type="INTERNAL",
///     prefix_length=16,
///     network=apigee_network.id)
/// apigee_vpc_connection = gcp.servicenetworking.Connection("apigee_vpc_connection",
///     network=apigee_network.id,
///     service="servicenetworking.googleapis.com",
///     reserved_peering_ranges=[apigee_range.name])
/// apigee_org = gcp.apigee.Organization("apigee_org",
///     analytics_region="us-central1",
///     project_id=current.project,
///     authorized_network=apigee_network.id,
///     opts = pulumi.ResourceOptions(depends_on=[apigee_vpc_connection]))
/// apigee_environment = gcp.apigee.Environment("apigee_environment",
///     org_id=apigee_org.id,
///     name="tf-test-env",
///     description="Apigee Environment",
///     display_name="Apigee Environment")
/// apigee_instance = gcp.apigee.Instance("apigee_instance",
///     name="tf-test-instance",
///     location="us-central1",
///     org_id=apigee_org.id)
/// apigee_instance_attachment = gcp.apigee.InstanceAttachment("apigee_instance_attachment",
///     instance_id=apigee_instance.id,
///     environment=apigee_environment.name)
/// apigee_environment_keyvaluemaps = gcp.apigee.EnvironmentKeyvaluemaps("apigee_environment_keyvaluemaps",
///     env_id=apigee_environment.id,
///     name="tf-test-env-kvms",
///     opts = pulumi.ResourceOptions(depends_on=[
///             apigee_org,
///             apigee_environment,
///             apigee_instance,
///             apigee_instance_attachment,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Gcp.Organizations.GetClientConfig.Invoke();
///
///     var apigeeNetwork = new Gcp.Compute.Network("apigee_network", new()
///     {
///         Name = "apigee-network",
///     });
///
///     var apigeeRange = new Gcp.Compute.GlobalAddress("apigee_range", new()
///     {
///         Name = "apigee-range",
///         Purpose = "VPC_PEERING",
///         AddressType = "INTERNAL",
///         PrefixLength = 16,
///         Network = apigeeNetwork.Id,
///     });
///
///     var apigeeVpcConnection = new Gcp.ServiceNetworking.Connection("apigee_vpc_connection", new()
///     {
///         Network = apigeeNetwork.Id,
///         Service = "servicenetworking.googleapis.com",
///         ReservedPeeringRanges = new[]
///         {
///             apigeeRange.Name,
///         },
///     });
///
///     var apigeeOrg = new Gcp.Apigee.Organization("apigee_org", new()
///     {
///         AnalyticsRegion = "us-central1",
///         ProjectId = current.Apply(getClientConfigResult => getClientConfigResult.Project),
///         AuthorizedNetwork = apigeeNetwork.Id,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             apigeeVpcConnection,
///         },
///     });
///
///     var apigeeEnvironment = new Gcp.Apigee.Environment("apigee_environment", new()
///     {
///         OrgId = apigeeOrg.Id,
///         Name = "tf-test-env",
///         Description = "Apigee Environment",
///         DisplayName = "Apigee Environment",
///     });
///
///     var apigeeInstance = new Gcp.Apigee.Instance("apigee_instance", new()
///     {
///         Name = "tf-test-instance",
///         Location = "us-central1",
///         OrgId = apigeeOrg.Id,
///     });
///
///     var apigeeInstanceAttachment = new Gcp.Apigee.InstanceAttachment("apigee_instance_attachment", new()
///     {
///         InstanceId = apigeeInstance.Id,
///         Environment = apigeeEnvironment.Name,
///     });
///
///     var apigeeEnvironmentKeyvaluemaps = new Gcp.Apigee.EnvironmentKeyvaluemaps("apigee_environment_keyvaluemaps", new()
///     {
///         EnvId = apigeeEnvironment.Id,
///         Name = "tf-test-env-kvms",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             apigeeOrg,
///             apigeeEnvironment,
///             apigeeInstance,
///             apigeeInstanceAttachment,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigee"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicenetworking"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := organizations.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeNetwork, err := compute.NewNetwork(ctx, "apigee_network", &compute.NetworkArgs{
/// 			Name: pulumi.String("apigee-network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeRange, err := compute.NewGlobalAddress(ctx, "apigee_range", &compute.GlobalAddressArgs{
/// 			Name:         pulumi.String("apigee-range"),
/// 			Purpose:      pulumi.String("VPC_PEERING"),
/// 			AddressType:  pulumi.String("INTERNAL"),
/// 			PrefixLength: pulumi.Int(16),
/// 			Network:      apigeeNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeVpcConnection, err := servicenetworking.NewConnection(ctx, "apigee_vpc_connection", &servicenetworking.ConnectionArgs{
/// 			Network: apigeeNetwork.ID(),
/// 			Service: pulumi.String("servicenetworking.googleapis.com"),
/// 			ReservedPeeringRanges: pulumi.StringArray{
/// 				apigeeRange.Name,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeOrg, err := apigee.NewOrganization(ctx, "apigee_org", &apigee.OrganizationArgs{
/// 			AnalyticsRegion:   pulumi.String("us-central1"),
/// 			ProjectId:         pulumi.String(current.Project),
/// 			AuthorizedNetwork: apigeeNetwork.ID(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			apigeeVpcConnection,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeEnvironment, err := apigee.NewEnvironment(ctx, "apigee_environment", &apigee.EnvironmentArgs{
/// 			OrgId:       apigeeOrg.ID(),
/// 			Name:        pulumi.String("tf-test-env"),
/// 			Description: pulumi.String("Apigee Environment"),
/// 			DisplayName: pulumi.String("Apigee Environment"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeInstance, err := apigee.NewInstance(ctx, "apigee_instance", &apigee.InstanceArgs{
/// 			Name:     pulumi.String("tf-test-instance"),
/// 			Location: pulumi.String("us-central1"),
/// 			OrgId:    apigeeOrg.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeInstanceAttachment, err := apigee.NewInstanceAttachment(ctx, "apigee_instance_attachment", &apigee.InstanceAttachmentArgs{
/// 			InstanceId:  apigeeInstance.ID(),
/// 			Environment: apigeeEnvironment.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigee.NewEnvironmentKeyvaluemaps(ctx, "apigee_environment_keyvaluemaps", &apigee.EnvironmentKeyvaluemapsArgs{
/// 			EnvId: apigeeEnvironment.ID(),
/// 			Name:  pulumi.String("tf-test-env-kvms"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			apigeeOrg,
/// 			apigeeEnvironment,
/// 			apigeeInstance,
/// 			apigeeInstanceAttachment,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
/// import com.pulumi.gcp.servicenetworking.Connection;
/// import com.pulumi.gcp.servicenetworking.ConnectionArgs;
/// import com.pulumi.gcp.apigee.Organization;
/// import com.pulumi.gcp.apigee.OrganizationArgs;
/// import com.pulumi.gcp.apigee.Environment;
/// import com.pulumi.gcp.apigee.EnvironmentArgs;
/// import com.pulumi.gcp.apigee.Instance;
/// import com.pulumi.gcp.apigee.InstanceArgs;
/// import com.pulumi.gcp.apigee.InstanceAttachment;
/// import com.pulumi.gcp.apigee.InstanceAttachmentArgs;
/// import com.pulumi.gcp.apigee.EnvironmentKeyvaluemaps;
/// import com.pulumi.gcp.apigee.EnvironmentKeyvaluemapsArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var current = OrganizationsFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var apigeeNetwork = new Network("apigeeNetwork", NetworkArgs.builder()
///             .name("apigee-network")
///             .build());
///
///         var apigeeRange = new GlobalAddress("apigeeRange", GlobalAddressArgs.builder()
///             .name("apigee-range")
///             .purpose("VPC_PEERING")
///             .addressType("INTERNAL")
///             .prefixLength(16)
///             .network(apigeeNetwork.id())
///             .build());
///
///         var apigeeVpcConnection = new Connection("apigeeVpcConnection", ConnectionArgs.builder()
///             .network(apigeeNetwork.id())
///             .service("servicenetworking.googleapis.com")
///             .reservedPeeringRanges(apigeeRange.name())
///             .build());
///
///         var apigeeOrg = new Organization("apigeeOrg", OrganizationArgs.builder()
///             .analyticsRegion("us-central1")
///             .projectId(current.project())
///             .authorizedNetwork(apigeeNetwork.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(apigeeVpcConnection)
///                 .build());
///
///         var apigeeEnvironment = new Environment("apigeeEnvironment", EnvironmentArgs.builder()
///             .orgId(apigeeOrg.id())
///             .name("tf-test-env")
///             .description("Apigee Environment")
///             .displayName("Apigee Environment")
///             .build());
///
///         var apigeeInstance = new Instance("apigeeInstance", InstanceArgs.builder()
///             .name("tf-test-instance")
///             .location("us-central1")
///             .orgId(apigeeOrg.id())
///             .build());
///
///         var apigeeInstanceAttachment = new InstanceAttachment("apigeeInstanceAttachment", InstanceAttachmentArgs.builder()
///             .instanceId(apigeeInstance.id())
///             .environment(apigeeEnvironment.name())
///             .build());
///
///         var apigeeEnvironmentKeyvaluemaps = new EnvironmentKeyvaluemaps("apigeeEnvironmentKeyvaluemaps", EnvironmentKeyvaluemapsArgs.builder()
///             .envId(apigeeEnvironment.id())
///             .name("tf-test-env-kvms")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     apigeeOrg,
///                     apigeeEnvironment,
///                     apigeeInstance,
///                     apigeeInstanceAttachment)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   apigeeNetwork:
///     type: gcp:compute:Network
///     name: apigee_network
///     properties:
///       name: apigee-network
///   apigeeRange:
///     type: gcp:compute:GlobalAddress
///     name: apigee_range
///     properties:
///       name: apigee-range
///       purpose: VPC_PEERING
///       addressType: INTERNAL
///       prefixLength: 16
///       network: ${apigeeNetwork.id}
///   apigeeVpcConnection:
///     type: gcp:servicenetworking:Connection
///     name: apigee_vpc_connection
///     properties:
///       network: ${apigeeNetwork.id}
///       service: servicenetworking.googleapis.com
///       reservedPeeringRanges:
///         - ${apigeeRange.name}
///   apigeeOrg:
///     type: gcp:apigee:Organization
///     name: apigee_org
///     properties:
///       analyticsRegion: us-central1
///       projectId: ${current.project}
///       authorizedNetwork: ${apigeeNetwork.id}
///     options:
///       dependsOn:
///         - ${apigeeVpcConnection}
///   apigeeEnvironment:
///     type: gcp:apigee:Environment
///     name: apigee_environment
///     properties:
///       orgId: ${apigeeOrg.id}
///       name: tf-test-env
///       description: Apigee Environment
///       displayName: Apigee Environment
///   apigeeInstance:
///     type: gcp:apigee:Instance
///     name: apigee_instance
///     properties:
///       name: tf-test-instance
///       location: us-central1
///       orgId: ${apigeeOrg.id}
///   apigeeInstanceAttachment:
///     type: gcp:apigee:InstanceAttachment
///     name: apigee_instance_attachment
///     properties:
///       instanceId: ${apigeeInstance.id}
///       environment: ${apigeeEnvironment.name}
///   apigeeEnvironmentKeyvaluemaps:
///     type: gcp:apigee:EnvironmentKeyvaluemaps
///     name: apigee_environment_keyvaluemaps
///     properties:
///       envId: ${apigeeEnvironment.id}
///       name: tf-test-env-kvms
///     options:
///       dependsOn:
///         - ${apigeeOrg}
///         - ${apigeeEnvironment}
///         - ${apigeeInstance}
///         - ${apigeeInstanceAttachment}
/// variables:
///   current:
///     fn::invoke:
///       function: gcp:organizations:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// EnvironmentKeyvaluemaps can be imported using any of these accepted formats:
///
/// * `{{env_id}}/keyvaluemaps/{{name}}`
///
/// * `{{env_id}}/{{name}}`
///
/// When using the `pulumi import` command, EnvironmentKeyvaluemaps can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/environmentKeyvaluemaps:EnvironmentKeyvaluemaps default {{env_id}}/keyvaluemaps/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/environmentKeyvaluemaps:EnvironmentKeyvaluemaps default {{env_id}}/{{name}}
/// ```
class EnvironmentKeyvaluemaps extends pulumi.CustomResource {
  /// The Apigee environment group associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/environments/{{env_name}}`.
  late final pulumi.Output<String> envId;
  /// Required. ID of the key value map.
  late final pulumi.Output<String> name;

  /// Creates a new [EnvironmentKeyvaluemaps].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnvironmentKeyvaluemaps]. {@macro pulumi_apigee_environment_keyvaluemaps_environment_keyvaluemaps_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnvironmentKeyvaluemaps(
    String name, {
    EnvironmentKeyvaluemapsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/environmentKeyvaluemaps:EnvironmentKeyvaluemaps',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.envId = registerOutput<String>('envId');
    this.name = registerOutput<String>('name');
  }
}
