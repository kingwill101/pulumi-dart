// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_https_config_cipher_suit.dart';

/// Input properties used for looking up and filtering BucketHttpsConfig resources.
class BucketHttpsConfigState {
  /// The name of the bucket
  final pulumi.Input<String>? bucket;
  /// TLS encryption algorithm suite configuration See `cipher_suit` below.
  final pulumi.Input<BucketHttpsConfigCipherSuit>? cipherSuit;
  /// Specifies whether to enable TLS version management for the bucket. Valid values: true, false.
  final pulumi.Input<bool>? enable;
  /// Specifies the TLS versions allowed to access this buckets.
  final pulumi.Input<List<String>>? tlsVersions;

  /// Creates a new [BucketHttpsConfigState].
  /// [bucket] The name of the bucket
  /// [cipherSuit] TLS encryption algorithm suite configuration See `cipher_suit` below.
  /// [enable] Specifies whether to enable TLS version management for the bucket. Valid values: true, false.
  /// [tlsVersions] Specifies the TLS versions allowed to access this buckets.
  BucketHttpsConfigState({
    this.bucket,
    this.cipherSuit,
    this.enable,
    this.tlsVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'cipherSuit': ?pulumi.Input.mapOptionalInputValue<BucketHttpsConfigCipherSuit, Map<String, dynamic>>(cipherSuit, (value) => value.toMap()),
      'enable': ?enable,
      'tlsVersions': ?tlsVersions,
    };
  }

  factory BucketHttpsConfigState.fromMap(Map<String, dynamic> map) {
    return BucketHttpsConfigState(
      bucket: map['bucket'] == null ? null : (map['bucket']! as String).input(),
      cipherSuit: map['cipherSuit'] == null ? null : (BucketHttpsConfigCipherSuit.fromMap((map['cipherSuit']! as Map).cast<String, dynamic>())).input(),
      enable: map['enable'] == null ? null : (map['enable']! as bool).input(),
      tlsVersions: map['tlsVersions'] == null ? null : ((map['tlsVersions']! as List).cast<String>()).input(),
    );
  }
}

