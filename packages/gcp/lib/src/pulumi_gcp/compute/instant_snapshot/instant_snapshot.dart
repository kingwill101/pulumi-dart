import 'package:pulumi/pulumi.dart';
import 'instant_snapshot_args.dart';

/// Represents an instant snapshot resource.
///
/// An instant snapshot is an in-place backup of a disk that can be used to rapidly create a new disk in minutes.
///
/// Instant snapshots capture data at a specific point in time. They are optimized for rapidly restoring captured
/// data to a new disk. Use instant snapshots to quickly recover data in cases where the zone and disk are still intact
/// but the data on the disk has been lost or corrupted
///
///
/// To get more information about InstantSnapshot, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/instantSnapshots)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/compute/docs/disks/instant-snapshots)
///
/// ## Example Usage
///
/// ### Instant Snapshot Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foo = new gcp.compute.Disk("foo", {
/// name: "example-disk",
/// type: "pd-ssd",
/// size: 10,
/// });
/// const _default = new gcp.compute.InstantSnapshot("default", {
/// name: "instant-snapshot",
/// zone: "us-central1-a",
/// sourceDisk: foo.selfLink,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foo = gcp.compute.Disk("foo",
/// name="example-disk",
/// type="pd-ssd",
/// size=10)
/// default = gcp.compute.InstantSnapshot("default",
/// name="instant-snapshot",
/// zone="us-central1-a",
/// source_disk=foo.self_link)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var foo = new Gcp.Compute.Disk("foo", new()
/// {
/// Name = "example-disk",
/// Type = "pd-ssd",
/// Size = 10,
/// });
///
/// var @default = new Gcp.Compute.InstantSnapshot("default", new()
/// {
/// Name = "instant-snapshot",
/// Zone = "us-central1-a",
/// SourceDisk = foo.SelfLink,
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
/// foo, err := compute.NewDisk(ctx, "foo", &compute.DiskArgs{
/// Name: pulumi.String("example-disk"),
/// Type: pulumi.String("pd-ssd"),
/// Size: pulumi.Int(10),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewInstantSnapshot(ctx, "default", &compute.InstantSnapshotArgs{
/// Name:       pulumi.String("instant-snapshot"),
/// Zone:       pulumi.String("us-central1-a"),
/// SourceDisk: foo.SelfLink,
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
/// import com.pulumi.gcp.compute.Disk;
/// import com.pulumi.gcp.compute.DiskArgs;
/// import com.pulumi.gcp.compute.InstantSnapshot;
/// import com.pulumi.gcp.compute.InstantSnapshotArgs;
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
/// var foo = new Disk("foo", DiskArgs.builder()
/// .name("example-disk")
/// .type("pd-ssd")
/// .size(10)
/// .build());
///
/// var default_ = new InstantSnapshot("default", InstantSnapshotArgs.builder()
/// .name("instant-snapshot")
/// .zone("us-central1-a")
/// .sourceDisk(foo.selfLink())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// foo:
/// type: gcp:compute:Disk
/// properties:
/// name: example-disk
/// type: pd-ssd
/// size: 10
/// default:
/// type: gcp:compute:InstantSnapshot
/// properties:
/// name: instant-snapshot
/// zone: us-central1-a
/// sourceDisk: ${foo.selfLink}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// InstantSnapshot can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/zones/{{zone}}/instantSnapshots/{{name}}`
///
/// * `{{project}}/{{zone}}/{{name}}`
///
/// * `{{zone}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, InstantSnapshot can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/instantSnapshot:InstantSnapshot default projects/{{project}}/zones/{{zone}}/instantSnapshots/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/instantSnapshot:InstantSnapshot default {{project}}/{{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/instantSnapshot:InstantSnapshot default {{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/instantSnapshot:InstantSnapshot default {{name}}
/// ```
class InstantSnapshot extends CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resource.
  late final Output<String?> description;

  /// Size of the snapshot, specified in GB.
  late final Output<int> diskSizeGb;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// The fingerprint used for optimistic locking of this resource. Used
  /// internally during updates.
  late final Output<String> labelFingerprint;

  /// Labels to apply to this InstantSnapshot.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Name of the resource; provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The URI of the created resource.
  late final Output<String> selfLink;

  /// A reference to the disk used to create this instant snapshot.
  late final Output<String> sourceDisk;

  /// The ID value of the disk used to create this InstantSnapshot.
  late final Output<String> sourceDiskId;

  /// A reference to the zone where the disk is located.
  late final Output<String> zone;

  InstantSnapshot(
    String name, {
    InstantSnapshotArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/instantSnapshot:InstantSnapshot',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.creationTimestamp = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.diskSizeGb = Output.createUnknown<int>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.labelFingerprint = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.selfLink = Output.createUnknown<String>();
    this.sourceDisk = Output.createUnknown<String>();
    this.sourceDiskId = Output.createUnknown<String>();
    this.zone = Output.createUnknown<String>();
  }
}
