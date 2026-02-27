import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_channel_config_args.dart';

/// The Eventarc GoogleChannelConfig resource
///
///
/// To get more information about GoogleChannelConfig, see:
///
/// * [API documentation](https://cloud.google.com/eventarc/docs/reference/rest/v1/projects.locations)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/eventarc/docs/use-cmek#enable-cmek-google-channel)
///
/// ## Example Usage
///
/// ### Eventarc Google Channel Config With Cmek
///
///
///
///
/// ## Import
///
/// GoogleChannelConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/googleChannelConfig`
///
/// * `{{project}}/{{location}}`
///
/// * `{{location}}`
///
/// When using the `pulumi import` command, GoogleChannelConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:eventarc/googleChannelConfig:GoogleChannelConfig default projects/{{project}}/locations/{{location}}/googleChannelConfig
/// ```
///
/// ```sh
/// $ pulumi import gcp:eventarc/googleChannelConfig:GoogleChannelConfig default {{project}}/{{location}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:eventarc/googleChannelConfig:GoogleChannelConfig default {{location}}
/// ```
class GoogleChannelConfig extends pulumi.CustomResource {
  /// Optional. Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt their event data. It must match the pattern `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  late final pulumi.Output<String?> cryptoKeyName;

  /// The location for the resource
  late final pulumi.Output<String> location;

  /// Required. The resource name of the config. Must be in the format of, `projects/{project}/locations/{location}/googleChannelConfig`.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Output only. The last-modified time.
  late final pulumi.Output<String> updateTime;

  GoogleChannelConfig(
    String name, {
    GoogleChannelConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:eventarc/googleChannelConfig:GoogleChannelConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cryptoKeyName = registerOutput<String?>('cryptoKeyName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
