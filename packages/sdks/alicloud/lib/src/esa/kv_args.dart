// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_esa_kv_kv_args_doc}
/// The set of arguments for Kv.
/// {@endtemplate}
/// {@macro pulumi_esa_kv_kv_args_doc}
class KvArgs {
  /// The content of the key, which can be up to 2 MB (2 × 1000 × 1000). If the content is larger than 2 MB, call [PutKvWithHighCapacity](https://www.alibabacloud.com/help/en/doc-detail/2850486.html).
  final pulumi.Input<int>? expiration;
  /// The time when the key-value pair expires, which cannot be earlier than the current time. The value is a timestamp in seconds. If you specify both Expiration and ExpirationTtl, only ExpirationTtl takes effect.
  final pulumi.Input<int>? expirationTtl;
  /// The relative expiration time. Unit: seconds. If you specify both Expiration and ExpirationTtl, only ExpirationTtl takes effect.
  final pulumi.Input<bool>? isbase;
  /// kv
  final pulumi.Input<String> key;
  /// The name specified when calling [CreatevNamespace](https://help.aliyun.com/document_detail/2850317.html).
  final pulumi.Input<String> namespace;
  /// The key name. The name can be up to 512 characters in length and cannot contain spaces or backslashes (\\).
  final pulumi.Input<String>? url;
  /// The content of the key. If the content has more than 256 characters in length, the system displays the first 100 and the last 100 characters, and omits the middle part.
  final pulumi.Input<String>? value;

  /// Creates a new [KvArgs].
  /// [expiration] The content of the key, which can be up to 2 MB (2 × 1000 × 1000). If the content is larger than 2 MB, call [PutKvWithHighCapacity](https://www.alibabacloud.com/help/en/doc-detail/2850486.html).
  /// [expirationTtl] The time when the key-value pair expires, which cannot be earlier than the current time. The value is a timestamp in seconds. If you specify both Expiration and ExpirationTtl, only ExpirationTtl takes effect.
  /// [isbase] The relative expiration time. Unit: seconds. If you specify both Expiration and ExpirationTtl, only ExpirationTtl takes effect.
  /// [key] kv
  /// [namespace] The name specified when calling [CreatevNamespace](https://help.aliyun.com/document_detail/2850317.html).
  /// [url] The key name. The name can be up to 512 characters in length and cannot contain spaces or backslashes (\\).
  /// [value] The content of the key. If the content has more than 256 characters in length, the system displays the first 100 and the last 100 characters, and omits the middle part.
  KvArgs({
    this.expiration,
    this.expirationTtl,
    this.isbase,
    required this.key,
    required this.namespace,
    this.url,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expiration': ?expiration,
      'expirationTtl': ?expirationTtl,
      'isbase': ?isbase,
      'key': key,
      'namespace': namespace,
      'url': ?url,
      'value': ?value,
    };
  }

  factory KvArgs.fromMap(Map<String, dynamic> map) {
    return KvArgs(
      expiration: (() { final guardedValue = map['expiration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      expirationTtl: (() { final guardedValue = map['expirationTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      isbase: (() { final guardedValue = map['isbase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      key: pulumi.Input.fromValue(map['key'] as String),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

