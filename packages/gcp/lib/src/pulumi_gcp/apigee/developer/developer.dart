import 'package:pulumi/pulumi.dart';
import '../developer_attribute/developer_attribute.dart';
import 'developer_args.dart';

/// A `Developer` is an API consumer that can have apps registered in Apigee.
///
///
/// To get more information about Developer, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.developers)
/// * How-to Guides
/// * [Creating a developer](https://cloud.google.com/apigee/docs/api-platform/publish/adding-developers-your-api-product)
///
/// ## Example Usage
///
/// ### Apigee Developer Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const current = gcp.organizations.getClientConfig({});
/// const apigeeNetwork = new gcp.compute.Network("apigee_network", {name: "apigee-network"});
/// const apigeeRange = new gcp.compute.GlobalAddress("apigee_range", {
/// name: "apigee-range",
/// purpose: "VPC_PEERING",
/// addressType: "INTERNAL",
/// prefixLength: 16,
/// network: apigeeNetwork.id,
/// });
/// const apigeeVpcConnection = new gcp.servicenetworking.Connection("apigee_vpc_connection", {
/// network: apigeeNetwork.id,
/// service: "servicenetworking.googleapis.com",
/// reservedPeeringRanges: [apigeeRange.name],
/// });
/// const apigeeOrg = new gcp.apigee.Organization("apigee_org", {
/// analyticsRegion: "us-central1",
/// projectId: current.then(current => current.project),
/// authorizedNetwork: apigeeNetwork.id,
/// }, {
/// dependsOn: [apigeeVpcConnection],
/// });
/// const apigeeInstance = new gcp.apigee.Instance("apigee_instance", {
/// name: "my-instance",
/// location: "us-central1",
/// orgId: apigeeOrg.id,
/// peeringCidrRange: "SLASH_22",
/// });
/// const apigeeDeveloper = new gcp.apigee.Developer("apigee_developer", {
/// email: "john.doe@acme.com",
/// firstName: "John",
/// lastName: "Doe",
/// userName: "john.doe",
/// orgId: apigeeOrg.id,
/// }, {
/// dependsOn: [apigeeInstance],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// current = gcp.organizations.get_client_config()
/// apigee_network = gcp.compute.Network("apigee_network", name="apigee-network")
/// apigee_range = gcp.compute.GlobalAddress("apigee_range",
/// name="apigee-range",
/// purpose="VPC_PEERING",
/// address_type="INTERNAL",
/// prefix_length=16,
/// network=apigee_network.id)
/// apigee_vpc_connection = gcp.servicenetworking.Connection("apigee_vpc_connection",
/// network=apigee_network.id,
/// service="servicenetworking.googleapis.com",
/// reserved_peering_ranges=[apigee_range.name])
/// apigee_org = gcp.apigee.Organization("apigee_org",
/// analytics_region="us-central1",
/// project_id=current.project,
/// authorized_network=apigee_network.id,
/// opts = pulumi.ResourceOptions(depends_on=[apigee_vpc_connection]))
/// apigee_instance = gcp.apigee.Instance("apigee_instance",
/// name="my-instance",
/// location="us-central1",
/// org_id=apigee_org.id,
/// peering_cidr_range="SLASH_22")
/// apigee_developer = gcp.apigee.Developer("apigee_developer",
/// email="john.doe@acme.com",
/// first_name="John",
/// last_name="Doe",
/// user_name="john.doe",
/// org_id=apigee_org.id,
/// opts = pulumi.ResourceOptions(depends_on=[apigee_instance]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var current = Gcp.Organizations.GetClientConfig.Invoke();
///
/// var apigeeNetwork = new Gcp.Compute.Network("apigee_network", new()
/// {
/// Name = "apigee-network",
/// });
///
/// var apigeeRange = new Gcp.Compute.GlobalAddress("apigee_range", new()
/// {
/// Name = "apigee-range",
/// Purpose = "VPC_PEERING",
/// AddressType = "INTERNAL",
/// PrefixLength = 16,
/// Network = apigeeNetwork.Id,
/// });
///
/// var apigeeVpcConnection = new Gcp.ServiceNetworking.Connection("apigee_vpc_connection", new()
/// {
/// Network = apigeeNetwork.Id,
/// Service = "servicenetworking.googleapis.com",
/// ReservedPeeringRanges = new[]
/// {
/// apigeeRange.Name,
/// },
/// });
///
/// var apigeeOrg = new Gcp.Apigee.Organization("apigee_org", new()
/// {
/// AnalyticsRegion = "us-central1",
/// ProjectId = current.Apply(getClientConfigResult => getClientConfigResult.Project),
/// AuthorizedNetwork = apigeeNetwork.Id,
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// apigeeVpcConnection,
/// },
/// });
///
/// var apigeeInstance = new Gcp.Apigee.Instance("apigee_instance", new()
/// {
/// Name = "my-instance",
/// Location = "us-central1",
/// OrgId = apigeeOrg.Id,
/// PeeringCidrRange = "SLASH_22",
/// });
///
/// var apigeeDeveloper = new Gcp.Apigee.Developer("apigee_developer", new()
/// {
/// Email = "john.doe@acme.com",
/// FirstName = "John",
/// LastName = "Doe",
/// UserName = "john.doe",
/// OrgId = apigeeOrg.Id,
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// apigeeInstance,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigee"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicenetworking"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// current, err := organizations.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// if err != nil {
/// return err
/// }
/// apigeeNetwork, err := compute.NewNetwork(ctx, "apigee_network", &compute.NetworkArgs{
/// Name: pulumi.String("apigee-network"),
/// })
/// if err != nil {
/// return err
/// }
/// apigeeRange, err := compute.NewGlobalAddress(ctx, "apigee_range", &compute.GlobalAddressArgs{
/// Name:         pulumi.String("apigee-range"),
/// Purpose:      pulumi.String("VPC_PEERING"),
/// AddressType:  pulumi.String("INTERNAL"),
/// PrefixLength: pulumi.Int(16),
/// Network:      apigeeNetwork.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// apigeeVpcConnection, err := servicenetworking.NewConnection(ctx, "apigee_vpc_connection", &servicenetworking.ConnectionArgs{
/// Network: apigeeNetwork.ID(),
/// Service: pulumi.String("servicenetworking.googleapis.com"),
/// ReservedPeeringRanges: pulumi.StringArray{
/// apigeeRange.Name,
/// },
/// })
/// if err != nil {
/// return err
/// }
/// apigeeOrg, err := apigee.NewOrganization(ctx, "apigee_org", &apigee.OrganizationArgs{
/// AnalyticsRegion:   pulumi.String("us-central1"),
/// ProjectId:         pulumi.String(current.Project),
/// AuthorizedNetwork: apigeeNetwork.ID(),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// apigeeVpcConnection,
/// }))
/// if err != nil {
/// return err
/// }
/// apigeeInstance, err := apigee.NewInstance(ctx, "apigee_instance", &apigee.InstanceArgs{
/// Name:             pulumi.String("my-instance"),
/// Location:         pulumi.String("us-central1"),
/// OrgId:            apigeeOrg.ID(),
/// PeeringCidrRange: pulumi.String("SLASH_22"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = apigee.NewDeveloper(ctx, "apigee_developer", &apigee.DeveloperArgs{
/// Email:     pulumi.String("john.doe@acme.com"),
/// FirstName: pulumi.String("John"),
/// LastName:  pulumi.String("Doe"),
/// UserName:  pulumi.String("john.doe"),
/// OrgId:     apigeeOrg.ID(),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// apigeeInstance,
/// }))
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import com.pulumi.gcp.apigee.Instance;
/// import com.pulumi.gcp.apigee.InstanceArgs;
/// import com.pulumi.gcp.apigee.Developer;
/// import com.pulumi.gcp.apigee.DeveloperArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var current = OrganizationsFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
/// var apigeeNetwork = new Network("apigeeNetwork", NetworkArgs.builder()
/// .name("apigee-network")
/// .build());
///
/// var apigeeRange = new GlobalAddress("apigeeRange", GlobalAddressArgs.builder()
/// .name("apigee-range")
/// .purpose("VPC_PEERING")
/// .addressType("INTERNAL")
/// .prefixLength(16)
/// .network(apigeeNetwork.id())
/// .build());
///
/// var apigeeVpcConnection = new Connection("apigeeVpcConnection", ConnectionArgs.builder()
/// .network(apigeeNetwork.id())
/// .service("servicenetworking.googleapis.com")
/// .reservedPeeringRanges(apigeeRange.name())
/// .build());
///
/// var apigeeOrg = new Organization("apigeeOrg", OrganizationArgs.builder()
/// .analyticsRegion("us-central1")
/// .projectId(current.project())
/// .authorizedNetwork(apigeeNetwork.id())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(apigeeVpcConnection)
/// .build());
///
/// var apigeeInstance = new Instance("apigeeInstance", InstanceArgs.builder()
/// .name("my-instance")
/// .location("us-central1")
/// .orgId(apigeeOrg.id())
/// .peeringCidrRange("SLASH_22")
/// .build());
///
/// var apigeeDeveloper = new Developer("apigeeDeveloper", DeveloperArgs.builder()
/// .email("john.doe@acme.com")
/// .firstName("John")
/// .lastName("Doe")
/// .userName("john.doe")
/// .orgId(apigeeOrg.id())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(apigeeInstance)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// apigeeNetwork:
/// type: gcp:compute:Network
/// name: apigee_network
/// properties:
/// name: apigee-network
/// apigeeRange:
/// type: gcp:compute:GlobalAddress
/// name: apigee_range
/// properties:
/// name: apigee-range
/// purpose: VPC_PEERING
/// addressType: INTERNAL
/// prefixLength: 16
/// network: ${apigeeNetwork.id}
/// apigeeVpcConnection:
/// type: gcp:servicenetworking:Connection
/// name: apigee_vpc_connection
/// properties:
/// network: ${apigeeNetwork.id}
/// service: servicenetworking.googleapis.com
/// reservedPeeringRanges:
/// - ${apigeeRange.name}
/// apigeeOrg:
/// type: gcp:apigee:Organization
/// name: apigee_org
/// properties:
/// analyticsRegion: us-central1
/// projectId: ${current.project}
/// authorizedNetwork: ${apigeeNetwork.id}
/// options:
/// dependsOn:
/// - ${apigeeVpcConnection}
/// apigeeInstance:
/// type: gcp:apigee:Instance
/// name: apigee_instance
/// properties:
/// name: my-instance
/// location: us-central1
/// orgId: ${apigeeOrg.id}
/// peeringCidrRange: SLASH_22
/// apigeeDeveloper:
/// type: gcp:apigee:Developer
/// name: apigee_developer
/// properties:
/// email: john.doe@acme.com
/// firstName: John
/// lastName: Doe
/// userName: john.doe
/// orgId: ${apigeeOrg.id}
/// options:
/// dependsOn:
/// - ${apigeeInstance}
/// variables:
/// current:
/// fn::invoke:
/// function: gcp:organizations:getClientConfig
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Apigee Developer With Attributes
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const current = gcp.organizations.getClientConfig({});
/// const apigeeNetwork = new gcp.compute.Network("apigee_network", {name: "apigee-network"});
/// const apigeeRange = new gcp.compute.GlobalAddress("apigee_range", {
/// name: "apigee-range",
/// purpose: "VPC_PEERING",
/// addressType: "INTERNAL",
/// prefixLength: 16,
/// network: apigeeNetwork.id,
/// });
/// const apigeeVpcConnection = new gcp.servicenetworking.Connection("apigee_vpc_connection", {
/// network: apigeeNetwork.id,
/// service: "servicenetworking.googleapis.com",
/// reservedPeeringRanges: [apigeeRange.name],
/// });
/// const apigeeOrg = new gcp.apigee.Organization("apigee_org", {
/// analyticsRegion: "us-central1",
/// projectId: current.then(current => current.project),
/// authorizedNetwork: apigeeNetwork.id,
/// }, {
/// dependsOn: [apigeeVpcConnection],
/// });
/// const apigeeInstance = new gcp.apigee.Instance("apigee_instance", {
/// name: "my-instance",
/// location: "us-central1",
/// orgId: apigeeOrg.id,
/// peeringCidrRange: "SLASH_22",
/// });
/// const apigeeDeveloper = new gcp.apigee.Developer("apigee_developer", {
/// email: "john.doe@acme.com",
/// firstName: "John",
/// lastName: "Doe",
/// userName: "john.doe",
/// attributes: [
/// {
/// name: "business_unit",
/// value: "HR",
/// },
/// {
/// name: "department",
/// value: "payroll",
/// },
/// ],
/// orgId: apigeeOrg.id,
/// }, {
/// dependsOn: [apigeeInstance],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// current = gcp.organizations.get_client_config()
/// apigee_network = gcp.compute.Network("apigee_network", name="apigee-network")
/// apigee_range = gcp.compute.GlobalAddress("apigee_range",
/// name="apigee-range",
/// purpose="VPC_PEERING",
/// address_type="INTERNAL",
/// prefix_length=16,
/// network=apigee_network.id)
/// apigee_vpc_connection = gcp.servicenetworking.Connection("apigee_vpc_connection",
/// network=apigee_network.id,
/// service="servicenetworking.googleapis.com",
/// reserved_peering_ranges=[apigee_range.name])
/// apigee_org = gcp.apigee.Organization("apigee_org",
/// analytics_region="us-central1",
/// project_id=current.project,
/// authorized_network=apigee_network.id,
/// opts = pulumi.ResourceOptions(depends_on=[apigee_vpc_connection]))
/// apigee_instance = gcp.apigee.Instance("apigee_instance",
/// name="my-instance",
/// location="us-central1",
/// org_id=apigee_org.id,
/// peering_cidr_range="SLASH_22")
/// apigee_developer = gcp.apigee.Developer("apigee_developer",
/// email="john.doe@acme.com",
/// first_name="John",
/// last_name="Doe",
/// user_name="john.doe",
/// attributes=[
/// {
/// "name": "business_unit",
/// "value": "HR",
/// },
/// {
/// "name": "department",
/// "value": "payroll",
/// },
/// ],
/// org_id=apigee_org.id,
/// opts = pulumi.ResourceOptions(depends_on=[apigee_instance]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var current = Gcp.Organizations.GetClientConfig.Invoke();
///
/// var apigeeNetwork = new Gcp.Compute.Network("apigee_network", new()
/// {
/// Name = "apigee-network",
/// });
///
/// var apigeeRange = new Gcp.Compute.GlobalAddress("apigee_range", new()
/// {
/// Name = "apigee-range",
/// Purpose = "VPC_PEERING",
/// AddressType = "INTERNAL",
/// PrefixLength = 16,
/// Network = apigeeNetwork.Id,
/// });
///
/// var apigeeVpcConnection = new Gcp.ServiceNetworking.Connection("apigee_vpc_connection", new()
/// {
/// Network = apigeeNetwork.Id,
/// Service = "servicenetworking.googleapis.com",
/// ReservedPeeringRanges = new[]
/// {
/// apigeeRange.Name,
/// },
/// });
///
/// var apigeeOrg = new Gcp.Apigee.Organization("apigee_org", new()
/// {
/// AnalyticsRegion = "us-central1",
/// ProjectId = current.Apply(getClientConfigResult => getClientConfigResult.Project),
/// AuthorizedNetwork = apigeeNetwork.Id,
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// apigeeVpcConnection,
/// },
/// });
///
/// var apigeeInstance = new Gcp.Apigee.Instance("apigee_instance", new()
/// {
/// Name = "my-instance",
/// Location = "us-central1",
/// OrgId = apigeeOrg.Id,
/// PeeringCidrRange = "SLASH_22",
/// });
///
/// var apigeeDeveloper = new Gcp.Apigee.Developer("apigee_developer", new()
/// {
/// Email = "john.doe@acme.com",
/// FirstName = "John",
/// LastName = "Doe",
/// UserName = "john.doe",
/// Attributes = new[]
/// {
/// new Gcp.Apigee.Inputs.DeveloperAttributeArgs
/// {
/// Name = "business_unit",
/// Value = "HR",
/// },
/// new Gcp.Apigee.Inputs.DeveloperAttributeArgs
/// {
/// Name = "department",
/// Value = "payroll",
/// },
/// },
/// OrgId = apigeeOrg.Id,
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// apigeeInstance,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigee"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicenetworking"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// current, err := organizations.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// if err != nil {
/// return err
/// }
/// apigeeNetwork, err := compute.NewNetwork(ctx, "apigee_network", &compute.NetworkArgs{
/// Name: pulumi.String("apigee-network"),
/// })
/// if err != nil {
/// return err
/// }
/// apigeeRange, err := compute.NewGlobalAddress(ctx, "apigee_range", &compute.GlobalAddressArgs{
/// Name:         pulumi.String("apigee-range"),
/// Purpose:      pulumi.String("VPC_PEERING"),
/// AddressType:  pulumi.String("INTERNAL"),
/// PrefixLength: pulumi.Int(16),
/// Network:      apigeeNetwork.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// apigeeVpcConnection, err := servicenetworking.NewConnection(ctx, "apigee_vpc_connection", &servicenetworking.ConnectionArgs{
/// Network: apigeeNetwork.ID(),
/// Service: pulumi.String("servicenetworking.googleapis.com"),
/// ReservedPeeringRanges: pulumi.StringArray{
/// apigeeRange.Name,
/// },
/// })
/// if err != nil {
/// return err
/// }
/// apigeeOrg, err := apigee.NewOrganization(ctx, "apigee_org", &apigee.OrganizationArgs{
/// AnalyticsRegion:   pulumi.String("us-central1"),
/// ProjectId:         pulumi.String(current.Project),
/// AuthorizedNetwork: apigeeNetwork.ID(),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// apigeeVpcConnection,
/// }))
/// if err != nil {
/// return err
/// }
/// apigeeInstance, err := apigee.NewInstance(ctx, "apigee_instance", &apigee.InstanceArgs{
/// Name:             pulumi.String("my-instance"),
/// Location:         pulumi.String("us-central1"),
/// OrgId:            apigeeOrg.ID(),
/// PeeringCidrRange: pulumi.String("SLASH_22"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = apigee.NewDeveloper(ctx, "apigee_developer", &apigee.DeveloperArgs{
/// Email:     pulumi.String("john.doe@acme.com"),
/// FirstName: pulumi.String("John"),
/// LastName:  pulumi.String("Doe"),
/// UserName:  pulumi.String("john.doe"),
/// Attributes: apigee.DeveloperAttributeArray{
/// &apigee.DeveloperAttributeArgs{
/// Name:  pulumi.String("business_unit"),
/// Value: pulumi.String("HR"),
/// },
/// &apigee.DeveloperAttributeArgs{
/// Name:  pulumi.String("department"),
/// Value: pulumi.String("payroll"),
/// },
/// },
/// OrgId: apigeeOrg.ID(),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// apigeeInstance,
/// }))
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import com.pulumi.gcp.apigee.Instance;
/// import com.pulumi.gcp.apigee.InstanceArgs;
/// import com.pulumi.gcp.apigee.Developer;
/// import com.pulumi.gcp.apigee.DeveloperArgs;
/// import com.pulumi.gcp.apigee.inputs.DeveloperAttributeArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var current = OrganizationsFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
/// var apigeeNetwork = new Network("apigeeNetwork", NetworkArgs.builder()
/// .name("apigee-network")
/// .build());
///
/// var apigeeRange = new GlobalAddress("apigeeRange", GlobalAddressArgs.builder()
/// .name("apigee-range")
/// .purpose("VPC_PEERING")
/// .addressType("INTERNAL")
/// .prefixLength(16)
/// .network(apigeeNetwork.id())
/// .build());
///
/// var apigeeVpcConnection = new Connection("apigeeVpcConnection", ConnectionArgs.builder()
/// .network(apigeeNetwork.id())
/// .service("servicenetworking.googleapis.com")
/// .reservedPeeringRanges(apigeeRange.name())
/// .build());
///
/// var apigeeOrg = new Organization("apigeeOrg", OrganizationArgs.builder()
/// .analyticsRegion("us-central1")
/// .projectId(current.project())
/// .authorizedNetwork(apigeeNetwork.id())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(apigeeVpcConnection)
/// .build());
///
/// var apigeeInstance = new Instance("apigeeInstance", InstanceArgs.builder()
/// .name("my-instance")
/// .location("us-central1")
/// .orgId(apigeeOrg.id())
/// .peeringCidrRange("SLASH_22")
/// .build());
///
/// var apigeeDeveloper = new Developer("apigeeDeveloper", DeveloperArgs.builder()
/// .email("john.doe@acme.com")
/// .firstName("John")
/// .lastName("Doe")
/// .userName("john.doe")
/// .attributes(
/// DeveloperAttributeArgs.builder()
/// .name("business_unit")
/// .value("HR")
/// .build(),
/// DeveloperAttributeArgs.builder()
/// .name("department")
/// .value("payroll")
/// .build())
/// .orgId(apigeeOrg.id())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(apigeeInstance)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// apigeeNetwork:
/// type: gcp:compute:Network
/// name: apigee_network
/// properties:
/// name: apigee-network
/// apigeeRange:
/// type: gcp:compute:GlobalAddress
/// name: apigee_range
/// properties:
/// name: apigee-range
/// purpose: VPC_PEERING
/// addressType: INTERNAL
/// prefixLength: 16
/// network: ${apigeeNetwork.id}
/// apigeeVpcConnection:
/// type: gcp:servicenetworking:Connection
/// name: apigee_vpc_connection
/// properties:
/// network: ${apigeeNetwork.id}
/// service: servicenetworking.googleapis.com
/// reservedPeeringRanges:
/// - ${apigeeRange.name}
/// apigeeOrg:
/// type: gcp:apigee:Organization
/// name: apigee_org
/// properties:
/// analyticsRegion: us-central1
/// projectId: ${current.project}
/// authorizedNetwork: ${apigeeNetwork.id}
/// options:
/// dependsOn:
/// - ${apigeeVpcConnection}
/// apigeeInstance:
/// type: gcp:apigee:Instance
/// name: apigee_instance
/// properties:
/// name: my-instance
/// location: us-central1
/// orgId: ${apigeeOrg.id}
/// peeringCidrRange: SLASH_22
/// apigeeDeveloper:
/// type: gcp:apigee:Developer
/// name: apigee_developer
/// properties:
/// email: john.doe@acme.com
/// firstName: John
/// lastName: Doe
/// userName: john.doe
/// attributes:
/// - name: business_unit
/// value: HR
/// - name: department
/// value: payroll
/// orgId: ${apigeeOrg.id}
/// options:
/// dependsOn:
/// - ${apigeeInstance}
/// variables:
/// current:
/// fn::invoke:
/// function: gcp:organizations:getClientConfig
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Developer can be imported using any of these accepted formats:
///
/// * `{{org_id}}/developers/{{email}}`
///
/// * `{{org_id}}/{{email}}`
///
/// When using the `pulumi import` command, Developer can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/developer:Developer default {{org_id}}/developers/{{email}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/developer:Developer default {{org_id}}/{{email}}
/// ```
class Developer extends CustomResource {
  /// Developer attributes (name/value pairs). The custom attribute limit is 18.
  /// Structure is documented below.
  late final Output<List<DeveloperAttribute>?> attributes;

