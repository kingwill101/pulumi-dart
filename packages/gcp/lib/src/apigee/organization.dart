import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_args.dart';
import 'organization_properties.dart';

/// An `Organization` is the top-level container in Apigee.
///
///
/// To get more information about Organization, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations)
/// * How-to Guides
/// * [Creating an API organization](https://cloud.google.com/apigee/docs/api-platform/get-started/create-org)
/// * Setting a custom endpoint (required for data residency)
///
/// ## Example Usage
///
/// ### Apigee Organization Cloud Basic
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
/// const org = new gcp.apigee.Organization("org", {
///     analyticsRegion: "us-central1",
///     projectId: current.then(current => current.project),
///     authorizedNetwork: apigeeNetwork.id,
/// }, {
///     dependsOn: [apigeeVpcConnection],
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
/// org = gcp.apigee.Organization("org",
///     analytics_region="us-central1",
///     project_id=current.project,
///     authorized_network=apigee_network.id,
///     opts = pulumi.ResourceOptions(depends_on=[apigee_vpc_connection]))
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
///     var org = new Gcp.Apigee.Organization("org", new()
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
/// 		_, err = apigee.NewOrganization(ctx, "org", &apigee.OrganizationArgs{
/// 			AnalyticsRegion:   pulumi.String("us-central1"),
/// 			ProjectId:         pulumi.String(current.Project),
/// 			AuthorizedNetwork: apigeeNetwork.ID(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			apigeeVpcConnection,
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
///         var org = new Organization("org", OrganizationArgs.builder()
///             .analyticsRegion("us-central1")
///             .projectId(current.project())
///             .authorizedNetwork(apigeeNetwork.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(apigeeVpcConnection)
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
///   org:
///     type: gcp:apigee:Organization
///     properties:
///       analyticsRegion: us-central1
///       projectId: ${current.project}
///       authorizedNetwork: ${apigeeNetwork.id}
///     options:
///       dependsOn:
///         - ${apigeeVpcConnection}
/// variables:
///   current:
///     fn::invoke:
///       function: gcp:organizations:getClientConfig
///       arguments: {}
/// ```
///
/// ### Apigee Organization Cloud Basic Disable Vpc Peering
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const current = gcp.organizations.getClientConfig({});
/// const org = new gcp.apigee.Organization("org", {
///     description: "Terraform-provisioned basic Apigee Org without VPC Peering.",
///     analyticsRegion: "us-central1",
///     projectId: current.then(current => current.project),
///     disableVpcPeering: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// current = gcp.organizations.get_client_config()
/// org = gcp.apigee.Organization("org",
///     description="Terraform-provisioned basic Apigee Org without VPC Peering.",
///     analytics_region="us-central1",
///     project_id=current.project,
///     disable_vpc_peering=True)
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
///     var org = new Gcp.Apigee.Organization("org", new()
///     {
///         Description = "Terraform-provisioned basic Apigee Org without VPC Peering.",
///         AnalyticsRegion = "us-central1",
///         ProjectId = current.Apply(getClientConfigResult => getClientConfigResult.Project),
///         DisableVpcPeering = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigee"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := organizations.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigee.NewOrganization(ctx, "org", &apigee.OrganizationArgs{
/// 			Description:       pulumi.String("Terraform-provisioned basic Apigee Org without VPC Peering."),
/// 			AnalyticsRegion:   pulumi.String("us-central1"),
/// 			ProjectId:         pulumi.String(current.Project),
/// 			DisableVpcPeering: pulumi.Bool(true),
/// 		})
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
/// import com.pulumi.gcp.apigee.Organization;
/// import com.pulumi.gcp.apigee.OrganizationArgs;
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
///         var org = new Organization("org", OrganizationArgs.builder()
///             .description("Terraform-provisioned basic Apigee Org without VPC Peering.")
///             .analyticsRegion("us-central1")
///             .projectId(current.project())
///             .disableVpcPeering(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   org:
///     type: gcp:apigee:Organization
///     properties:
///       description: Terraform-provisioned basic Apigee Org without VPC Peering.
///       analyticsRegion: us-central1
///       projectId: ${current.project}
///       disableVpcPeering: true
/// variables:
///   current:
///     fn::invoke:
///       function: gcp:organizations:getClientConfig
///       arguments: {}
/// ```
///
/// ### Apigee Organization Cloud Basic Data Residency
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const current = gcp.organizations.getClientConfig({});
/// const org = new gcp.apigee.Organization("org", {
///     description: "Terraform-provisioned basic Apigee Org under European Union hosting jurisdiction.",
///     projectId: current.then(current => current.project),
///     apiConsumerDataLocation: "europe-west1",
///     billingType: "PAYG",
///     disableVpcPeering: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// current = gcp.organizations.get_client_config()
/// org = gcp.apigee.Organization("org",
///     description="Terraform-provisioned basic Apigee Org under European Union hosting jurisdiction.",
///     project_id=current.project,
///     api_consumer_data_location="europe-west1",
///     billing_type="PAYG",
///     disable_vpc_peering=True)
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
///     var org = new Gcp.Apigee.Organization("org", new()
///     {
///         Description = "Terraform-provisioned basic Apigee Org under European Union hosting jurisdiction.",
///         ProjectId = current.Apply(getClientConfigResult => getClientConfigResult.Project),
///         ApiConsumerDataLocation = "europe-west1",
///         BillingType = "PAYG",
///         DisableVpcPeering = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigee"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := organizations.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigee.NewOrganization(ctx, "org", &apigee.OrganizationArgs{
/// 			Description:             pulumi.String("Terraform-provisioned basic Apigee Org under European Union hosting jurisdiction."),
/// 			ProjectId:               pulumi.String(current.Project),
/// 			ApiConsumerDataLocation: pulumi.String("europe-west1"),
/// 			BillingType:             pulumi.String("PAYG"),
/// 			DisableVpcPeering:       pulumi.Bool(true),
/// 		})
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
/// import com.pulumi.gcp.apigee.Organization;
/// import com.pulumi.gcp.apigee.OrganizationArgs;
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
///         var org = new Organization("org", OrganizationArgs.builder()
///             .description("Terraform-provisioned basic Apigee Org under European Union hosting jurisdiction.")
///             .projectId(current.project())
///             .apiConsumerDataLocation("europe-west1")
///             .billingType("PAYG")
///             .disableVpcPeering(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   org:
///     type: gcp:apigee:Organization
///     properties:
///       description: Terraform-provisioned basic Apigee Org under European Union hosting jurisdiction.
///       projectId: ${current.project}
///       apiConsumerDataLocation: europe-west1
///       billingType: PAYG
///       disableVpcPeering: true
/// variables:
///   current:
///     fn::invoke:
///       function: gcp:organizations:getClientConfig
///       arguments: {}
/// ```
///
/// ### Apigee Organization Cloud Full
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
/// const apigeeKeyring = new gcp.kms.KeyRing("apigee_keyring", {
///     name: "apigee-keyring",
///     location: "us-central1",
/// });
/// const apigeeKey = new gcp.kms.CryptoKey("apigee_key", {
///     name: "apigee-key",
///     keyRing: apigeeKeyring.id,
/// });
/// const apigeeSa = new gcp.projects.ServiceIdentity("apigee_sa", {
///     project: project.projectId,
///     service: apigee.service,
/// });
/// const apigeeSaKeyuser = new gcp.kms.CryptoKeyIAMMember("apigee_sa_keyuser", {
///     cryptoKeyId: apigeeKey.id,
///     role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member: apigeeSa.member,
/// });
/// const org = new gcp.apigee.Organization("org", {
///     analyticsRegion: "us-central1",
///     displayName: "apigee-org",
///     description: "Auto-provisioned Apigee Org.",
///     projectId: current.then(current => current.project),
///     authorizedNetwork: apigeeNetwork.id,
///     runtimeDatabaseEncryptionKeyName: apigeeKey.id,
/// }, {
///     dependsOn: [
///         apigeeVpcConnection,
///         apigeeSaKeyuser,
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
/// apigee_keyring = gcp.kms.KeyRing("apigee_keyring",
///     name="apigee-keyring",
///     location="us-central1")
/// apigee_key = gcp.kms.CryptoKey("apigee_key",
///     name="apigee-key",
///     key_ring=apigee_keyring.id)
/// apigee_sa = gcp.projects.ServiceIdentity("apigee_sa",
///     project=project["projectId"],
///     service=apigee["service"])
/// apigee_sa_keyuser = gcp.kms.CryptoKeyIAMMember("apigee_sa_keyuser",
///     crypto_key_id=apigee_key.id,
///     role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member=apigee_sa.member)
/// org = gcp.apigee.Organization("org",
///     analytics_region="us-central1",
///     display_name="apigee-org",
///     description="Auto-provisioned Apigee Org.",
///     project_id=current.project,
///     authorized_network=apigee_network.id,
///     runtime_database_encryption_key_name=apigee_key.id,
///     opts = pulumi.ResourceOptions(depends_on=[
///             apigee_vpc_connection,
///             apigee_sa_keyuser,
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
///     var apigeeKeyring = new Gcp.Kms.KeyRing("apigee_keyring", new()
///     {
///         Name = "apigee-keyring",
///         Location = "us-central1",
///     });
///
///     var apigeeKey = new Gcp.Kms.CryptoKey("apigee_key", new()
///     {
///         Name = "apigee-key",
///         KeyRing = apigeeKeyring.Id,
///     });
///
///     var apigeeSa = new Gcp.Projects.ServiceIdentity("apigee_sa", new()
///     {
///         Project = project.ProjectId,
///         Service = apigee.Service,
///     });
///
///     var apigeeSaKeyuser = new Gcp.Kms.CryptoKeyIAMMember("apigee_sa_keyuser", new()
///     {
///         CryptoKeyId = apigeeKey.Id,
///         Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///         Member = apigeeSa.Member,
///     });
///
///     var org = new Gcp.Apigee.Organization("org", new()
///     {
///         AnalyticsRegion = "us-central1",
///         DisplayName = "apigee-org",
///         Description = "Auto-provisioned Apigee Org.",
///         ProjectId = current.Apply(getClientConfigResult => getClientConfigResult.Project),
///         AuthorizedNetwork = apigeeNetwork.Id,
///         RuntimeDatabaseEncryptionKeyName = apigeeKey.Id,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             apigeeVpcConnection,
///             apigeeSaKeyuser,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
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
/// 		apigeeKeyring, err := kms.NewKeyRing(ctx, "apigee_keyring", &kms.KeyRingArgs{
/// 			Name:     pulumi.String("apigee-keyring"),
/// 			Location: pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeKey, err := kms.NewCryptoKey(ctx, "apigee_key", &kms.CryptoKeyArgs{
/// 			Name:    pulumi.String("apigee-key"),
/// 			KeyRing: apigeeKeyring.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeSa, err := projects.NewServiceIdentity(ctx, "apigee_sa", &projects.ServiceIdentityArgs{
/// 			Project: pulumi.Any(project.ProjectId),
/// 			Service: pulumi.Any(apigee.Service),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeSaKeyuser, err := kms.NewCryptoKeyIAMMember(ctx, "apigee_sa_keyuser", &kms.CryptoKeyIAMMemberArgs{
/// 			CryptoKeyId: apigeeKey.ID(),
/// 			Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// 			Member:      apigeeSa.Member,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigee.NewOrganization(ctx, "org", &apigee.OrganizationArgs{
/// 			AnalyticsRegion:                  pulumi.String("us-central1"),
/// 			DisplayName:                      pulumi.String("apigee-org"),
/// 			Description:                      pulumi.String("Auto-provisioned Apigee Org."),
/// 			ProjectId:                        pulumi.String(current.Project),
/// 			AuthorizedNetwork:                apigeeNetwork.ID(),
/// 			RuntimeDatabaseEncryptionKeyName: apigeeKey.ID(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			apigeeVpcConnection,
/// 			apigeeSaKeyuser,
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
/// import com.pulumi.gcp.kms.KeyRing;
/// import com.pulumi.gcp.kms.KeyRingArgs;
/// import com.pulumi.gcp.kms.CryptoKey;
/// import com.pulumi.gcp.kms.CryptoKeyArgs;
/// import com.pulumi.gcp.projects.ServiceIdentity;
/// import com.pulumi.gcp.projects.ServiceIdentityArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
/// import com.pulumi.gcp.apigee.Organization;
/// import com.pulumi.gcp.apigee.OrganizationArgs;
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
///         var apigeeKeyring = new KeyRing("apigeeKeyring", KeyRingArgs.builder()
///             .name("apigee-keyring")
///             .location("us-central1")
///             .build());
///
///         var apigeeKey = new CryptoKey("apigeeKey", CryptoKeyArgs.builder()
///             .name("apigee-key")
///             .keyRing(apigeeKeyring.id())
///             .build());
///
///         var apigeeSa = new ServiceIdentity("apigeeSa", ServiceIdentityArgs.builder()
///             .project(project.projectId())
///             .service(apigee.service())
///             .build());
///
///         var apigeeSaKeyuser = new CryptoKeyIAMMember("apigeeSaKeyuser", CryptoKeyIAMMemberArgs.builder()
///             .cryptoKeyId(apigeeKey.id())
///             .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
///             .member(apigeeSa.member())
///             .build());
///
///         var org = new Organization("org", OrganizationArgs.builder()
///             .analyticsRegion("us-central1")
///             .displayName("apigee-org")
///             .description("Auto-provisioned Apigee Org.")
///             .projectId(current.project())
///             .authorizedNetwork(apigeeNetwork.id())
///             .runtimeDatabaseEncryptionKeyName(apigeeKey.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     apigeeVpcConnection,
///                     apigeeSaKeyuser)
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
///   apigeeKeyring:
///     type: gcp:kms:KeyRing
///     name: apigee_keyring
///     properties:
///       name: apigee-keyring
///       location: us-central1
///   apigeeKey:
///     type: gcp:kms:CryptoKey
///     name: apigee_key
///     properties:
///       name: apigee-key
///       keyRing: ${apigeeKeyring.id}
///   apigeeSa:
///     type: gcp:projects:ServiceIdentity
///     name: apigee_sa
///     properties:
///       project: ${project.projectId}
///       service: ${apigee.service}
///   apigeeSaKeyuser:
///     type: gcp:kms:CryptoKeyIAMMember
///     name: apigee_sa_keyuser
///     properties:
///       cryptoKeyId: ${apigeeKey.id}
///       role: roles/cloudkms.cryptoKeyEncrypterDecrypter
///       member: ${apigeeSa.member}
///   org:
///     type: gcp:apigee:Organization
///     properties:
///       analyticsRegion: us-central1
///       displayName: apigee-org
///       description: Auto-provisioned Apigee Org.
///       projectId: ${current.project}
///       authorizedNetwork: ${apigeeNetwork.id}
///       runtimeDatabaseEncryptionKeyName: ${apigeeKey.id}
///     options:
///       dependsOn:
///         - ${apigeeVpcConnection}
///         - ${apigeeSaKeyuser}
/// variables:
///   current:
///     fn::invoke:
///       function: gcp:organizations:getClientConfig
///       arguments: {}
/// ```
///
/// ### Apigee Organization Cloud Full Disable Vpc Peering
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const current = gcp.organizations.getClientConfig({});
/// const apigeeKeyring = new gcp.kms.KeyRing("apigee_keyring", {
///     name: "apigee-keyring",
///     location: "us-central1",
/// });
/// const apigeeKey = new gcp.kms.CryptoKey("apigee_key", {
///     name: "apigee-key",
///     keyRing: apigeeKeyring.id,
/// });
/// const apigeeSa = new gcp.projects.ServiceIdentity("apigee_sa", {
///     project: project.projectId,
///     service: apigee.service,
/// });
/// const apigeeSaKeyuser = new gcp.kms.CryptoKeyIAMMember("apigee_sa_keyuser", {
///     cryptoKeyId: apigeeKey.id,
///     role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member: apigeeSa.member,
/// });
/// const org = new gcp.apigee.Organization("org", {
///     analyticsRegion: "us-central1",
///     displayName: "apigee-org",
///     description: "Terraform-provisioned Apigee Org without VPC Peering.",
///     projectId: current.then(current => current.project),
///     disableVpcPeering: true,
///     runtimeDatabaseEncryptionKeyName: apigeeKey.id,
/// }, {
///     dependsOn: [apigeeSaKeyuser],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// current = gcp.organizations.get_client_config()
/// apigee_keyring = gcp.kms.KeyRing("apigee_keyring",
///     name="apigee-keyring",
///     location="us-central1")
/// apigee_key = gcp.kms.CryptoKey("apigee_key",
///     name="apigee-key",
///     key_ring=apigee_keyring.id)
/// apigee_sa = gcp.projects.ServiceIdentity("apigee_sa",
///     project=project["projectId"],
///     service=apigee["service"])
/// apigee_sa_keyuser = gcp.kms.CryptoKeyIAMMember("apigee_sa_keyuser",
///     crypto_key_id=apigee_key.id,
///     role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member=apigee_sa.member)
/// org = gcp.apigee.Organization("org",
///     analytics_region="us-central1",
///     display_name="apigee-org",
///     description="Terraform-provisioned Apigee Org without VPC Peering.",
///     project_id=current.project,
///     disable_vpc_peering=True,
///     runtime_database_encryption_key_name=apigee_key.id,
///     opts = pulumi.ResourceOptions(depends_on=[apigee_sa_keyuser]))
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
///     var apigeeKeyring = new Gcp.Kms.KeyRing("apigee_keyring", new()
///     {
///         Name = "apigee-keyring",
///         Location = "us-central1",
///     });
///
///     var apigeeKey = new Gcp.Kms.CryptoKey("apigee_key", new()
///     {
///         Name = "apigee-key",
///         KeyRing = apigeeKeyring.Id,
///     });
///
///     var apigeeSa = new Gcp.Projects.ServiceIdentity("apigee_sa", new()
///     {
///         Project = project.ProjectId,
///         Service = apigee.Service,
///     });
///
///     var apigeeSaKeyuser = new Gcp.Kms.CryptoKeyIAMMember("apigee_sa_keyuser", new()
///     {
///         CryptoKeyId = apigeeKey.Id,
///         Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///         Member = apigeeSa.Member,
///     });
///
///     var org = new Gcp.Apigee.Organization("org", new()
///     {
///         AnalyticsRegion = "us-central1",
///         DisplayName = "apigee-org",
///         Description = "Terraform-provisioned Apigee Org without VPC Peering.",
///         ProjectId = current.Apply(getClientConfigResult => getClientConfigResult.Project),
///         DisableVpcPeering = true,
///         RuntimeDatabaseEncryptionKeyName = apigeeKey.Id,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             apigeeSaKeyuser,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := organizations.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeKeyring, err := kms.NewKeyRing(ctx, "apigee_keyring", &kms.KeyRingArgs{
/// 			Name:     pulumi.String("apigee-keyring"),
/// 			Location: pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeKey, err := kms.NewCryptoKey(ctx, "apigee_key", &kms.CryptoKeyArgs{
/// 			Name:    pulumi.String("apigee-key"),
/// 			KeyRing: apigeeKeyring.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeSa, err := projects.NewServiceIdentity(ctx, "apigee_sa", &projects.ServiceIdentityArgs{
/// 			Project: pulumi.Any(project.ProjectId),
/// 			Service: pulumi.Any(apigee.Service),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeSaKeyuser, err := kms.NewCryptoKeyIAMMember(ctx, "apigee_sa_keyuser", &kms.CryptoKeyIAMMemberArgs{
/// 			CryptoKeyId: apigeeKey.ID(),
/// 			Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// 			Member:      apigeeSa.Member,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigee.NewOrganization(ctx, "org", &apigee.OrganizationArgs{
/// 			AnalyticsRegion:                  pulumi.String("us-central1"),
/// 			DisplayName:                      pulumi.String("apigee-org"),
/// 			Description:                      pulumi.String("Terraform-provisioned Apigee Org without VPC Peering."),
/// 			ProjectId:                        pulumi.String(current.Project),
/// 			DisableVpcPeering:                pulumi.Bool(true),
/// 			RuntimeDatabaseEncryptionKeyName: apigeeKey.ID(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			apigeeSaKeyuser,
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
/// import com.pulumi.gcp.kms.KeyRing;
/// import com.pulumi.gcp.kms.KeyRingArgs;
/// import com.pulumi.gcp.kms.CryptoKey;
/// import com.pulumi.gcp.kms.CryptoKeyArgs;
/// import com.pulumi.gcp.projects.ServiceIdentity;
/// import com.pulumi.gcp.projects.ServiceIdentityArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
/// import com.pulumi.gcp.apigee.Organization;
/// import com.pulumi.gcp.apigee.OrganizationArgs;
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
///         var apigeeKeyring = new KeyRing("apigeeKeyring", KeyRingArgs.builder()
///             .name("apigee-keyring")
///             .location("us-central1")
///             .build());
///
///         var apigeeKey = new CryptoKey("apigeeKey", CryptoKeyArgs.builder()
///             .name("apigee-key")
///             .keyRing(apigeeKeyring.id())
///             .build());
///
///         var apigeeSa = new ServiceIdentity("apigeeSa", ServiceIdentityArgs.builder()
///             .project(project.projectId())
///             .service(apigee.service())
///             .build());
///
///         var apigeeSaKeyuser = new CryptoKeyIAMMember("apigeeSaKeyuser", CryptoKeyIAMMemberArgs.builder()
///             .cryptoKeyId(apigeeKey.id())
///             .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
///             .member(apigeeSa.member())
///             .build());
///
///         var org = new Organization("org", OrganizationArgs.builder()
///             .analyticsRegion("us-central1")
///             .displayName("apigee-org")
///             .description("Terraform-provisioned Apigee Org without VPC Peering.")
///             .projectId(current.project())
///             .disableVpcPeering(true)
///             .runtimeDatabaseEncryptionKeyName(apigeeKey.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(apigeeSaKeyuser)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   apigeeKeyring:
///     type: gcp:kms:KeyRing
///     name: apigee_keyring
///     properties:
///       name: apigee-keyring
///       location: us-central1
///   apigeeKey:
///     type: gcp:kms:CryptoKey
///     name: apigee_key
///     properties:
///       name: apigee-key
///       keyRing: ${apigeeKeyring.id}
///   apigeeSa:
///     type: gcp:projects:ServiceIdentity
///     name: apigee_sa
///     properties:
///       project: ${project.projectId}
///       service: ${apigee.service}
///   apigeeSaKeyuser:
///     type: gcp:kms:CryptoKeyIAMMember
///     name: apigee_sa_keyuser
///     properties:
///       cryptoKeyId: ${apigeeKey.id}
///       role: roles/cloudkms.cryptoKeyEncrypterDecrypter
///       member: ${apigeeSa.member}
///   org:
///     type: gcp:apigee:Organization
///     properties:
///       analyticsRegion: us-central1
///       displayName: apigee-org
///       description: Terraform-provisioned Apigee Org without VPC Peering.
///       projectId: ${current.project}
///       disableVpcPeering: true
///       runtimeDatabaseEncryptionKeyName: ${apigeeKey.id}
///     options:
///       dependsOn:
///         - ${apigeeSaKeyuser}
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
/// Organization can be imported using any of these accepted formats:
///
/// * `organizations/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Organization can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/organization:Organization default organizations/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/organization:Organization default {{name}}
/// ```
class Organization extends pulumi.CustomResource {
  /// Primary GCP region for analytics data storage. For valid values, see [Create an Apigee organization](https://cloud.google.com/apigee/docs/api-platform/get-started/create-org).
  late final pulumi.Output<String?> analyticsRegion;

