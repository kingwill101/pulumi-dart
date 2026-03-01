// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_https_config_cipher_suit.dart';

/// {@template pulumi_oss_bucket_https_config_bucket_https_config_args_doc}
/// The set of arguments for BucketHttpsConfig.
/// {@endtemplate}
/// {@macro pulumi_oss_bucket_https_config_bucket_https_config_args_doc}
class BucketHttpsConfigArgs {
  /// The name of the bucket
  final pulumi.Input<String> bucket;
  /// TLS encryption algorithm suite configuration See `cipher_suit` below.
  final pulumi.Input<BucketHttpsConfigCipherSuit>? cipherSuit;
  /// Specifies whether to enable TLS version management for the bucket. Valid values: true, false.
  final pulumi.Input<bool> enable;
  /// Specifies the TLS versions allowed to access this buckets.
  final pulumi.Input<List<String>>? tlsVersions;

  /// Creates a new [BucketHttpsConfigArgs].
  /// [bucket] The name of the bucket
  /// [cipherSuit] TLS encryption algorithm suite configuration See `cipher_suit` below.
  /// [enable] Specifies whether to enable TLS version management for the bucket. Valid values: true, false.
  /// [tlsVersions] Specifies the TLS versions allowed to access this buckets.
  BucketHttpsConfigArgs({
    required String bucket,
    BucketHttpsConfigCipherSuit? cipherSuit,
    required bool enable,
    List<String>? tlsVersions,
  }) :
      bucket = pulumi.Input.asInput<String>(bucket),
      cipherSuit = pulumi.Input.asOptionalInput<BucketHttpsConfigCipherSuit>(cipherSuit),
      enable = pulumi.Input.asInput<bool>(enable),
      tlsVersions = pulumi.Input.asOptionalInput<List<String>>(tlsVersions);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'cipherSuit': ?pulumi.Input.mapOptionalInputValue<BucketHttpsConfigCipherSuit, Map<String, dynamic>>(cipherSuit, (value) => value.toMap()),
      'enable': enable,
      'tlsVersions': ?tlsVersions,
    };
  }

  factory BucketHttpsConfigArgs.fromMap(Map<String, dynamic> map) {
    return BucketHttpsConfigArgs(
      bucket: map['bucket'] as String,
      cipherSuit: map['cipherSuit'] == null ? null : BucketHttpsConfigCipherSuit.fromMap((map['cipherSuit'] as Map).cast<String, dynamic>()),
      enable: map['enable'] as bool,
      tlsVersions: map['tlsVersions'] == null ? null : (map['tlsVersions'] as List).cast<String>(),
    );
  }
}

