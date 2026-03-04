import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_https_config_args.dart';
import 'bucket_https_config_cipher_suit.dart';
import 'bucket_https_config_state.dart';

/// ## Import
///
/// OSS Bucket Https Config can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:oss/bucketHttpsConfig:BucketHttpsConfig example <id>
/// ```
class BucketHttpsConfig extends pulumi.CustomResource {
  /// The name of the bucket
  late final pulumi.Output<String> bucket;

  /// TLS encryption algorithm suite configuration See `cipher_suit` below.
  late final pulumi.Output<BucketHttpsConfigCipherSuit> cipherSuit;

  /// Specifies whether to enable TLS version management for the bucket. Valid values: true, false.
  late final pulumi.Output<bool> enable;

  /// Specifies the TLS versions allowed to access this buckets.
  late final pulumi.Output<List<String>?> tlsVersions;

  /// Creates a new [BucketHttpsConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketHttpsConfig]. {@macro pulumi_oss_bucket_https_config_bucket_https_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketHttpsConfig(
    String name, {
    BucketHttpsConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:oss/bucketHttpsConfig:BucketHttpsConfig',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bucket = registerOutput<String>('bucket');
    cipherSuit = registerOutput<BucketHttpsConfigCipherSuit>('cipherSuit');
    enable = registerOutput<bool>('enable');
    tlsVersions = registerOutput<List<String>?>('tlsVersions');
  }

  /// Gets an existing [BucketHttpsConfig] resource's state with the given [name] and [id].
  static BucketHttpsConfig get(
    String name,
    pulumi.Input<String> id, {
    BucketHttpsConfigState? state,
  }) {
    return BucketHttpsConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BucketHttpsConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:oss/bucketHttpsConfig:BucketHttpsConfig',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bucket = registerOutput<String>('bucket');
    cipherSuit = registerOutput<BucketHttpsConfigCipherSuit>('cipherSuit');
    enable = registerOutput<bool>('enable');
    tlsVersions = registerOutput<List<String>?>('tlsVersions');
  }
}