  /// Cloud KMS key name used for encrypting API consumer data.
  late final pulumi.Output<String?> apiConsumerDataEncryptionKeyName;

  /// This field is needed only for customers using non-default data residency regions.
  /// Apigee stores some control plane data only in single region.
  /// This field determines which single region Apigee should use.
  late final pulumi.Output<String?> apiConsumerDataLocation;

  /// Output only. Project ID of the Apigee Tenant Project.
  late final pulumi.Output<String> apigeeProjectId;

  /// Compute Engine network used for Service Networking to be peered with Apigee runtime instances.
  /// See [Getting started with the Service Networking API](https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started).
  /// Valid only when `RuntimeType` is set to CLOUD. The value can be updated only when there are no runtime instances. For example: "default".
  late final pulumi.Output<String?> authorizedNetwork;

  /// Billing type of the Apigee organization. See [Apigee pricing](https://cloud.google.com/apigee/pricing).
  late final pulumi.Output<String> billingType;

  /// Output only. Base64-encoded public certificate for the root CA of the Apigee organization.
  /// Valid only when `RuntimeType` is CLOUD. A base64-encoded string.
  late final pulumi.Output<String> caCertificate;

  /// Cloud KMS key name used for encrypting control plane data that is stored in a multi region.
  /// Only used for the data residency region "US" or "EU".
  late final pulumi.Output<String?> controlPlaneEncryptionKeyName;

