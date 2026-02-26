import 'package:pulumi/pulumi.dart';
import 'restore_channel_args.dart';

/// A RestoreChannel imposes constraints on where backups can be restored.
/// The RestoreChannel should be in the same project and region
/// as the backups. The backups can only be restored in the
/// destination_project.
///
///
/// To get more information about RestoreChannel, see:
///
/// * [API documentation](https://cloud.google.com/kubernetes-engine/docs/add-on/backup-for-gke/reference/rest/v1/projects.locations.restoreChannels)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/kubernetes-engine/docs/add-on/backup-for-gke)
///
/// ## Example Usage
///
/// ### Gkebackup Restorechannel Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.gkebackup.RestoreChannel("basic", {
/// name: "basic-channel",
/// location: "us-central1",
/// description: "Description",
/// destinationProject: "projects/24240755850",
/// labels: {
/// key: "some-value",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.gkebackup.RestoreChannel("basic",
/// name="basic-channel",
/// location="us-central1",
/// description="Description",
/// destination_project="projects/24240755850",
/// labels={
/// "key": "some-value",
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
/// var basic = new Gcp.GkeBackup.RestoreChannel("basic", new()
/// {
/// Name = "basic-channel",
/// Location = "us-central1",
/// Description = "Description",
/// DestinationProject = "projects/24240755850",
/// Labels =
/// {
/// { "key", "some-value" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkebackup"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := gkebackup.NewRestoreChannel(ctx, "basic", &gkebackup.RestoreChannelArgs{
/// Name:               pulumi.String("basic-channel"),
/// Location:           pulumi.String("us-central1"),
/// Description:        pulumi.String("Description"),
/// DestinationProject: pulumi.String("projects/24240755850"),
/// Labels: pulumi.StringMap{
/// "key": pulumi.String("some-value"),
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
/// import com.pulumi.gcp.gkebackup.RestoreChannel;
/// import com.pulumi.gcp.gkebackup.RestoreChannelArgs;
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
/// var basic = new RestoreChannel("basic", RestoreChannelArgs.builder()
/// .name("basic-channel")
/// .location("us-central1")
/// .description("Description")
/// .destinationProject("projects/24240755850")
/// .labels(Map.of("key", "some-value"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// basic:
/// type: gcp:gkebackup:RestoreChannel
/// properties:
/// name: basic-channel
/// location: us-central1
/// description: Description
/// destinationProject: projects/24240755850
/// labels:
/// key: some-value
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// RestoreChannel can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/restoreChannels/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, RestoreChannel can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gkebackup/restoreChannel:RestoreChannel default projects/{{project}}/locations/{{location}}/restoreChannels/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkebackup/restoreChannel:RestoreChannel default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkebackup/restoreChannel:RestoreChannel default {{location}}/{{name}}
/// ```
class RestoreChannel extends CustomResource {
  /// User specified descriptive string for this RestoreChannel.
  late final Output<String?> description;

  /// The project where Backups will be restored.
  /// The format is `projects/{project}`.
  /// {project} can be project number or project id.
  late final Output<String> destinationProject;

  /// The<span pulumi-lang-nodejs=" projectId " pulumi-lang-dotnet=" ProjectId " pulumi-lang-go=" projectId " pulumi-lang-python=" project_id " pulumi-lang-yaml=" projectId " pulumi-lang-java=" projectId "> project_id </span>where Backups will be restored.
  /// Example Project ID: "my-project-id".
  late final Output<String> destinationProjectId;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// etag is used for optimistic concurrency control as a way to help prevent simultaneous
  /// updates of a restore channel from overwriting each other. It is strongly suggested that
  /// systems make use of the 'etag' in the read-modify-write cycle to perform RestoreChannel updates
  /// in order to avoid race conditions: An etag is returned in the response to restoreChannels.get,
  /// and systems are expected to put that etag in the request to restoreChannels.patch or
  /// restoreChannels.delete to ensure that their change will be applied to the same version of the resource.
  late final Output<String> etag;

  /// Description: A set of custom labels supplied by the user.
  /// A list of key->value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The region of the Restore Channel.
  late final Output<String> location;

  /// The full name of the RestoreChannel Resource.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Server generated, unique identifier of UUID format.
  late final Output<String> uid;

  RestoreChannel(
    String name, {
    RestoreChannelArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:gkebackup/restoreChannel:RestoreChannel',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = Output.createUnknown<String?>();
    this.destinationProject = Output.createUnknown<String>();
    this.destinationProjectId = Output.createUnknown<String>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.etag = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.uid = Output.createUnknown<String>();
  }
}
