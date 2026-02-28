import 'package:pulumi/pulumi.dart' as pulumi;
import 'datastore_args.dart';
import 'datastore_nfs_datastore.dart';

/// A datastore resource that can be mounted on a privatecloud cluster
///
///
///
/// ## Example Usage
///
/// ### Vmware Engine Datastore Thirdparty
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // use existing network with connectivity to the thirdparty datastore
/// const _default = gcp.compute.getNetwork({
///     name: "default",
/// });
/// // create a thirdparty datastore
/// const exampleThirdparty = new gcp.vmwareengine.Datastore("example_thirdparty", {
///     name: "thirdparty-datastore",
///     location: "us-west1-a",
///     description: "example thirdparty datastore.",
///     nfsDatastore: {
///         thirdPartyFileService: {
///             fileShare: "/share1",
///             network: _default.then(_default => _default.id),
///             servers: ["10.0.0.4"],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// # use existing network with connectivity to the thirdparty datastore
/// default = gcp.compute.get_network(name="default")
/// # create a thirdparty datastore
/// example_thirdparty = gcp.vmwareengine.Datastore("example_thirdparty",
///     name="thirdparty-datastore",
///     location="us-west1-a",
///     description="example thirdparty datastore.",
///     nfs_datastore={
///         "third_party_file_service": {
///             "file_share": "/share1",
///             "network": default.id,
///             "servers": ["10.0.0.4"],
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // use existing network with connectivity to the thirdparty datastore
///     var @default = Gcp.Compute.GetNetwork.Invoke(new()
///     {
///         Name = "default",
///     });
///
///     // create a thirdparty datastore
///     var exampleThirdparty = new Gcp.VMwareEngine.Datastore("example_thirdparty", new()
///     {
///         Name = "thirdparty-datastore",
///         Location = "us-west1-a",
///         Description = "example thirdparty datastore.",
///         NfsDatastore = new Gcp.VMwareEngine.Inputs.DatastoreNfsDatastoreArgs
///         {
///             ThirdPartyFileService = new Gcp.VMwareEngine.Inputs.DatastoreNfsDatastoreThirdPartyFileServiceArgs
///             {
///                 FileShare = "/share1",
///                 Network = @default.Apply(@default => @default.Apply(getNetworkResult => getNetworkResult.Id)),
///                 Servers = new[]
///                 {
///                     "10.0.0.4",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vmwareengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// use existing network with connectivity to the thirdparty datastore
/// 		_default, err := compute.LookupNetwork(ctx, &compute.LookupNetworkArgs{
/// 			Name: "default",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// create a thirdparty datastore
/// 		_, err = vmwareengine.NewDatastore(ctx, "example_thirdparty", &vmwareengine.DatastoreArgs{
/// 			Name:        pulumi.String("thirdparty-datastore"),
/// 			Location:    pulumi.String("us-west1-a"),
/// 			Description: pulumi.String("example thirdparty datastore."),
/// 			NfsDatastore: &vmwareengine.DatastoreNfsDatastoreArgs{
/// 				ThirdPartyFileService: &vmwareengine.DatastoreNfsDatastoreThirdPartyFileServiceArgs{
/// 					FileShare: pulumi.String("/share1"),
/// 					Network:   pulumi.String(_default.Id),
/// 					Servers: pulumi.StringArray{
/// 						pulumi.String("10.0.0.4"),
/// 					},
/// 				},
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetNetworkArgs;
/// import com.pulumi.gcp.vmwareengine.Datastore;
/// import com.pulumi.gcp.vmwareengine.DatastoreArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.DatastoreNfsDatastoreArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.DatastoreNfsDatastoreThirdPartyFileServiceArgs;
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
///         // use existing network with connectivity to the thirdparty datastore
///         final var default = ComputeFunctions.getNetwork(GetNetworkArgs.builder()
///             .name("default")
///             .build());
///
///         // create a thirdparty datastore
///         var exampleThirdparty = new Datastore("exampleThirdparty", DatastoreArgs.builder()
///             .name("thirdparty-datastore")
///             .location("us-west1-a")
///             .description("example thirdparty datastore.")
///             .nfsDatastore(DatastoreNfsDatastoreArgs.builder()
///                 .thirdPartyFileService(DatastoreNfsDatastoreThirdPartyFileServiceArgs.builder()
///                     .fileShare("/share1")
///                     .network(default_.id())
///                     .servers("10.0.0.4")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # create a thirdparty datastore
///   exampleThirdparty:
///     type: gcp:vmwareengine:Datastore
///     name: example_thirdparty
///     properties:
///       name: thirdparty-datastore
///       location: us-west1-a
///       description: example thirdparty datastore.
///       nfsDatastore:
///         thirdPartyFileService:
///           fileShare: /share1
///           network: ${default.id}
///           servers:
///             - 10.0.0.4
/// variables:
///   # use existing network with connectivity to the thirdparty datastore
///   default:
///     fn::invoke:
///       function: gcp:compute:getNetwork
///       arguments:
///         name: default
/// ```
///
/// ### Vmware Engine Datastore Filestore
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // Use existing filestore instance
/// const testInstance = gcp.filestore.getInstance({
///     name: "fs-instance",
///     location: "",
/// });
/// // Create a VmwareEngine Datastore, referencing the filestore instance
/// const exampleFilestore = new gcp.vmwareengine.Datastore("example_filestore", {
///     name: "filestore-datastore",
///     location: "",
///     description: "example google_file_service.filestore datastore.",
///     nfsDatastore: {
///         googleFileService: {
///             filestoreInstance: testInstanceGoogleFilestoreInstance.id,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// # Use existing filestore instance
/// test_instance = gcp.filestore.get_instance(name="fs-instance",
///     location="")
/// # Create a VmwareEngine Datastore, referencing the filestore instance
/// example_filestore = gcp.vmwareengine.Datastore("example_filestore",
///     name="filestore-datastore",
///     location="",
///     description="example google_file_service.filestore datastore.",
///     nfs_datastore={
///         "google_file_service": {
///             "filestore_instance": test_instance_google_filestore_instance["id"],
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Use existing filestore instance
///     var testInstance = Gcp.Filestore.GetInstance.Invoke(new()
///     {
///         Name = "fs-instance",
///         Location = "",
///     });
///
///     // Create a VmwareEngine Datastore, referencing the filestore instance
///     var exampleFilestore = new Gcp.VMwareEngine.Datastore("example_filestore", new()
///     {
///         Name = "filestore-datastore",
///         Location = "",
///         Description = "example google_file_service.filestore datastore.",
///         NfsDatastore = new Gcp.VMwareEngine.Inputs.DatastoreNfsDatastoreArgs
///         {
///             GoogleFileService = new Gcp.VMwareEngine.Inputs.DatastoreNfsDatastoreGoogleFileServiceArgs
///             {
///                 FilestoreInstance = testInstanceGoogleFilestoreInstance.Id,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/filestore"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vmwareengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Use existing filestore instance
/// 		_, err := filestore.LookupInstance(ctx, &filestore.LookupInstanceArgs{
/// 			Name:     "fs-instance",
/// 			Location: pulumi.StringRef(""),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create a VmwareEngine Datastore, referencing the filestore instance
/// 		_, err = vmwareengine.NewDatastore(ctx, "example_filestore", &vmwareengine.DatastoreArgs{
/// 			Name:        pulumi.String("filestore-datastore"),
/// 			Location:    pulumi.String(""),
/// 			Description: pulumi.String("example google_file_service.filestore datastore."),
/// 			NfsDatastore: &vmwareengine.DatastoreNfsDatastoreArgs{
/// 				GoogleFileService: &vmwareengine.DatastoreNfsDatastoreGoogleFileServiceArgs{
/// 					FilestoreInstance: pulumi.Any(testInstanceGoogleFilestoreInstance.Id),
/// 				},
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
/// import com.pulumi.gcp.filestore.FilestoreFunctions;
/// import com.pulumi.gcp.filestore.inputs.GetInstanceArgs;
/// import com.pulumi.gcp.vmwareengine.Datastore;
/// import com.pulumi.gcp.vmwareengine.DatastoreArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.DatastoreNfsDatastoreArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.DatastoreNfsDatastoreGoogleFileServiceArgs;
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
///         // Use existing filestore instance
///         final var testInstance = FilestoreFunctions.getInstance(GetInstanceArgs.builder()
///             .name("fs-instance")
///             .location("")
///             .build());
///
///         // Create a VmwareEngine Datastore, referencing the filestore instance
///         var exampleFilestore = new Datastore("exampleFilestore", DatastoreArgs.builder()
///             .name("filestore-datastore")
///             .location("")
///             .description("example google_file_service.filestore datastore.")
///             .nfsDatastore(DatastoreNfsDatastoreArgs.builder()
///                 .googleFileService(DatastoreNfsDatastoreGoogleFileServiceArgs.builder()
///                     .filestoreInstance(testInstanceGoogleFilestoreInstance.id())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create a VmwareEngine Datastore, referencing the filestore instance
///   exampleFilestore:
///     type: gcp:vmwareengine:Datastore
///     name: example_filestore
///     properties:
///       name: filestore-datastore
///       location: ""
///       description: example google_file_service.filestore datastore.
///       nfsDatastore:
///         googleFileService:
///           filestoreInstance: ${testInstanceGoogleFilestoreInstance.id}
/// variables:
///   # Use existing filestore instance
///   testInstance:
///     fn::invoke:
///       function: gcp:filestore:getInstance
///       arguments:
///         name: fs-instance
///         location: ""
/// ```
///
/// ### Vmware Engine Datastore Netapp
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // Use existing netapp volume
/// const testVolume = new gcp.netapp.Volume("test_volume", {
///     name: "netapp-volume",
///     location: "us-west1",
/// });
/// // Create a VmwareEngine Datastore, referencing the netapp volume
/// const exampleNetapp = new gcp.vmwareengine.Datastore("example_netapp", {
///     name: "netapp-datastore",
///     location: "us-west1",
///     description: "example google_file_service.netapp datastore.",
///     nfsDatastore: {
///         googleFileService: {
///             netappVolume: testVolume.id,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// # Use existing netapp volume
/// test_volume = gcp.netapp.Volume("test_volume",
///     name="netapp-volume",
///     location="us-west1")
/// # Create a VmwareEngine Datastore, referencing the netapp volume
/// example_netapp = gcp.vmwareengine.Datastore("example_netapp",
///     name="netapp-datastore",
///     location="us-west1",
///     description="example google_file_service.netapp datastore.",
///     nfs_datastore={
///         "google_file_service": {
///             "netapp_volume": test_volume.id,
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Use existing netapp volume
///     var testVolume = new Gcp.Netapp.Volume("test_volume", new()
///     {
///         Name = "netapp-volume",
///         Location = "us-west1",
///     });
///
///     // Create a VmwareEngine Datastore, referencing the netapp volume
///     var exampleNetapp = new Gcp.VMwareEngine.Datastore("example_netapp", new()
///     {
///         Name = "netapp-datastore",
///         Location = "us-west1",
///         Description = "example google_file_service.netapp datastore.",
///         NfsDatastore = new Gcp.VMwareEngine.Inputs.DatastoreNfsDatastoreArgs
///         {
///             GoogleFileService = new Gcp.VMwareEngine.Inputs.DatastoreNfsDatastoreGoogleFileServiceArgs
///             {
///                 NetappVolume = testVolume.Id,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/netapp"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vmwareengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Use existing netapp volume
/// 		testVolume, err := netapp.NewVolume(ctx, "test_volume", &netapp.VolumeArgs{
/// 			Name:     pulumi.String("netapp-volume"),
/// 			Location: pulumi.String("us-west1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create a VmwareEngine Datastore, referencing the netapp volume
/// 		_, err = vmwareengine.NewDatastore(ctx, "example_netapp", &vmwareengine.DatastoreArgs{
/// 			Name:        pulumi.String("netapp-datastore"),
/// 			Location:    pulumi.String("us-west1"),
/// 			Description: pulumi.String("example google_file_service.netapp datastore."),
/// 			NfsDatastore: &vmwareengine.DatastoreNfsDatastoreArgs{
/// 				GoogleFileService: &vmwareengine.DatastoreNfsDatastoreGoogleFileServiceArgs{
/// 					NetappVolume: testVolume.ID(),
/// 				},
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
/// import com.pulumi.gcp.netapp.Volume;
/// import com.pulumi.gcp.netapp.VolumeArgs;
/// import com.pulumi.gcp.vmwareengine.Datastore;
/// import com.pulumi.gcp.vmwareengine.DatastoreArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.DatastoreNfsDatastoreArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.DatastoreNfsDatastoreGoogleFileServiceArgs;
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
///         // Use existing netapp volume
///         var testVolume = new Volume("testVolume", VolumeArgs.builder()
///             .name("netapp-volume")
///             .location("us-west1")
///             .build());
///
///         // Create a VmwareEngine Datastore, referencing the netapp volume
///         var exampleNetapp = new Datastore("exampleNetapp", DatastoreArgs.builder()
///             .name("netapp-datastore")
///             .location("us-west1")
///             .description("example google_file_service.netapp datastore.")
///             .nfsDatastore(DatastoreNfsDatastoreArgs.builder()
///                 .googleFileService(DatastoreNfsDatastoreGoogleFileServiceArgs.builder()
///                     .netappVolume(testVolume.id())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Use existing netapp volume
///   testVolume:
///     type: gcp:netapp:Volume
///     name: test_volume
///     properties:
///       name: netapp-volume
///       location: us-west1
///   # Create a VmwareEngine Datastore, referencing the netapp volume
///   exampleNetapp:
///     type: gcp:vmwareengine:Datastore
///     name: example_netapp
///     properties:
///       name: netapp-datastore
///       location: us-west1
///       description: example google_file_service.netapp datastore.
///       nfsDatastore:
///         googleFileService:
///           netappVolume: ${testVolume.id}
/// ```
///
///
/// ## Import
///
/// Datastore can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/datastores/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Datastore can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vmwareengine/datastore:Datastore default projects/{{project}}/locations/{{location}}/datastores/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vmwareengine/datastore:Datastore default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vmwareengine/datastore:Datastore default {{location}}/{{name}}
/// ```
class Datastore extends pulumi.CustomResource {
  /// Clusters to which the datastore is attached.
  late final pulumi.Output<List<String>> clusters;

