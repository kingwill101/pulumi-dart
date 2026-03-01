import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_access_accept_args.dart';

/// Manages memberships status for the shared OpenStack Glance V2 Image within the
/// destination project, which has a member proposal.
///
/// ## Example Usage
///
/// Accept a shared image membershipship proposal within the current project.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const rancheros = openstack.images.getImage({
///     name: "RancherOS",
///     visibility: "shared",
///     memberStatus: "all",
/// });
/// const rancherosMember = new openstack.images.ImageAccessAccept("rancheros_member", {
///     imageId: rancheros.then(rancheros => rancheros.id),
///     status: "accepted",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// rancheros = openstack.images.get_image(name="RancherOS",
///     visibility="shared",
///     member_status="all")
/// rancheros_member = openstack.images.ImageAccessAccept("rancheros_member",
///     image_id=rancheros.id,
///     status="accepted")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var rancheros = OpenStack.Images.GetImage.Invoke(new()
///     {
///         Name = "RancherOS",
///         Visibility = "shared",
///         MemberStatus = "all",
///     });
///
///     var rancherosMember = new OpenStack.Images.ImageAccessAccept("rancheros_member", new()
///     {
///         ImageId = rancheros.Apply(getImageResult => getImageResult.Id),
///         Status = "accepted",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/images"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		rancheros, err := images.LookupImage(ctx, &images.LookupImageArgs{
/// 			Name:         pulumi.StringRef("RancherOS"),
/// 			Visibility:   pulumi.StringRef("shared"),
/// 			MemberStatus: pulumi.StringRef("all"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = images.NewImageAccessAccept(ctx, "rancheros_member", &images.ImageAccessAcceptArgs{
/// 			ImageId: pulumi.String(rancheros.Id),
/// 			Status:  pulumi.String("accepted"),
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
/// import com.pulumi.openstack.images.ImagesFunctions;
/// import com.pulumi.openstack.images.inputs.GetImageArgs;
/// import com.pulumi.openstack.images.ImageAccessAccept;
/// import com.pulumi.openstack.images.ImageAccessAcceptArgs;
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
///         final var rancheros = ImagesFunctions.getImage(GetImageArgs.builder()
///             .name("RancherOS")
///             .visibility("shared")
///             .memberStatus("all")
///             .build());
///
///         var rancherosMember = new ImageAccessAccept("rancherosMember", ImageAccessAcceptArgs.builder()
///             .imageId(rancheros.id())
///             .status("accepted")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   rancherosMember:
///     type: openstack:images:ImageAccessAccept
///     name: rancheros_member
///     properties:
///       imageId: ${rancheros.id}
///       status: accepted
/// variables:
///   rancheros:
///     fn::invoke:
///       function: openstack:images:getImage
///       arguments:
///         name: RancherOS
///         visibility: shared
///         memberStatus: all
/// ```
///
///
/// ## Import
///
/// Image access acceptance status can be imported using the `image_id`, e.g.
///
/// ```sh
/// $ pulumi import openstack:images/imageAccessAccept:ImageAccessAccept openstack_images_image_access_accept_v2 89c60255-9bd6-460c-822a-e2b959ede9d2
/// ```
class ImageAccessAccept extends pulumi.CustomResource {
  /// The date the image membership was created.
  late final pulumi.Output<String> createdAt;
  /// The proposed image ID.
  late final pulumi.Output<String> imageId;
  /// The member ID, e.g. the target project ID. Optional
  /// for admin accounts. Defaults to the current scope project ID.
  late final pulumi.Output<String> memberId;
  /// The region in which to obtain the V2 Glance client.
  /// A Glance client is needed to manage Image memberships. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// membership.
  late final pulumi.Output<String> region;
  /// The membership schema.
  late final pulumi.Output<String> schema;
  /// The membership proposal status. Can either be
  /// `accepted`, `rejected` or `pending`.
  late final pulumi.Output<String> status;
  /// The date the image membership was last updated.
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [ImageAccessAccept].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ImageAccessAccept]. {@macro pulumi_images_image_access_accept_image_access_accept_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ImageAccessAccept(
    String name, {
    ImageAccessAcceptArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:images/imageAccessAccept:ImageAccessAccept',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createdAt = registerOutput<String>('createdAt');
    this.imageId = registerOutput<String>('imageId');
    this.memberId = registerOutput<String>('memberId');
    this.region = registerOutput<String>('region');
    this.schema = registerOutput<String>('schema');
    this.status = registerOutput<String>('status');
    this.updatedAt = registerOutput<String>('updatedAt');
  }
}
