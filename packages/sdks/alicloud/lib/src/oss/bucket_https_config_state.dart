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
  const BucketHttpsConfigState({
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
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cipherSuit: (() { final guardedValue = map['cipherSuit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketHttpsConfigCipherSuit.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tlsVersions: (() { final guardedValue = map['tlsVersions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