  /// Creation time of this resource.
  late final pulumi.Output<String> createTime;

  /// User-provided description for this datastore
  late final pulumi.Output<String?> description;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;

  /// The user-provided identifier of the datastore to be created.
  /// This identifier must be unique among each `Datastore` within the parent
  /// and becomes the final token in the name URI.
  /// The identifier must meet the following requirements:
  /// * Only contains 1-63 alphanumeric characters and hyphens
  /// * Begins with an alphabetical character
  /// * Ends with a non-hyphen character
  /// * Not formatted as a UUID
  /// * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034)
  /// (section 3.5)
  late final pulumi.Output<String> name;

  /// The NFS datastore configuration.
  /// Structure is documented below.
  late final pulumi.Output<DatastoreNfsDatastore> nfsDatastore;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The state of the Datastore.
  /// Possible values:
  /// CREATING
  /// ACTIVE
  /// UPDATING
  /// DELETING
  /// SOFT_DELETING
  /// SOFT_DELETED
  late final pulumi.Output<String> state;

  /// System-generated unique identifier for the resource.
  late final pulumi.Output<String> uid;

  /// Last update time of this resource.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Datastore].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Datastore]. {@macro pulumi_vmwareengine_datastore_datastore_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Datastore(
    String name, {
    DatastoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vmwareengine/datastore:Datastore',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusters = registerOutput<List<String>>('clusters');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.nfsDatastore = registerOutput<DatastoreNfsDatastore>('nfsDatastore');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