  /// Description of the Apigee organization.
  late final pulumi.Output<String?> description;

  /// Flag that specifies whether the VPC Peering through Private Google Access should be
  /// disabled between the consumer network and Apigee. Required if an `authorizedNetwork`
  /// on the consumer project is not provided, in which case the flag should be set to `true`.
  /// Valid only when `RuntimeType` is set to CLOUD. The value must be set before the creation
  /// of any Apigee runtime instance and can be updated only when there are no runtime instances.
  late final pulumi.Output<bool?> disableVpcPeering;

  /// The display name of the Apigee organization.
  late final pulumi.Output<String?> displayName;

  /// Output only. Name of the Apigee organization.
  late final pulumi.Output<String> name;

  /// The project ID associated with the Apigee organization.
  late final pulumi.Output<String> projectId;

  /// Properties defined in the Apigee organization profile.
  /// Structure is documented below.
  late final pulumi.Output<OrganizationProperties> properties;

  /// Optional. This setting is applicable only for organizations that are soft-deleted (i.e., BillingType
  /// is not EVALUATION). It controls how long Organization data will be retained after the initial delete
  /// operation completes. During this period, the Organization may be restored to its last known state.
  /// After this period, the Organization will no longer be able to be restored.
  /// Default value is `DELETION_RETENTION_UNSPECIFIED`.
  /// Possible values are: `DELETION_RETENTION_UNSPECIFIED`, `MINIMUM`.
  late final pulumi.Output<String?> retention;

