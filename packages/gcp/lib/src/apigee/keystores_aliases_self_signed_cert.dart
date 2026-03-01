import 'package:pulumi/pulumi.dart' as pulumi;
import 'keystores_aliases_self_signed_cert_args.dart';
import 'keystores_aliases_self_signed_cert_certs_info.dart';
import 'keystores_aliases_self_signed_cert_subject.dart';
import 'keystores_aliases_self_signed_cert_subject_alternative_dns_names.dart';

/// An Environment Keystore Alias for Self Signed Certificate Format in Apigee
///
///
/// To get more information about KeystoresAliasesSelfSignedCert, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.environments.keystores.aliases/create)
/// * How-to Guides
/// * [Creating an environment](https://cloud.google.com/apigee/docs/api-platform/get-started/create-environment)
///
/// ## Example Usage
///
/// ### Apigee Env Keystore Alias Self Signed Cert
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const project = new gcp.organizations.Project("project", {
///     projectId: "my-project",
///     name: "my-project",
///     orgId: "123456789",
///     billingAccount: "000000-0000000-0000000-000000",
///     deletionPolicy: "DELETE",
/// });
/// const apigee = new gcp.projects.Service("apigee", {
///     project: project.projectId,
///     service: "apigee.googleapis.com",
/// });
/// const servicenetworking = new gcp.projects.Service("servicenetworking", {
///     project: project.projectId,
///     service: "servicenetworking.googleapis.com",
/// }, {
///     dependsOn: [apigee],
/// });
/// const compute = new gcp.projects.Service("compute", {
///     project: project.projectId,
///     service: "compute.googleapis.com",
/// }, {
///     dependsOn: [servicenetworking],
/// });
/// const wait120Seconds = new time.Sleep("wait_120_seconds", {createDuration: "120s"}, {
///     dependsOn: [compute],
/// });
/// const apigeeNetwork = new gcp.compute.Network("apigee_network", {
///     name: "apigee-network",
///     project: project.projectId,
/// }, {
///     dependsOn: [wait120Seconds],
/// });
/// const apigeeRange = new gcp.compute.GlobalAddress("apigee_range", {
///     name: "apigee-range",
///     purpose: "VPC_PEERING",
///     addressType: "INTERNAL",
///     prefixLength: 16,
///     network: apigeeNetwork.id,
///     project: project.projectId,
/// });
/// const apigeeVpcConnection = new gcp.servicenetworking.Connection("apigee_vpc_connection", {
///     network: apigeeNetwork.id,
///     service: "servicenetworking.googleapis.com",
///     reservedPeeringRanges: [apigeeRange.name],
/// }, {
///     dependsOn: [servicenetworking],
/// });
/// const apigeeOrg = new gcp.apigee.Organization("apigee_org", {
///     analyticsRegion: "us-central1",
///     projectId: project.projectId,
///     authorizedNetwork: apigeeNetwork.id,
/// }, {
///     dependsOn: [
///         apigeeVpcConnection,
///         apigee,
///     ],
/// });
/// const apigeeEnvironmentKeystoreSsAlias = new gcp.apigee.Environment("apigee_environment_keystore_ss_alias", {
///     orgId: apigeeOrg.id,
///     name: "env-name",
///     description: "Apigee Environment",
///     displayName: "environment-1",
/// });
/// const apigeeEnvironmentKeystoreAlias = new gcp.apigee.EnvKeystore("apigee_environment_keystore_alias", {
///     name: "env-keystore",
///     envId: apigeeEnvironmentKeystoreSsAlias.id,
/// });
/// const apigeeEnvironmentKeystoreSsAliasKeystoresAliasesSelfSignedCert = new gcp.apigee.KeystoresAliasesSelfSignedCert("apigee_environment_keystore_ss_alias", {
///     environment: apigeeEnvironmentKeystoreSsAlias.name,
///     orgId: apigeeOrg.name,
///     keystore: apigeeEnvironmentKeystoreAlias.name,
///     alias: "alias",
///     keySize: "1024",
///     sigAlg: "SHA512withRSA",
///     certValidityInDays: 4,
///     subject: {
///         commonName: "selfsigned_example",
///         countryCode: "US",
///         locality: "TX",
///         org: "CCE",
///         orgUnit: "PSO",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// project = gcp.organizations.Project("project",
///     project_id="my-project",
///     name="my-project",
///     org_id="123456789",
///     billing_account="000000-0000000-0000000-000000",
///     deletion_policy="DELETE")
/// apigee = gcp.projects.Service("apigee",
///     project=project.project_id,
///     service="apigee.googleapis.com")
/// servicenetworking = gcp.projects.Service("servicenetworking",
///     project=project.project_id,
///     service="servicenetworking.googleapis.com",
///     opts = pulumi.ResourceOptions(depends_on=[apigee]))
/// compute = gcp.projects.Service("compute",
///     project=project.project_id,
///     service="compute.googleapis.com",
///     opts = pulumi.ResourceOptions(depends_on=[servicenetworking]))
/// wait120_seconds = time.Sleep("wait_120_seconds", create_duration="120s",
/// opts = pulumi.ResourceOptions(depends_on=[compute]))
/// apigee_network = gcp.compute.Network("apigee_network",
///     name="apigee-network",
///     project=project.project_id,
///     opts = pulumi.ResourceOptions(depends_on=[wait120_seconds]))
/// apigee_range = gcp.compute.GlobalAddress("apigee_range",
///     name="apigee-range",
///     purpose="VPC_PEERING",
///     address_type="INTERNAL",
///     prefix_length=16,
///     network=apigee_network.id,
///     project=project.project_id)
/// apigee_vpc_connection = gcp.servicenetworking.Connection("apigee_vpc_connection",
///     network=apigee_network.id,
///     service="servicenetworking.googleapis.com",
///     reserved_peering_ranges=[apigee_range.name],
///     opts = pulumi.ResourceOptions(depends_on=[servicenetworking]))
/// apigee_org = gcp.apigee.Organization("apigee_org",
///     analytics_region="us-central1",
///     project_id=project.project_id,
///     authorized_network=apigee_network.id,
///     opts = pulumi.ResourceOptions(depends_on=[
///             apigee_vpc_connection,
///             apigee,
///         ]))
/// apigee_environment_keystore_ss_alias = gcp.apigee.Environment("apigee_environment_keystore_ss_alias",
///     org_id=apigee_org.id,
///     name="env-name",
///     description="Apigee Environment",
///     display_name="environment-1")
/// apigee_environment_keystore_alias = gcp.apigee.EnvKeystore("apigee_environment_keystore_alias",
///     name="env-keystore",
///     env_id=apigee_environment_keystore_ss_alias.id)
/// apigee_environment_keystore_ss_alias_keystores_aliases_self_signed_cert = gcp.apigee.KeystoresAliasesSelfSignedCert("apigee_environment_keystore_ss_alias",
///     environment=apigee_environment_keystore_ss_alias.name,
///     org_id=apigee_org.name,
///     keystore=apigee_environment_keystore_alias.name,
///     alias="alias",
///     key_size="1024",
///     sig_alg="SHA512withRSA",
///     cert_validity_in_days=4,
///     subject={
///         "common_name": "selfsigned_example",
///         "country_code": "US",
///         "locality": "TX",
///         "org": "CCE",
///         "org_unit": "PSO",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = new Gcp.Organizations.Project("project", new()
///     {
///         ProjectId = "my-project",
///         Name = "my-project",
///         OrgId = "123456789",
///         BillingAccount = "000000-0000000-0000000-000000",
///         DeletionPolicy = "DELETE",
///     });
///
///     var apigee = new Gcp.Projects.Service("apigee", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "apigee.googleapis.com",
///     });
///
///     var servicenetworking = new Gcp.Projects.Service("servicenetworking", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "servicenetworking.googleapis.com",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             apigee,
///         },
///     });
///
///     var compute = new Gcp.Projects.Service("compute", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "compute.googleapis.com",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             servicenetworking,
///         },
///     });
///
///     var wait120Seconds = new Time.Sleep("wait_120_seconds", new()
///     {
///         CreateDuration = "120s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             compute,
///         },
///     });
///
///     var apigeeNetwork = new Gcp.Compute.Network("apigee_network", new()
///     {
///         Name = "apigee-network",
///         Project = project.ProjectId,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait120Seconds,
///         },
///     });
///
///     var apigeeRange = new Gcp.Compute.GlobalAddress("apigee_range", new()
///     {
///         Name = "apigee-range",
///         Purpose = "VPC_PEERING",
///         AddressType = "INTERNAL",
///         PrefixLength = 16,
///         Network = apigeeNetwork.Id,
///         Project = project.ProjectId,
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
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             servicenetworking,
///         },
///     });
///
///     var apigeeOrg = new Gcp.Apigee.Organization("apigee_org", new()
///     {
///         AnalyticsRegion = "us-central1",
///         ProjectId = project.ProjectId,
///         AuthorizedNetwork = apigeeNetwork.Id,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             apigeeVpcConnection,
///             apigee,
///         },
///     });
///
///     var apigeeEnvironmentKeystoreSsAlias = new Gcp.Apigee.Environment("apigee_environment_keystore_ss_alias", new()
///     {
///         OrgId = apigeeOrg.Id,
///         Name = "env-name",
///         Description = "Apigee Environment",
///         DisplayName = "environment-1",
///     });
///
///     var apigeeEnvironmentKeystoreAlias = new Gcp.Apigee.EnvKeystore("apigee_environment_keystore_alias", new()
///     {
///         Name = "env-keystore",
///         EnvId = apigeeEnvironmentKeystoreSsAlias.Id,
///     });
///
///     var apigeeEnvironmentKeystoreSsAliasKeystoresAliasesSelfSignedCert = new Gcp.Apigee.KeystoresAliasesSelfSignedCert("apigee_environment_keystore_ss_alias", new()
///     {
///         Environment = apigeeEnvironmentKeystoreSsAlias.Name,
///         OrgId = apigeeOrg.Name,
///         Keystore = apigeeEnvironmentKeystoreAlias.Name,
///         Alias = "alias",
///         KeySize = "1024",
///         SigAlg = "SHA512withRSA",
///         CertValidityInDays = 4,
///         Subject = new Gcp.Apigee.Inputs.KeystoresAliasesSelfSignedCertSubjectArgs
///         {
///             CommonName = "selfsigned_example",
///             CountryCode = "US",
///             Locality = "TX",
///             Org = "CCE",
///             OrgUnit = "PSO",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicenetworking"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("my-project"),
/// 			Name:           pulumi.String("my-project"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigee, err := projects.NewService(ctx, "apigee", &projects.ServiceArgs{
/// 			Project: project.ProjectId,
/// 			Service: pulumi.String("apigee.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		servicenetworking, err := projects.NewService(ctx, "servicenetworking", &projects.ServiceArgs{
/// 			Project: project.ProjectId,
/// 			Service: pulumi.String("servicenetworking.googleapis.com"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			apigee,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		compute, err := projects.NewService(ctx, "compute", &projects.ServiceArgs{
/// 			Project: project.ProjectId,
/// 			Service: pulumi.String("compute.googleapis.com"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			servicenetworking,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		wait120Seconds, err := time.NewSleep(ctx, "wait_120_seconds", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("120s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			compute,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeNetwork, err := compute.NewNetwork(ctx, "apigee_network", &compute.NetworkArgs{
/// 			Name:    pulumi.String("apigee-network"),
/// 			Project: project.ProjectId,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait120Seconds,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeRange, err := compute.NewGlobalAddress(ctx, "apigee_range", &compute.GlobalAddressArgs{
/// 			Name:         pulumi.String("apigee-range"),
/// 			Purpose:      pulumi.String("VPC_PEERING"),
/// 			AddressType:  pulumi.String("INTERNAL"),
/// 			PrefixLength: pulumi.Int(16),
/// 			Network:      apigeeNetwork.ID(),
/// 			Project:      project.ProjectId,
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
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			servicenetworking,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeOrg, err := apigee.NewOrganization(ctx, "apigee_org", &apigee.OrganizationArgs{
/// 			AnalyticsRegion:   pulumi.String("us-central1"),
/// 			ProjectId:         project.ProjectId,
/// 			AuthorizedNetwork: apigeeNetwork.ID(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			apigeeVpcConnection,
/// 			apigee,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeEnvironmentKeystoreSsAlias, err := apigee.NewEnvironment(ctx, "apigee_environment_keystore_ss_alias", &apigee.EnvironmentArgs{
/// 			OrgId:       apigeeOrg.ID(),
/// 			Name:        pulumi.String("env-name"),
/// 			Description: pulumi.String("Apigee Environment"),
/// 			DisplayName: pulumi.String("environment-1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeEnvironmentKeystoreAlias, err := apigee.NewEnvKeystore(ctx, "apigee_environment_keystore_alias", &apigee.EnvKeystoreArgs{
/// 			Name:  pulumi.String("env-keystore"),
/// 			EnvId: apigeeEnvironmentKeystoreSsAlias.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigee.NewKeystoresAliasesSelfSignedCert(ctx, "apigee_environment_keystore_ss_alias", &apigee.KeystoresAliasesSelfSignedCertArgs{
/// 			Environment:        apigeeEnvironmentKeystoreSsAlias.Name,
/// 			OrgId:              apigeeOrg.Name,
/// 			Keystore:           apigeeEnvironmentKeystoreAlias.Name,
/// 			Alias:              pulumi.String("alias"),
/// 			KeySize:            pulumi.String("1024"),
/// 			SigAlg:             pulumi.String("SHA512withRSA"),
/// 			CertValidityInDays: pulumi.Int(4),
/// 			Subject: &apigee.KeystoresAliasesSelfSignedCertSubjectArgs{
/// 				CommonName:  pulumi.String("selfsigned_example"),
/// 				CountryCode: pulumi.String("US"),
/// 				Locality:    pulumi.String("TX"),
/// 				Org:         pulumi.String("CCE"),
/// 				OrgUnit:     pulumi.String("PSO"),
/// 			},
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
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
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
/// import com.pulumi.gcp.apigee.EnvKeystore;
/// import com.pulumi.gcp.apigee.EnvKeystoreArgs;
/// import com.pulumi.gcp.apigee.KeystoresAliasesSelfSignedCert;
/// import com.pulumi.gcp.apigee.KeystoresAliasesSelfSignedCertArgs;
/// import com.pulumi.gcp.apigee.inputs.KeystoresAliasesSelfSignedCertSubjectArgs;
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
///         var project = new Project("project", ProjectArgs.builder()
///             .projectId("my-project")
///             .name("my-project")
///             .orgId("123456789")
///             .billingAccount("000000-0000000-0000000-000000")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var apigee = new Service("apigee", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("apigee.googleapis.com")
///             .build());
///
///         var servicenetworking = new Service("servicenetworking", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("servicenetworking.googleapis.com")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(apigee)
///                 .build());
///
///         var compute = new Service("compute", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("compute.googleapis.com")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(servicenetworking)
///                 .build());
///
///         var wait120Seconds = new Sleep("wait120Seconds", SleepArgs.builder()
///             .createDuration("120s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(compute)
///                 .build());
///
///         var apigeeNetwork = new Network("apigeeNetwork", NetworkArgs.builder()
///             .name("apigee-network")
///             .project(project.projectId())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait120Seconds)
///                 .build());
///
///         var apigeeRange = new GlobalAddress("apigeeRange", GlobalAddressArgs.builder()
///             .name("apigee-range")
///             .purpose("VPC_PEERING")
///             .addressType("INTERNAL")
///             .prefixLength(16)
///             .network(apigeeNetwork.id())
///             .project(project.projectId())
///             .build());
///
///         var apigeeVpcConnection = new Connection("apigeeVpcConnection", ConnectionArgs.builder()
///             .network(apigeeNetwork.id())
///             .service("servicenetworking.googleapis.com")
///             .reservedPeeringRanges(apigeeRange.name())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(servicenetworking)
///                 .build());
///
///         var apigeeOrg = new Organization("apigeeOrg", OrganizationArgs.builder()
///             .analyticsRegion("us-central1")
///             .projectId(project.projectId())
///             .authorizedNetwork(apigeeNetwork.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     apigeeVpcConnection,
///                     apigee)
///                 .build());
///
///         var apigeeEnvironmentKeystoreSsAlias = new Environment("apigeeEnvironmentKeystoreSsAlias", EnvironmentArgs.builder()
///             .orgId(apigeeOrg.id())
///             .name("env-name")
///             .description("Apigee Environment")
///             .displayName("environment-1")
///             .build());
///
///         var apigeeEnvironmentKeystoreAlias = new EnvKeystore("apigeeEnvironmentKeystoreAlias", EnvKeystoreArgs.builder()
///             .name("env-keystore")
///             .envId(apigeeEnvironmentKeystoreSsAlias.id())
///             .build());
///
///         var apigeeEnvironmentKeystoreSsAliasKeystoresAliasesSelfSignedCert = new KeystoresAliasesSelfSignedCert("apigeeEnvironmentKeystoreSsAliasKeystoresAliasesSelfSignedCert", KeystoresAliasesSelfSignedCertArgs.builder()
///             .environment(apigeeEnvironmentKeystoreSsAlias.name())
///             .orgId(apigeeOrg.name())
///             .keystore(apigeeEnvironmentKeystoreAlias.name())
///             .alias("alias")
///             .keySize("1024")
///             .sigAlg("SHA512withRSA")
///             .certValidityInDays(4)
///             .subject(KeystoresAliasesSelfSignedCertSubjectArgs.builder()
///                 .commonName("selfsigned_example")
///                 .countryCode("US")
///                 .locality("TX")
///                 .org("CCE")
///                 .orgUnit("PSO")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   project:
///     type: gcp:organizations:Project
///     properties:
///       projectId: my-project
///       name: my-project
///       orgId: '123456789'
///       billingAccount: 000000-0000000-0000000-000000
///       deletionPolicy: DELETE
///   apigee:
///     type: gcp:projects:Service
///     properties:
///       project: ${project.projectId}
///       service: apigee.googleapis.com
///   servicenetworking:
///     type: gcp:projects:Service
///     properties:
///       project: ${project.projectId}
///       service: servicenetworking.googleapis.com
///     options:
///       dependsOn:
///         - ${apigee}
///   compute:
///     type: gcp:projects:Service
///     properties:
///       project: ${project.projectId}
///       service: compute.googleapis.com
///     options:
///       dependsOn:
///         - ${servicenetworking}
///   wait120Seconds:
///     type: time:Sleep
///     name: wait_120_seconds
///     properties:
///       createDuration: 120s
///     options:
///       dependsOn:
///         - ${compute}
///   apigeeNetwork:
///     type: gcp:compute:Network
///     name: apigee_network
///     properties:
///       name: apigee-network
///       project: ${project.projectId}
///     options:
///       dependsOn:
///         - ${wait120Seconds}
///   apigeeRange:
///     type: gcp:compute:GlobalAddress
///     name: apigee_range
///     properties:
///       name: apigee-range
///       purpose: VPC_PEERING
///       addressType: INTERNAL
///       prefixLength: 16
///       network: ${apigeeNetwork.id}
///       project: ${project.projectId}
///   apigeeVpcConnection:
///     type: gcp:servicenetworking:Connection
///     name: apigee_vpc_connection
///     properties:
///       network: ${apigeeNetwork.id}
///       service: servicenetworking.googleapis.com
///       reservedPeeringRanges:
///         - ${apigeeRange.name}
///     options:
///       dependsOn:
///         - ${servicenetworking}
///   apigeeOrg:
///     type: gcp:apigee:Organization
///     name: apigee_org
///     properties:
///       analyticsRegion: us-central1
///       projectId: ${project.projectId}
///       authorizedNetwork: ${apigeeNetwork.id}
///     options:
///       dependsOn:
///         - ${apigeeVpcConnection}
///         - ${apigee}
///   apigeeEnvironmentKeystoreSsAlias:
///     type: gcp:apigee:Environment
///     name: apigee_environment_keystore_ss_alias
///     properties:
///       orgId: ${apigeeOrg.id}
///       name: env-name
///       description: Apigee Environment
///       displayName: environment-1
///   apigeeEnvironmentKeystoreAlias:
///     type: gcp:apigee:EnvKeystore
///     name: apigee_environment_keystore_alias
///     properties:
///       name: env-keystore
///       envId: ${apigeeEnvironmentKeystoreSsAlias.id}
///   apigeeEnvironmentKeystoreSsAliasKeystoresAliasesSelfSignedCert:
///     type: gcp:apigee:KeystoresAliasesSelfSignedCert
///     name: apigee_environment_keystore_ss_alias
///     properties:
///       environment: ${apigeeEnvironmentKeystoreSsAlias.name}
///       orgId: ${apigeeOrg.name}
///       keystore: ${apigeeEnvironmentKeystoreAlias.name}
///       alias: alias
///       keySize: 1024
///       sigAlg: SHA512withRSA
///       certValidityInDays: 4
///       subject:
///         commonName: selfsigned_example
///         countryCode: US
///         locality: TX
///         org: CCE
///         orgUnit: PSO
/// ```
///
///
/// ## Import
///
/// KeystoresAliasesSelfSignedCert can be imported using any of these accepted formats:
///
/// * `organizations/{{org_id}}/environments/{{environment}}/keystores/{{keystore}}/aliases/{{alias}}`
///
/// * `{{org_id}}/{{environment}}/{{keystore}}/{{alias}}`
///
/// When using the `pulumi import` command, KeystoresAliasesSelfSignedCert can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/keystoresAliasesSelfSignedCert:KeystoresAliasesSelfSignedCert default organizations/{{org_id}}/environments/{{environment}}/keystores/{{keystore}}/aliases/{{alias}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/keystoresAliasesSelfSignedCert:KeystoresAliasesSelfSignedCert default {{org_id}}/{{environment}}/{{keystore}}/{{alias}}
/// ```
class KeystoresAliasesSelfSignedCert extends pulumi.CustomResource {
  /// Alias for the key/certificate pair. Values must match the regular expression [\w\s-.]{1,255}.
  /// This must be provided for all formats except selfsignedcert; self-signed certs may specify the alias in either
  /// this parameter or the JSON body.
  late final pulumi.Output<String> alias;

  /// Validity duration of certificate, in days. Accepts positive non-zero value. Defaults to 365.
  late final pulumi.Output<int?> certValidityInDays;

  /// Chain of certificates under this alias.
  /// Structure is documented below.
  late final pulumi.Output<List<KeystoresAliasesSelfSignedCertCertsInfo>>
  certsInfos;

  /// The Apigee environment name
  late final pulumi.Output<String> environment;

  /// Key size. Default and maximum value is 2048 bits.
  late final pulumi.Output<String?> keySize;

  /// The Apigee keystore name associated in an Apigee environment
  late final pulumi.Output<String> keystore;

  /// The Apigee Organization name associated with the Apigee environment
  late final pulumi.Output<String> orgId;

  /// Signature algorithm to generate private key. Valid values are SHA512withRSA, SHA384withRSA, and SHA256withRSA
  late final pulumi.Output<String> sigAlg;

  /// Subject details.
  /// Structure is documented below.
  late final pulumi.Output<KeystoresAliasesSelfSignedCertSubject> subject;

  /// List of alternative host names. Maximum length is 255 characters for each value.
  /// Structure is documented below.
  late final pulumi.Output<
    KeystoresAliasesSelfSignedCertSubjectAlternativeDnsNames?
  >
  subjectAlternativeDnsNames;

  /// Optional.Type of Alias
  late final pulumi.Output<String> type;

  /// Creates a new [KeystoresAliasesSelfSignedCert].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KeystoresAliasesSelfSignedCert]. {@macro pulumi_apigee_keystores_aliases_self_signed_cert_keystores_aliases_self_signed_cert_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KeystoresAliasesSelfSignedCert(
    String name, {
    KeystoresAliasesSelfSignedCertArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:apigee/keystoresAliasesSelfSignedCert:KeystoresAliasesSelfSignedCert',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.alias = registerOutput<String>('alias');
    this.certValidityInDays = registerOutput<int?>('certValidityInDays');
    this.certsInfos =
        registerOutput<List<KeystoresAliasesSelfSignedCertCertsInfo>>(
          'certsInfos',
        );
    this.environment = registerOutput<String>('environment');
    this.keySize = registerOutput<String?>('keySize');
    this.keystore = registerOutput<String>('keystore');
    this.orgId = registerOutput<String>('orgId');
    this.sigAlg = registerOutput<String>('sigAlg');
    this.subject = registerOutput<KeystoresAliasesSelfSignedCertSubject>(
      'subject',
    );
    this.subjectAlternativeDnsNames =
        registerOutput<
          KeystoresAliasesSelfSignedCertSubjectAlternativeDnsNames?
        >('subjectAlternativeDnsNames');
    this.type = registerOutput<String>('type');
  }
}
