import 'package:pulumi/pulumi.dart' as pulumi;
import 'gcm_channel_args.dart';
import 'gcm_channel_state.dart';

/// Provides an End User Messaging GCM Channel resource.
///
/// &gt; **Note:** Credentials (Service Account JSON and API Key) will be stored in the raw state as plain-text.
/// ## Import
///
/// Using `pulumi import`, import End User Messaging GCM Channel using the `application-id`. For example:
///
/// ```sh
/// $ pulumi import aws:pinpoint/gcmChannel:GcmChannel gcm application-id
/// ```
class GcmChannel extends pulumi.CustomResource {
  /// Platform credential API key from Google. Conflicts with `serviceJson`.
  late final pulumi.Output<String?> apiKey;
  /// Application ID.
  late final pulumi.Output<String> applicationId;
  /// Default authentication method used for GCM. Valid values: `KEY`, `TOKEN`. Defaults to `KEY`.
  late final pulumi.Output<String?> defaultAuthenticationMethod;
  /// Whether the channel is enabled or disabled. Defaults to `true`.
  late final pulumi.Output<bool?> enabled;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Service Account JSON from Google to use with the GCM API. Conflicts with `apiKey`.
  late final pulumi.Output<String?> serviceJson;

  /// Creates a new [GcmChannel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GcmChannel]. {@macro pulumi_pinpoint_gcm_channel_gcm_channel_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GcmChannel(
    String name, {
    GcmChannelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:pinpoint/gcmChannel:GcmChannel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
          additionalSecretOutputs: const ['apiKey', 'serviceJson'],
        ) {
    apiKey = registerOutput<String?>('apiKey', isSecret: true);
    applicationId = registerOutput<String>('applicationId');
    defaultAuthenticationMethod = registerOutput<String?>('defaultAuthenticationMethod');
    enabled = registerOutput<bool?>('enabled');
    region = registerOutput<String>('region');
    serviceJson = registerOutput<String?>('serviceJson', isSecret: true);
  }

  /// Gets an existing [GcmChannel] resource's state with the given [name] and [id].
  static GcmChannel get(
    String name,
    pulumi.Input<String> id, {
    GcmChannelState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return GcmChannel._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  GcmChannel._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:pinpoint/gcmChannel:GcmChannel',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiKey = registerOutput<String?>('apiKey', isSecret: true);
    applicationId = registerOutput<String>('applicationId');
    defaultAuthenticationMethod = registerOutput<String?>('defaultAuthenticationMethod');
    enabled = registerOutput<bool?>('enabled');
    region = registerOutput<String>('region');
    serviceJson = registerOutput<String?>('serviceJson', isSecret: true);
  }

  /// Creates a typed reference to an existing [GcmChannel] resource.
  GcmChannel.reference(String urn)
    : super(
        'aws:pinpoint/gcmChannel:GcmChannel',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['apiKey', 'serviceJson'],
        isResourceReference: true,
      ) {
    apiKey = registerOutput<String?>('apiKey', isSecret: true);
    applicationId = registerOutput<String>('applicationId');
    defaultAuthenticationMethod = registerOutput<String?>('defaultAuthenticationMethod');
    enabled = registerOutput<bool?>('enabled');
    region = registerOutput<String>('region');
    serviceJson = registerOutput<String?>('serviceJson', isSecret: true);
  }
}