  /// Cloud KMS key name used for encrypting the data that is stored and replicated across runtime instances.
  /// Update is not allowed after the organization is created.
  /// If not specified, a Google-Managed encryption key will be used.
  /// Valid only when `RuntimeType` is CLOUD. For example: `projects/foo/locations/us/keyRings/bar/cryptoKeys/baz`.
  late final pulumi.Output<String?> runtimeDatabaseEncryptionKeyName;

  /// Runtime type of the Apigee organization based on the Apigee subscription purchased.
  /// Default value is `CLOUD`.
  /// Possible values are: `CLOUD`, `HYBRID`.
  late final pulumi.Output<String?> runtimeType_;

  /// Output only. Subscription type of the Apigee organization.
  /// Valid values include trial (free, limited, and for evaluation purposes only) or paid (full subscription has been purchased).
  late final pulumi.Output<String> subscriptionType;

  /// Creates a new [Organization].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Organization]. {@macro pulumi_apigee_organization_organization_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Organization(
    String name, {
    OrganizationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:apigee/organization:Organization',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.analyticsRegion = registerOutput<String?>('analyticsRegion');
    this.apiConsumerDataEncryptionKeyName = registerOutput<String?>(
      'apiConsumerDataEncryptionKeyName',
    );
    this.apiConsumerDataLocation = registerOutput<String?>(
      'apiConsumerDataLocation',
    );
    this.apigeeProjectId = registerOutput<String>('apigeeProjectId');
    this.authorizedNetwork = registerOutput<String?>('authorizedNetwork');
    this.billingType = registerOutput<String>('billingType');
    this.caCertificate = registerOutput<String>('caCertificate');
    this.controlPlaneEncryptionKeyName = registerOutput<String?>(
      'controlPlaneEncryptionKeyName',
    );
    this.description = registerOutput<String?>('description');
    this.disableVpcPeering = registerOutput<bool?>('disableVpcPeering');
    this.displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    this.projectId = registerOutput<String>('projectId');
    this.properties = registerOutput<OrganizationProperties>('properties');
    this.retention = registerOutput<String?>('retention');
    this.runtimeDatabaseEncryptionKeyName = registerOutput<String?>(
      'runtimeDatabaseEncryptionKeyName',
    );
    this.runtimeType_ = registerOutput<String?>('runtimeType');
    this.subscriptionType = registerOutput<String>('subscriptionType');
  }
}
