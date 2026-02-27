import 'package:pulumi/pulumi.dart';
import 'host_key_args.dart';

/// Manages a host key for a server. This is an [_additional server host key_](https://docs.aws.amazon.com/transfer/latest/userguide/server-host-key-add.html).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import host keys using the `server_id` and `host_key_id` separated by `,`. For example:
///
/// ```sh
/// $ pulumi import aws:transfer/hostKey:HostKey example s-12345678,key-12345
/// ```
class HostKey extends CustomResource {
  /// Amazon Resource Name (ARN) of host key.
  late final Output<String> arn;

  /// Text description.
  late final Output<String?> description;

  /// Private key portion of an SSH key pair.
  late final Output<String?> hostKeyBody;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Write-only private key portion of an SSH key pair, guaranteed not to be written to plan or state artifacts. One of `host_key_body` or `host_key_body_wo` must be configured.
  late final Output<String?> hostKeyBodyWo;

  /// Public key fingerprint.
  late final Output<String> hostKeyFingerprint;

  /// ID of the host key.
  late final Output<String> hostKeyId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Server ID.
  late final Output<String> serverId;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  HostKey(
    String name, {
    HostKeyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:transfer/hostKey:HostKey',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.hostKeyBody = registerOutput<String?>('hostKeyBody');
    this.hostKeyBodyWo = registerOutput<String?>('hostKeyBodyWo');
    this.hostKeyFingerprint = registerOutput<String>('hostKeyFingerprint');
    this.hostKeyId = registerOutput<String>('hostKeyId');
    this.region = registerOutput<String>('region');
    this.serverId = registerOutput<String>('serverId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