  /// Time at which the developer was created in milliseconds since epoch.
  late final Output<String> createdAt;

  /// Email address of the developer. This value is used to uniquely identify the developer in Apigee hybrid. Note that the email address has to be in lowercase only..
  late final Output<String> email;

  /// First name of the developer.
  late final Output<String> firstName;

  /// Time at which the developer was last modified in milliseconds since epoch.
  late final Output<String> lastModifiedAt;

  /// Last name of the developer.
  late final Output<String> lastName;

  /// The Apigee Organization associated with the Apigee instance,
  /// in the format `organizations/{{org_name}}`.
  late final Output<String> orgId;

  /// Name of the Apigee organization in which the developer resides.
  late final Output<String> organizatioName;

  /// Status of the developer. Valid values are active and inactive.
  late final Output<String> status;

  /// User name of the developer. Not used by Apigee hybrid.
  late final Output<String> userName;

  Developer(
    String name, {
    DeveloperArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/developer:Developer',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.attributes = Output.createUnknown<List<DeveloperAttribute>?>();
    this.createdAt = Output.createUnknown<String>();
    this.email = Output.createUnknown<String>();
    this.firstName = Output.createUnknown<String>();
    this.lastModifiedAt = Output.createUnknown<String>();
    this.lastName = Output.createUnknown<String>();
    this.orgId = Output.createUnknown<String>();
    this.organizatioName = Output.createUnknown<String>();
    this.status = Output.createUnknown<String>();
    this.userName = Output.createUnknown<String>();
  }
}
