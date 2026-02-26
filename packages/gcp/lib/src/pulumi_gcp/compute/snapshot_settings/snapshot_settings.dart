import 'package:pulumi/pulumi.dart';
import '../snapshot_settings_storage_location/snapshot_settings_storage_location.dart';
import 'snapshot_settings_args.dart';

/// Updates your project's snapshot settings and sets a new default storage location for snapshots.
///
///
/// To get more information about SnapshotSettings, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/snapshotSettings)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/compute/docs/disks/snapshot-settings#snapshot_settings_how_to_update)
///
/// ## Example Usage
///
/// ### Snapshot Settings Specific Locations
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const tf_test_snapshot_settings = new gcp.compute.SnapshotSettings("tf-test-snapshot-settings", {storageLocation: {
/// policy: "SPECIFIC_LOCATIONS",
/// locations: [{
/// name: "us-central1",
/// location: "us-central1",
/// }],
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// tf_test_snapshot_settings = gcp.compute.SnapshotSettings("tf-test-snapshot-settings", storage_location={
/// "policy": "SPECIFIC_LOCATIONS",
/// "locations": [{
/// "name": "us-central1",
/// "location": "us-central1",
/// }],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var tf_test_snapshot_settings = new Gcp.Compute.SnapshotSettings("tf-test-snapshot-settings", new()
/// {
/// StorageLocation = new Gcp.Compute.Inputs.SnapshotSettingsStorageLocationArgs
/// {
/// Policy = "SPECIFIC_LOCATIONS",
/// Locations = new[]
/// {
/// new Gcp.Compute.Inputs.SnapshotSettingsStorageLocationLocationArgs
/// {
/// Name = "us-central1",
/// Location = "us-central1",
/// },
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
/// _, err := compute.NewSnapshotSettings(ctx, "tf-test-snapshot-settings", &compute.SnapshotSettingsArgs{
/// StorageLocation: &compute.SnapshotSettingsStorageLocationArgs{
/// Policy: pulumi.String("SPECIFIC_LOCATIONS"),
/// Locations: compute.SnapshotSettingsStorageLocationLocationArray{
/// &compute.SnapshotSettingsStorageLocationLocationArgs{
/// Name:     pulumi.String("us-central1"),
/// Location: pulumi.String("us-central1"),
/// },
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
/// import com.pulumi.gcp.compute.SnapshotSettings;
/// import com.pulumi.gcp.compute.SnapshotSettingsArgs;
/// import com.pulumi.gcp.compute.inputs.SnapshotSettingsStorageLocationArgs;
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
/// var tf_test_snapshot_settings = new SnapshotSettings("tf-test-snapshot-settings", SnapshotSettingsArgs.builder()
/// .storageLocation(SnapshotSettingsStorageLocationArgs.builder()
/// .policy("SPECIFIC_LOCATIONS")
/// .locations(SnapshotSettingsStorageLocationLocationArgs.builder()
/// .name("us-central1")
/// .location("us-central1")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// tf-test-snapshot-settings:
/// type: gcp:compute:SnapshotSettings
/// properties:
/// storageLocation:
/// policy: SPECIFIC_LOCATIONS
/// locations:
/// - name: us-central1
/// location: us-central1
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// SnapshotSettings can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/snapshotSettings/`
///
/// * `{{project}}`
///
/// When using the `pulumi import` command, SnapshotSettings can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/snapshotSettings:SnapshotSettings default projects/{{project}}/global/snapshotSettings/
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/snapshotSettings:SnapshotSettings default {{project}}
/// ```
class SnapshotSettings extends CustomResource {
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Policy of which storage location is going to be resolved, and additional data
  /// that particularizes how the policy is going to be carried out
  /// Structure is documented below.
  late final Output<SnapshotSettingsStorageLocation> storageLocation;

  SnapshotSettings(
    String name, {
    SnapshotSettingsArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/snapshotSettings:SnapshotSettings',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.project = registerOutput<String>('project');
    this.storageLocation =
        registerOutput<SnapshotSettingsStorageLocation>('storageLocation');
  }
}
