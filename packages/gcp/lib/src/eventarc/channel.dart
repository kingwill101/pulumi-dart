import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_args.dart';

/// The Eventarc Channel resource
///
///
/// To get more information about Channel, see:
///
/// * [API documentation](https://cloud.google.com/eventarc/docs/reference/rest/v1/projects.locations.channels)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/eventarc/standard/docs/third-parties/create-channels)
///
/// ## Example Usage
///
/// ### Eventarc Channel With Cmek
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.eventarc.Channel("primary", {
///     location: "us-central1",
///     name: "some-channel",
///     cryptoKeyName: "some-key",
///     thirdPartyProvider: "projects/my-project-name/locations/us-central1/providers/datadog",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.eventarc.Channel("primary",
///     location="us-central1",
///     name="some-channel",
///     crypto_key_name="some-key",
///     third_party_provider="projects/my-project-name/locations/us-central1/providers/datadog")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Gcp.Eventarc.Channel("primary", new()
///     {
///         Location = "us-central1",
///         Name = "some-channel",
///         CryptoKeyName = "some-key",
///         ThirdPartyProvider = "projects/my-project-name/locations/us-central1/providers/datadog",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/eventarc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := eventarc.NewChannel(ctx, "primary", &eventarc.ChannelArgs{
/// 			Location:           pulumi.String("us-central1"),
/// 			Name:               pulumi.String("some-channel"),
/// 			CryptoKeyName:      pulumi.String("some-key"),
/// 			ThirdPartyProvider: pulumi.String("projects/my-project-name/locations/us-central1/providers/datadog"),
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
/// import com.pulumi.gcp.eventarc.Channel;
/// import com.pulumi.gcp.eventarc.ChannelArgs;
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
///         var primary = new Channel("primary", ChannelArgs.builder()
///             .location("us-central1")
///             .name("some-channel")
///             .cryptoKeyName("some-key")
///             .thirdPartyProvider("projects/my-project-name/locations/us-central1/providers/datadog")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:eventarc:Channel
///     properties:
///       location: us-central1
///       name: some-channel
///       cryptoKeyName: some-key
///       thirdPartyProvider: projects/my-project-name/locations/us-central1/providers/datadog
/// ```
///
///
/// ## Import
///
/// Channel can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/channels/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Channel can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:eventarc/channel:Channel default projects/{{project}}/locations/{{location}}/channels/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:eventarc/channel:Channel default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:eventarc/channel:Channel default {{location}}/{{name}}
/// ```
class Channel extends pulumi.CustomResource {
  /// The activation token for the channel. The token must be used by the provider to register the channel for publishing.
  late final pulumi.Output<String> activationToken;
  /// The creation time.
  late final pulumi.Output<String> createTime;
  /// Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt their event data. It must match the pattern `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  late final pulumi.Output<String?> cryptoKeyName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// User-defined labels for the channel.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location for the resource
  late final pulumi.Output<String> location;
  /// The resource name of the channel. Must be unique within the location on the project.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The name of the Pub/Sub topic created and managed by Eventarc system as a transport for the event delivery. Format: `projects/{project}/topics/{topic_id}`.
  late final pulumi.Output<String> pubsubTopic;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The state of a Channel.
  late final pulumi.Output<String> state;
  /// The name of the event provider (e.g. Eventarc SaaS partner) associated with the channel. This provider will be granted permissions to publish events to the channel. Format: `projects/{project}/locations/{location}/providers/{provider_id}`.
  late final pulumi.Output<String?> thirdPartyProvider;
  /// Server assigned unique identifier for the channel. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
  late final pulumi.Output<String> uid;
  /// The last-modified time.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Channel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Channel]. {@macro pulumi_eventarc_channel_channel_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Channel(
    String name, {
    ChannelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:eventarc/channel:Channel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.activationToken = registerOutput<String>('activationToken');
    this.createTime = registerOutput<String>('createTime');
    this.cryptoKeyName = registerOutput<String?>('cryptoKeyName');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pubsubTopic = registerOutput<String>('pubsubTopic');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
    this.thirdPartyProvider = registerOutput<String?>('thirdPartyProvider');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
