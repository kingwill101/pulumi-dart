import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_server_args.dart';
import 'management_server_management_uri.dart';
import 'management_server_network.dart';

/// A Backup and DR Management Server (Also referred as Management Console)
///
///
/// To get more information about ManagementServer, see:
///
/// * [API documentation](https://cloud.google.com/backup-disaster-recovery/docs/deployment/deployment-plan)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/backup-disaster-recovery/docs)
///
/// ## Example Usage
///
/// ### Backup Dr Management Server
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {name: "vpc-network"});
/// const privateIpAddress = new gcp.compute.GlobalAddress("private_ip_address", {
///     name: "vpc-network",
///     addressType: "INTERNAL",
///     purpose: "VPC_PEERING",
///     prefixLength: 20,
///     network: _default.id,
/// });
/// const defaultConnection = new gcp.servicenetworking.Connection("default", {
///     network: _default.id,
///     service: "servicenetworking.googleapis.com",
///     reservedPeeringRanges: [privateIpAddress.name],
/// });
/// const ms_console = new gcp.backupdisasterrecovery.ManagementServer("ms-console", {
///     location: "us-central1",
///     name: "ms-console",
///     type: "BACKUP_RESTORE",
/// }, {
///     dependsOn: [defaultConnection],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default", name="vpc-network")
/// private_ip_address = gcp.compute.GlobalAddress("private_ip_address",
///     name="vpc-network",
///     address_type="INTERNAL",
///     purpose="VPC_PEERING",
///     prefix_length=20,
///     network=default.id)
/// default_connection = gcp.servicenetworking.Connection("default",
///     network=default.id,
///     service="servicenetworking.googleapis.com",
///     reserved_peering_ranges=[private_ip_address.name])
/// ms_console = gcp.backupdisasterrecovery.ManagementServer("ms-console",
///     location="us-central1",
///     name="ms-console",
///     type="BACKUP_RESTORE",
///     opts = pulumi.ResourceOptions(depends_on=[default_connection]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "vpc-network",
///     });
///
///     var privateIpAddress = new Gcp.Compute.GlobalAddress("private_ip_address", new()
///     {
///         Name = "vpc-network",
///         AddressType = "INTERNAL",
///         Purpose = "VPC_PEERING",
///         PrefixLength = 20,
///         Network = @default.Id,
///     });
///
///     var defaultConnection = new Gcp.ServiceNetworking.Connection("default", new()
///     {
///         Network = @default.Id,
///         Service = "servicenetworking.googleapis.com",
///         ReservedPeeringRanges = new[]
///         {
///             privateIpAddress.Name,
///         },
///     });
///
///     var ms_console = new Gcp.BackupDisasterRecovery.ManagementServer("ms-console", new()
///     {
///         Location = "us-central1",
///         Name = "ms-console",
///         Type = "BACKUP_RESTORE",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             defaultConnection,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/backupdisasterrecovery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicenetworking"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name: pulumi.String("vpc-network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		privateIpAddress, err := compute.NewGlobalAddress(ctx, "private_ip_address", &compute.GlobalAddressArgs{
/// 			Name:         pulumi.String("vpc-network"),
/// 			AddressType:  pulumi.String("INTERNAL"),
/// 			Purpose:      pulumi.String("VPC_PEERING"),
/// 			PrefixLength: pulumi.Int(20),
/// 			Network:      _default.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultConnection, err := servicenetworking.NewConnection(ctx, "default", &servicenetworking.ConnectionArgs{
/// 			Network: _default.ID(),
/// 			Service: pulumi.String("servicenetworking.googleapis.com"),
/// 			ReservedPeeringRanges: pulumi.StringArray{
/// 				privateIpAddress.Name,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = backupdisasterrecovery.NewManagementServer(ctx, "ms-console", &backupdisasterrecovery.ManagementServerArgs{
/// 			Location: pulumi.String("us-central1"),
/// 			Name:     pulumi.String("ms-console"),
/// 			Type:     pulumi.String("BACKUP_RESTORE"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			defaultConnection,
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
/// import com.pulumi.gcp.servicenetworking.Connection;
/// import com.pulumi.gcp.servicenetworking.ConnectionArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.ManagementServer;
/// import com.pulumi.gcp.backupdisasterrecovery.ManagementServerArgs;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("vpc-network")
///             .build());
///
///         var privateIpAddress = new GlobalAddress("privateIpAddress", GlobalAddressArgs.builder()
///             .name("vpc-network")
///             .addressType("INTERNAL")
///             .purpose("VPC_PEERING")
///             .prefixLength(20)
///             .network(default_.id())
///             .build());
///
///         var defaultConnection = new Connection("defaultConnection", ConnectionArgs.builder()
///             .network(default_.id())
///             .service("servicenetworking.googleapis.com")
///             .reservedPeeringRanges(privateIpAddress.name())
///             .build());
///
///         var ms_console = new ManagementServer("ms-console", ManagementServerArgs.builder()
///             .location("us-central1")
///             .name("ms-console")
///             .type("BACKUP_RESTORE")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(defaultConnection)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:Network
///     properties:
///       name: vpc-network
///   privateIpAddress:
///     type: gcp:compute:GlobalAddress
///     name: private_ip_address
///     properties:
///       name: vpc-network
///       addressType: INTERNAL
///       purpose: VPC_PEERING
///       prefixLength: 20
///       network: ${default.id}
///   defaultConnection:
///     type: gcp:servicenetworking:Connection
///     name: default
///     properties:
///       network: ${default.id}
///       service: servicenetworking.googleapis.com
///       reservedPeeringRanges:
///         - ${privateIpAddress.name}
///   ms-console:
///     type: gcp:backupdisasterrecovery:ManagementServer
///     properties:
///       location: us-central1
///       name: ms-console
///       type: BACKUP_RESTORE
///     options:
///       dependsOn:
///         - ${defaultConnection}
/// ```
///
///
/// ## Import
///
/// ManagementServer can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/managementServers/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, ManagementServer can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:backupdisasterrecovery/managementServer:ManagementServer default projects/{{project}}/locations/{{location}}/managementServers/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:backupdisasterrecovery/managementServer:ManagementServer default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:backupdisasterrecovery/managementServer:ManagementServer default {{location}}/{{name}}
/// ```
class ManagementServer extends pulumi.CustomResource {
  /// The location for the management server (management console)
  late final pulumi.Output<String> location;

