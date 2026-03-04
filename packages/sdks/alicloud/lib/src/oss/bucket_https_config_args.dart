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
    required this.bucket,
    this.cipherSuit,
    required this.enable,
    this.tlsVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'cipherSuit':
          ?pulumi.Input.mapOptionalInputValue<
            BucketHttpsConfigCipherSuit,
            Map<String, dynamic>
          >(cipherSuit, (value) => value.toMap()),
      'enable': enable,
      'tlsVersions': ?tlsVersions,
    };
  }

  factory BucketHttpsConfigArgs.fromMap(Map<String, dynamic> map) {
    return BucketHttpsConfigArgs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      cipherSuit: (() {
        final guardedValue = map['cipherSuit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BucketHttpsConfigCipherSuit.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      enable: pulumi.Input.fromValue(map['enable'] as bool),
      tlsVersions: (() {
        final guardedValue = map['tlsVersions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
