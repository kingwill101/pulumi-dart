import 'package:pulumi/pulumi.dart' as pulumi;
import 'plugin_instance_action.dart';
import 'plugin_instance_args.dart';
import 'plugin_instance_auth_config.dart';

/// Description
///
///
///
/// ## Example Usage
///
/// ### Apihub Plugin Instance Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const apihubPluginInstanceBasic = new gcp.apihub.PluginInstance("apihub_plugin_instance_basic", {
///     location: "us-central1",
///     plugin: "existing-plugin-id",
///     pluginInstanceId: "test",
///     displayName: "Sample Plugin Instance Display Name",
///     disable: false,
///     actions: [{
///         actionId: "existing-action-id",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// apihub_plugin_instance_basic = gcp.apihub.PluginInstance("apihub_plugin_instance_basic",
///     location="us-central1",
///     plugin="existing-plugin-id",
///     plugin_instance_id="test",
///     display_name="Sample Plugin Instance Display Name",
///     disable=False,
///     actions=[{
///         "action_id": "existing-action-id",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var apihubPluginInstanceBasic = new Gcp.ApiHub.PluginInstance("apihub_plugin_instance_basic", new()
///     {
///         Location = "us-central1",
///         Plugin = "existing-plugin-id",
///         PluginInstanceId = "test",
///         DisplayName = "Sample Plugin Instance Display Name",
///         Disable = false,
///         Actions = new[]
///         {
///             new Gcp.ApiHub.Inputs.PluginInstanceActionArgs
///             {
///                 ActionId = "existing-action-id",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apihub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apihub.NewPluginInstance(ctx, "apihub_plugin_instance_basic", &apihub.PluginInstanceArgs{
/// 			Location:         pulumi.String("us-central1"),
/// 			Plugin:           pulumi.String("existing-plugin-id"),
/// 			PluginInstanceId: pulumi.String("test"),
/// 			DisplayName:      pulumi.String("Sample Plugin Instance Display Name"),
/// 			Disable:          pulumi.Bool(false),
/// 			Actions: apihub.PluginInstanceActionArray{
/// 				&apihub.PluginInstanceActionArgs{
/// 					ActionId: pulumi.String("existing-action-id"),
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
/// import com.pulumi.gcp.apihub.PluginInstance;
/// import com.pulumi.gcp.apihub.PluginInstanceArgs;
/// import com.pulumi.gcp.apihub.inputs.PluginInstanceActionArgs;
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
///         var apihubPluginInstanceBasic = new PluginInstance("apihubPluginInstanceBasic", PluginInstanceArgs.builder()
///             .location("us-central1")
///             .plugin("existing-plugin-id")
///             .pluginInstanceId("test")
///             .displayName("Sample Plugin Instance Display Name")
///             .disable(false)
///             .actions(PluginInstanceActionArgs.builder()
///                 .actionId("existing-action-id")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   apihubPluginInstanceBasic:
///     type: gcp:apihub:PluginInstance
///     name: apihub_plugin_instance_basic
///     properties:
///       location: us-central1
///       plugin: existing-plugin-id
///       pluginInstanceId: test
///       displayName: Sample Plugin Instance Display Name
///       disable: false
///       actions:
///         - actionId: existing-action-id
/// ```
///
///
/// ## Import
///
/// PluginInstance can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/plugins/{{plugin}}/instances/{{plugin_instance_id}}`
///
/// * `{{project}}/{{location}}/{{plugin}}/{{plugin_instance_id}}`
///
/// * `{{location}}/{{plugin}}/{{plugin_instance_id}}`
///
/// When using the `pulumi import` command, PluginInstance can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apihub/pluginInstance:PluginInstance default projects/{{project}}/locations/{{location}}/plugins/{{plugin}}/instances/{{plugin_instance_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apihub/pluginInstance:PluginInstance default {{project}}/{{location}}/{{plugin}}/{{plugin_instance_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apihub/pluginInstance:PluginInstance default {{location}}/{{plugin}}/{{plugin_instance_id}}
/// ```
class PluginInstance extends pulumi.CustomResource {
  /// The action status for the plugin instance.
  /// Structure is documented below.
  late final pulumi.Output<List<PluginInstanceAction>> actions;

  /// AuthConfig represents the authentication information.
  /// Structure is documented below.
  late final pulumi.Output<PluginInstanceAuthConfig?> authConfig;

  /// Timestamp indicating when the plugin instance was created.
  late final pulumi.Output<String> createTime;

  /// The display name for this plugin instance. Max length is 255 characters.
  late final pulumi.Output<bool?> disable;

  /// The display name for this plugin instance. Max length is 255 characters.
  late final pulumi.Output<String> displayName;

  /// Error message describing the failure, if any, during Create, Delete or
  /// ApplyConfig operation corresponding to the plugin instance.This field will
  /// only be populated if the plugin instance is in the ERROR or FAILED state.
  late final pulumi.Output<String> errorMessage;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;

  /// Identifier. The unique name of the plugin instance resource.
  /// Format:
  /// `projects/{project}/locations/{location}/plugins/{plugin}/instances/{instance}`
  late final pulumi.Output<String> name;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> plugin;

  /// The ID to use for the plugin instance, which will become the final
  /// component of the plugin instance's resource name. This field is optional.
  /// * If provided, the same will be used. The service will throw an error if
  /// the specified id is already used by another plugin instance in the plugin
  /// resource.
  /// * If not provided, a system generated id will be used.
  /// This value should be 4-63 characters, and valid characters
  /// are /a-z[0-9]-_/.
  late final pulumi.Output<String> pluginInstanceId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The current state of the plugin instance (e.g., enabled, disabled,
  /// provisioning).
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// CREATING
  /// ACTIVE
  /// APPLYING_CONFIG
  /// ERROR
  /// FAILED
  /// DELETING
  late final pulumi.Output<String> state;

  /// Timestamp indicating when the plugin instance was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [PluginInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PluginInstance]. {@macro pulumi_apihub_plugin_instance_plugin_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PluginInstance(
    String name, {
    PluginInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apihub/pluginInstance:PluginInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.actions = registerOutput<List<PluginInstanceAction>>('actions');
    this.authConfig = registerOutput<PluginInstanceAuthConfig?>('authConfig');
    this.createTime = registerOutput<String>('createTime');
    this.disable = registerOutput<bool?>('disable');
    this.displayName = registerOutput<String>('displayName');
    this.errorMessage = registerOutput<String>('errorMessage');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.plugin = registerOutput<String>('plugin');
    this.pluginInstanceId = registerOutput<String>('pluginInstanceId');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