  /// The management console URI
  /// Structure is documented below.
  late final pulumi.Output<List<ManagementServerManagementUri>> managementUris;

  /// The name of management server (management console)
  late final pulumi.Output<String> name;

  /// Network details to create management server (management console).
  /// Structure is documented below.
  late final pulumi.Output<List<ManagementServerNetwork>?> networks;

  /// The oauth2ClientId of management console.
  late final pulumi.Output<String> oauth2ClientId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The type of management server (management console).
  /// Default value is `BACKUP_RESTORE`.
  /// Possible values are: `BACKUP_RESTORE`.
  late final pulumi.Output<String?> type;

  /// Creates a new [ManagementServer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagementServer]. {@macro pulumi_backupdisasterrecovery_management_server_management_server_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagementServer(
    String name, {
    ManagementServerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:backupdisasterrecovery/managementServer:ManagementServer',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.location = registerOutput<String>('location');
    this.managementUris = registerOutput<List<ManagementServerManagementUri>>(
      'managementUris',
    );
    this.name = registerOutput<String>('name');
    this.networks = registerOutput<List<ManagementServerNetwork>?>('networks');
    this.oauth2ClientId = registerOutput<String>('oauth2ClientId');
    this.project = registerOutput<String>('project');
    this.type = registerOutput<String?>('type');
  }
}
