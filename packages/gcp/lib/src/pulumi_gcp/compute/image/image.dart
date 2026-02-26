import 'package:pulumi/pulumi.dart';
import '../image_guest_os_feature/image_guest_os_feature.dart';
import '../image_image_encryption_key/image_image_encryption_key.dart';
import '../image_raw_disk/image_raw_disk.dart';
import '../image_shielded_instance_initial_state/image_shielded_instance_initial_state.dart';
import '../image_source_disk_encryption_key/image_source_disk_encryption_key.dart';
import '../image_source_image_encryption_key/image_source_image_encryption_key.dart';
import '../image_source_snapshot_encryption_key/image_source_snapshot_encryption_key.dart';
import 'image_args.dart';

/// Represents an Image resource.
///
/// Google Compute Engine uses operating system images to create the root
/// persistent disks for your instances. You specify an image when you create
/// an instance. Images contain a boot loader, an operating system, and a
/// root file system. Linux operating system images are also capable of
/// running containers on Compute Engine.
///
/// Images can be either public or custom.
///
/// Public images are provided and maintained by Google, open-source
/// communities, and third-party vendors. By default, all projects have
/// access to these images and can use them to create instances.  Custom
/// images are available only to your project. You can create a custom image
/// from root persistent disks and other images. Then, use the custom image
/// to create an instance.
///
///
/// To get more information about Image, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/v1/images)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/compute/docs/images)
///
///
///
/// ## Example Usage
///
/// ### Image Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const debian = gcp.compute.getImage({
/// family: "debian-12",
/// project: "debian-cloud",
/// });
/// const persistent = new gcp.compute.Disk("persistent", {
/// name: "example-disk",
/// image: debian.then(debian => debian.selfLink),
/// size: 10,
/// type: "pd-ssd",
/// zone: "us-central1-a",
/// });
/// const example = new gcp.compute.Image("example", {
/// name: "example-image",
/// sourceDisk: persistent.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// debian = gcp.compute.get_image(family="debian-12",
/// project="debian-cloud")
/// persistent = gcp.compute.Disk("persistent",
/// name="example-disk",
/// image=debian.self_link,
/// size=10,
/// type="pd-ssd",
/// zone="us-central1-a")
/// example = gcp.compute.Image("example",
/// name="example-image",
/// source_disk=persistent.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var debian = Gcp.Compute.GetImage.Invoke(new()
/// {
/// Family = "debian-12",
/// Project = "debian-cloud",
/// });
///
/// var persistent = new Gcp.Compute.Disk("persistent", new()
/// {
/// Name = "example-disk",
/// Image = debian.Apply(getImageResult => getImageResult.SelfLink),
/// Size = 10,
/// Type = "pd-ssd",
/// Zone = "us-central1-a",
/// });
///
/// var example = new Gcp.Compute.Image("example", new()
/// {
/// Name = "example-image",
/// SourceDisk = persistent.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// debian, err := compute.LookupImage(ctx, &compute.LookupImageArgs{
/// Family:  pulumi.StringRef("debian-12"),
/// Project: pulumi.StringRef("debian-cloud"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// persistent, err := compute.NewDisk(ctx, "persistent", &compute.DiskArgs{
/// Name:  pulumi.String("example-disk"),
/// Image: pulumi.String(debian.SelfLink),
/// Size:  pulumi.Int(10),
/// Type:  pulumi.String("pd-ssd"),
/// Zone:  pulumi.String("us-central1-a"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewImage(ctx, "example", &compute.ImageArgs{
/// Name:       pulumi.String("example-image"),
/// SourceDisk: persistent.ID(),
/// })
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetImageArgs;
/// import com.pulumi.gcp.compute.Disk;
/// import com.pulumi.gcp.compute.DiskArgs;
/// import com.pulumi.gcp.compute.Image;
/// import com.pulumi.gcp.compute.ImageArgs;
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
/// final var debian = ComputeFunctions.getImage(GetImageArgs.builder()
/// .family("debian-12")
/// .project("debian-cloud")
/// .build());
///
/// var persistent = new Disk("persistent", DiskArgs.builder()
/// .name("example-disk")
/// .image(debian.selfLink())
/// .size(10)
/// .type("pd-ssd")
/// .zone("us-central1-a")
/// .build());
///
/// var example = new Image("example", ImageArgs.builder()
/// .name("example-image")
/// .sourceDisk(persistent.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// persistent:
/// type: gcp:compute:Disk
/// properties:
/// name: example-disk
/// image: ${debian.selfLink}
/// size: 10
/// type: pd-ssd
/// zone: us-central1-a
/// example:
/// type: gcp:compute:Image
/// properties:
/// name: example-image
/// sourceDisk: ${persistent.id}
/// variables:
/// debian:
/// fn::invoke:
/// function: gcp:compute:getImage
/// arguments:
/// family: debian-12
/// project: debian-cloud
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Image Guest Os
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const debian = gcp.compute.getImage({
/// family: "debian-12",
/// project: "debian-cloud",
/// });
/// const persistent = new gcp.compute.Disk("persistent", {
/// name: "example-disk",
/// image: debian.then(debian => debian.selfLink),
/// size: 10,
/// type: "pd-ssd",
/// zone: "us-central1-a",
/// });
/// const example = new gcp.compute.Image("example", {
/// name: "example-image",
/// sourceDisk: persistent.id,
/// guestOsFeatures: [
/// {
/// type: "UEFI_COMPATIBLE",
/// },
/// {
/// type: "VIRTIO_SCSI_MULTIQUEUE",
/// },
/// {
/// type: "GVNIC",
/// },
/// {
/// type: "SEV_CAPABLE",
/// },
/// {
/// type: "SEV_LIVE_MIGRATABLE_V2",
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// debian = gcp.compute.get_image(family="debian-12",
/// project="debian-cloud")
/// persistent = gcp.compute.Disk("persistent",
/// name="example-disk",
/// image=debian.self_link,
/// size=10,
/// type="pd-ssd",
/// zone="us-central1-a")
/// example = gcp.compute.Image("example",
/// name="example-image",
/// source_disk=persistent.id,
/// guest_os_features=[
/// {
/// "type": "UEFI_COMPATIBLE",
/// },
/// {
/// "type": "VIRTIO_SCSI_MULTIQUEUE",
/// },
/// {
/// "type": "GVNIC",
/// },
/// {
/// "type": "SEV_CAPABLE",
/// },
/// {
/// "type": "SEV_LIVE_MIGRATABLE_V2",
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var debian = Gcp.Compute.GetImage.Invoke(new()
/// {
/// Family = "debian-12",
/// Project = "debian-cloud",
/// });
///
/// var persistent = new Gcp.Compute.Disk("persistent", new()
/// {
/// Name = "example-disk",
/// Image = debian.Apply(getImageResult => getImageResult.SelfLink),
/// Size = 10,
/// Type = "pd-ssd",
/// Zone = "us-central1-a",
/// });
///
/// var example = new Gcp.Compute.Image("example", new()
/// {
/// Name = "example-image",
/// SourceDisk = persistent.Id,
/// GuestOsFeatures = new[]
/// {
/// new Gcp.Compute.Inputs.ImageGuestOsFeatureArgs
/// {
/// Type = "UEFI_COMPATIBLE",
/// },
/// new Gcp.Compute.Inputs.ImageGuestOsFeatureArgs
/// {
/// Type = "VIRTIO_SCSI_MULTIQUEUE",
/// },
/// new Gcp.Compute.Inputs.ImageGuestOsFeatureArgs
/// {
/// Type = "GVNIC",
/// },
/// new Gcp.Compute.Inputs.ImageGuestOsFeatureArgs
/// {
/// Type = "SEV_CAPABLE",
/// },
/// new Gcp.Compute.Inputs.ImageGuestOsFeatureArgs
/// {
/// Type = "SEV_LIVE_MIGRATABLE_V2",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// debian, err := compute.LookupImage(ctx, &compute.LookupImageArgs{
/// Family:  pulumi.StringRef("debian-12"),
/// Project: pulumi.StringRef("debian-cloud"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// persistent, err := compute.NewDisk(ctx, "persistent", &compute.DiskArgs{
/// Name:  pulumi.String("example-disk"),
/// Image: pulumi.String(debian.SelfLink),
/// Size:  pulumi.Int(10),
/// Type:  pulumi.String("pd-ssd"),
/// Zone:  pulumi.String("us-central1-a"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewImage(ctx, "example", &compute.ImageArgs{
/// Name:       pulumi.String("example-image"),
/// SourceDisk: persistent.ID(),
/// GuestOsFeatures: compute.ImageGuestOsFeatureArray{
/// &compute.ImageGuestOsFeatureArgs{
/// Type: pulumi.String("UEFI_COMPATIBLE"),
/// },
/// &compute.ImageGuestOsFeatureArgs{
/// Type: pulumi.String("VIRTIO_SCSI_MULTIQUEUE"),
/// },
/// &compute.ImageGuestOsFeatureArgs{
/// Type: pulumi.String("GVNIC"),
/// },
/// &compute.ImageGuestOsFeatureArgs{
/// Type: pulumi.String("SEV_CAPABLE"),
/// },
/// &compute.ImageGuestOsFeatureArgs{
/// Type: pulumi.String("SEV_LIVE_MIGRATABLE_V2"),
/// },
/// },
/// })
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetImageArgs;
/// import com.pulumi.gcp.compute.Disk;
/// import com.pulumi.gcp.compute.DiskArgs;
/// import com.pulumi.gcp.compute.Image;
/// import com.pulumi.gcp.compute.ImageArgs;
/// import com.pulumi.gcp.compute.inputs.ImageGuestOsFeatureArgs;
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
/// final var debian = ComputeFunctions.getImage(GetImageArgs.builder()
/// .family("debian-12")
/// .project("debian-cloud")
/// .build());
///
/// var persistent = new Disk("persistent", DiskArgs.builder()
/// .name("example-disk")
/// .image(debian.selfLink())
/// .size(10)
/// .type("pd-ssd")
/// .zone("us-central1-a")
/// .build());
///
/// var example = new Image("example", ImageArgs.builder()
/// .name("example-image")
/// .sourceDisk(persistent.id())
/// .guestOsFeatures(
/// ImageGuestOsFeatureArgs.builder()
/// .type("UEFI_COMPATIBLE")
/// .build(),
/// ImageGuestOsFeatureArgs.builder()
/// .type("VIRTIO_SCSI_MULTIQUEUE")
/// .build(),
/// ImageGuestOsFeatureArgs.builder()
/// .type("GVNIC")
/// .build(),
/// ImageGuestOsFeatureArgs.builder()
/// .type("SEV_CAPABLE")
/// .build(),
/// ImageGuestOsFeatureArgs.builder()
/// .type("SEV_LIVE_MIGRATABLE_V2")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// persistent:
/// type: gcp:compute:Disk
/// properties:
/// name: example-disk
/// image: ${debian.selfLink}
/// size: 10
/// type: pd-ssd
/// zone: us-central1-a
/// example:
/// type: gcp:compute:Image
/// properties:
/// name: example-image
/// sourceDisk: ${persistent.id}
/// guestOsFeatures:
/// - type: UEFI_COMPATIBLE
/// - type: VIRTIO_SCSI_MULTIQUEUE
/// - type: GVNIC
/// - type: SEV_CAPABLE
/// - type: SEV_LIVE_MIGRATABLE_V2
/// variables:
/// debian:
/// fn::invoke:
/// function: gcp:compute:getImage
/// arguments:
/// family: debian-12
/// project: debian-cloud
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Image Basic Storage Location
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const debian = gcp.compute.getImage({
/// family: "debian-12",
/// project: "debian-cloud",
/// });
/// const persistent = new gcp.compute.Disk("persistent", {
/// name: "example-disk",
/// image: debian.then(debian => debian.selfLink),
/// size: 10,
/// type: "pd-ssd",
/// zone: "us-central1-a",
/// });
/// const example = new gcp.compute.Image("example", {
/// name: "example-sl-image",
/// sourceDisk: persistent.id,
/// storageLocations: ["us-central1"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// debian = gcp.compute.get_image(family="debian-12",
/// project="debian-cloud")
/// persistent = gcp.compute.Disk("persistent",
/// name="example-disk",
/// image=debian.self_link,
/// size=10,
/// type="pd-ssd",
/// zone="us-central1-a")
/// example = gcp.compute.Image("example",
/// name="example-sl-image",
/// source_disk=persistent.id,
/// storage_locations=["us-central1"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var debian = Gcp.Compute.GetImage.Invoke(new()
/// {
/// Family = "debian-12",
/// Project = "debian-cloud",
/// });
///
/// var persistent = new Gcp.Compute.Disk("persistent", new()
/// {
/// Name = "example-disk",
/// Image = debian.Apply(getImageResult => getImageResult.SelfLink),
/// Size = 10,
/// Type = "pd-ssd",
/// Zone = "us-central1-a",
/// });
///
/// var example = new Gcp.Compute.Image("example", new()
/// {
/// Name = "example-sl-image",
/// SourceDisk = persistent.Id,
/// StorageLocations = new[]
/// {
/// "us-central1",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// debian, err := compute.LookupImage(ctx, &compute.LookupImageArgs{
/// Family:  pulumi.StringRef("debian-12"),
/// Project: pulumi.StringRef("debian-cloud"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// persistent, err := compute.NewDisk(ctx, "persistent", &compute.DiskArgs{
/// Name:  pulumi.String("example-disk"),
/// Image: pulumi.String(debian.SelfLink),
/// Size:  pulumi.Int(10),
/// Type:  pulumi.String("pd-ssd"),
/// Zone:  pulumi.String("us-central1-a"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewImage(ctx, "example", &compute.ImageArgs{
/// Name:       pulumi.String("example-sl-image"),
/// SourceDisk: persistent.ID(),
/// StorageLocations: pulumi.StringArray{
/// pulumi.String("us-central1"),
/// },
/// })
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetImageArgs;
/// import com.pulumi.gcp.compute.Disk;
/// import com.pulumi.gcp.compute.DiskArgs;
/// import com.pulumi.gcp.compute.Image;
/// import com.pulumi.gcp.compute.ImageArgs;
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
/// final var debian = ComputeFunctions.getImage(GetImageArgs.builder()
/// .family("debian-12")
/// .project("debian-cloud")
/// .build());
///
/// var persistent = new Disk("persistent", DiskArgs.builder()
/// .name("example-disk")
/// .image(debian.selfLink())
/// .size(10)
/// .type("pd-ssd")
/// .zone("us-central1-a")
/// .build());
///
/// var example = new Image("example", ImageArgs.builder()
/// .name("example-sl-image")
/// .sourceDisk(persistent.id())
/// .storageLocations("us-central1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// persistent:
/// type: gcp:compute:Disk
/// properties:
/// name: example-disk
/// image: ${debian.selfLink}
/// size: 10
/// type: pd-ssd
/// zone: us-central1-a
/// example:
/// type: gcp:compute:Image
/// properties:
/// name: example-sl-image
/// sourceDisk: ${persistent.id}
/// storageLocations:
/// - us-central1
/// variables:
/// debian:
/// fn::invoke:
/// function: gcp:compute:getImage
/// arguments:
/// family: debian-12
/// project: debian-cloud
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Image can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/images/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Image can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/image:Image default projects/{{project}}/global/images/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/image:Image default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/image:Image default {{name}}
/// ```
class Image extends CustomResource {
  /// Size of the image tar.gz archive stored in Google Cloud Storage (in
  /// bytes).
  late final Output<int> archiveSizeBytes;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  late final Output<String?> description;

  /// Size of the image when restored onto a persistent disk (in GB).
  late final Output<int> diskSizeGb;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// The name of the image family to which this image belongs. You can
  /// create disks by specifying an image family instead of a specific
  /// image name. The image family always returns its latest image that is
  /// not deprecated. The name of the image family must comply with
  /// RFC1035.
  late final Output<String?> family;

  /// A list of features to enable on the guest operating system.
  /// Applicable only for bootable images.
  /// Structure is documented below.
  late final Output<List<ImageGuestOsFeature>> guestOsFeatures;

  /// Encrypts the image using a customer-supplied encryption key.
  /// After you encrypt an image with a customer-supplied key, you must
  /// provide the same key if you use the image later (e.g. to create a
  /// disk from the image)
  /// Structure is documented below.
  late final Output<ImageImageEncryptionKey?> imageEncryptionKey;

  /// The fingerprint used for optimistic locking of this resource. Used
  /// internally during updates.
  late final Output<String> labelFingerprint;

  /// Labels to apply to this Image.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Any applicable license URI.
  late final Output<List<String>> licenses;

  /// Name of the resource; provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z?` which means
  /// the first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the
  /// last character, which cannot be a dash.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The parameters of the raw disk image.
  /// Structure is documented below.
  late final Output<ImageRawDisk?> rawDisk;

  /// The URI of the created resource.
  late final Output<String> selfLink;

  /// Set the secure boot keys of shielded instance.
  /// Structure is documented below.
  late final Output<ImageShieldedInstanceInitialState>
      shieldedInstanceInitialState;

  /// The source disk to create this image based on.
  /// You must provide either this property or the
  /// rawDisk.source property but not both to create an image.
  late final Output<String?> sourceDisk;

  /// The customer-supplied encryption key of the source disk. Required if
  /// the source disk is protected by a customer-supplied encryption key.
  /// Structure is documented below.
  late final Output<ImageSourceDiskEncryptionKey?> sourceDiskEncryptionKey;

  /// URL of the source image used to create this image. In order to create an image, you must provide the full or partial
  /// URL of one of the following:
  /// * The selfLink URL
  /// * This property
  /// * The rawDisk.source URL
  /// * The sourceDisk URL
  late final Output<String?> sourceImage;

  /// The customer-supplied encryption key of the source image. Required if
  /// the source image is protected by a customer-supplied encryption key.
  /// Structure is documented below.
  late final Output<ImageSourceImageEncryptionKey?> sourceImageEncryptionKey;

  /// URL of the source snapshot used to create this image.
  /// In order to create an image, you must provide the full or partial URL of one of the following:
  /// * The selfLink URL
  /// * This property
  /// * The sourceImage URL
  /// * The rawDisk.source URL
  /// * The sourceDisk URL
  late final Output<String?> sourceSnapshot;

  /// The customer-supplied encryption key of the source snapshot. Required if
  /// the source snapshot is protected by a customer-supplied encryption key.
  /// Structure is documented below.
  late final Output<ImageSourceSnapshotEncryptionKey?>
      sourceSnapshotEncryptionKey;

  /// Cloud Storage bucket storage location of the image
  /// (regional or multi-regional).
  /// Reference link: https://cloud.google.com/compute/docs/reference/rest/v1/images
  late final Output<List<String>> storageLocations;

  Image(
    String name, {
    ImageArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/image:Image',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.archiveSizeBytes = Output.createUnknown<int>();
    this.creationTimestamp = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.diskSizeGb = Output.createUnknown<int>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.family = Output.createUnknown<String?>();
    this.guestOsFeatures = Output.createUnknown<List<ImageGuestOsFeature>>();
    this.imageEncryptionKey = Output.createUnknown<ImageImageEncryptionKey?>();
    this.labelFingerprint = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.licenses = Output.createUnknown<List<String>>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.rawDisk = Output.createUnknown<ImageRawDisk?>();
    this.selfLink = Output.createUnknown<String>();
    this.shieldedInstanceInitialState =
        Output.createUnknown<ImageShieldedInstanceInitialState>();
    this.sourceDisk = Output.createUnknown<String?>();
    this.sourceDiskEncryptionKey =
        Output.createUnknown<ImageSourceDiskEncryptionKey?>();
    this.sourceImage = Output.createUnknown<String?>();
    this.sourceImageEncryptionKey =
        Output.createUnknown<ImageSourceImageEncryptionKey?>();
    this.sourceSnapshot = Output.createUnknown<String?>();
    this.sourceSnapshotEncryptionKey =
        Output.createUnknown<ImageSourceSnapshotEncryptionKey?>();
    this.storageLocations = Output.createUnknown<List<String>>();
  }
}
