import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_type_access_v3_args.dart';

/// Manages a V3 block storage volume type access resource within OpenStack.
///
/// > **Note:** This usually requires admin privileges.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const project1 = new openstack.identity.Project("project_1", {name: "project_1"});
/// const volumeType1 = new openstack.blockstorage.VolumeTypeV3("volume_type_1", {
///     name: "volume_type_1",
///     isPublic: false,
/// });
/// const volumeTypeAccess = new openstack.blockstorage.VolumeTypeAccessV3("volume_type_access", {
///     projectId: project1.id,
///     volumeTypeId: volumeType1.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// project1 = openstack.identity.Project("project_1", name="project_1")
/// volume_type1 = openstack.blockstorage.VolumeTypeV3("volume_type_1",
///     name="volume_type_1",
///     is_public=False)
/// volume_type_access = openstack.blockstorage.VolumeTypeAccessV3("volume_type_access",
///     project_id=project1.id,
///     volume_type_id=volume_type1.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project1 = new OpenStack.Identity.Project("project_1", new()
///     {
///         Name = "project_1",
///     });
///
///     var volumeType1 = new OpenStack.BlockStorage.VolumeTypeV3("volume_type_1", new()
///     {
///         Name = "volume_type_1",
///         IsPublic = false,
///     });
///
///     var volumeTypeAccess = new OpenStack.BlockStorage.VolumeTypeAccessV3("volume_type_access", new()
///     {
///         ProjectId = project1.Id,
///         VolumeTypeId = volumeType1.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/blockstorage"
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/identity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project1, err := identity.NewProject(ctx, "project_1", &identity.ProjectArgs{
/// 			Name: pulumi.String("project_1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		volumeType1, err := blockstorage.NewVolumeTypeV3(ctx, "volume_type_1", &blockstorage.VolumeTypeV3Args{
/// 			Name:     pulumi.String("volume_type_1"),
/// 			IsPublic: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = blockstorage.NewVolumeTypeAccessV3(ctx, "volume_type_access", &blockstorage.VolumeTypeAccessV3Args{
/// 			ProjectId:    project1.ID(),
/// 			VolumeTypeId: volumeType1.ID(),
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
/// import com.pulumi.openstack.identity.Project;
/// import com.pulumi.openstack.identity.ProjectArgs;
/// import com.pulumi.openstack.blockstorage.VolumeTypeV3;
/// import com.pulumi.openstack.blockstorage.VolumeTypeV3Args;
/// import com.pulumi.openstack.blockstorage.VolumeTypeAccessV3;
/// import com.pulumi.openstack.blockstorage.VolumeTypeAccessV3Args;
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
///         var project1 = new Project("project1", ProjectArgs.builder()
///             .name("project_1")
///             .build());
///
///         var volumeType1 = new VolumeTypeV3("volumeType1", VolumeTypeV3Args.builder()
///             .name("volume_type_1")
///             .isPublic(false)
///             .build());
///
///         var volumeTypeAccess = new VolumeTypeAccessV3("volumeTypeAccess", VolumeTypeAccessV3Args.builder()
///             .projectId(project1.id())
///             .volumeTypeId(volumeType1.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   project1:
///     type: openstack:identity:Project
///     name: project_1
///     properties:
///       name: project_1
///   volumeType1:
///     type: openstack:blockstorage:VolumeTypeV3
///     name: volume_type_1
///     properties:
///       name: volume_type_1
///       isPublic: false
///   volumeTypeAccess:
///     type: openstack:blockstorage:VolumeTypeAccessV3
///     name: volume_type_access
///     properties:
///       projectId: ${project1.id}
///       volumeTypeId: ${volumeType1.id}
/// ```
///
///
/// ## Import
///
/// Volume types access can be imported using the `volume_type_id/project_id`, e.g.
///
/// ```sh
/// $ pulumi import openstack:blockstorage/volumeTypeAccessV3:VolumeTypeAccessV3 volume_type_access 941793f0-0a34-4bc4-b72e-a6326ae58283/ed498e81f0cc448bae0ad4f8f21bf67f
/// ```
class VolumeTypeAccessV3 extends pulumi.CustomResource {
  /// ID of the project to give access to. Changing this
  /// creates a new resource.
  late final pulumi.Output<String> projectId;
  /// The region in which to create the volume. If
  /// omitted, the `region` argument of the provider is used. Changing this
  /// creates a new quotaset.
  late final pulumi.Output<String> region;
  /// ID of the volume type to give access to. Changing
  /// this creates a new resource.
  late final pulumi.Output<String> volumeTypeId;

  /// Creates a new [VolumeTypeAccessV3].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VolumeTypeAccessV3]. {@macro pulumi_blockstorage_volume_type_access_v3_volume_type_access_v3_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VolumeTypeAccessV3(
    String name, {
    VolumeTypeAccessV3Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:blockstorage/volumeTypeAccessV3:VolumeTypeAccessV3',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.projectId = registerOutput<String>('projectId');
    this.region = registerOutput<String>('region');
    this.volumeTypeId = registerOutput<String>('volumeTypeId');
  }
}
