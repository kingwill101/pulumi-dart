// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Kv resources.
class KvState {
  /// The content of the key, which can be up to 2 MB (2 × 1000 × 1000). If the content is larger than 2 MB, call [PutKvWithHighCapacity](https://www.alibabacloud.com/help/en/doc-detail/2850486.html).
  final pulumi.Input<int>? expiration;
  /// The time when the key-value pair expires, which cannot be earlier than the current time. The value is a timestamp in seconds. If you specify both Expiration and ExpirationTtl, only ExpirationTtl takes effect.
  final pulumi.Input<int>? expirationTtl;
  /// The relative expiration time. Unit: seconds. If you specify both Expiration and ExpirationTtl, only ExpirationTtl takes effect.
  final pulumi.Input<bool>? isbase;
  /// kv
  final pulumi.Input<String>? key;
  /// The name specified when calling [CreatevNamespace](https://help.aliyun.com/document_detail/2850317.html).
  final pulumi.Input<String>? namespace;
  /// The key name. The name can be up to 512 characters in length and cannot contain spaces or backslashes (\\).
  final pulumi.Input<String>? url;
  /// The content of the key. If the content has more than 256 characters in length, the system displays the first 100 and the last 100 characters, and omits the middle part.
  final pulumi.Input<String>? value;

  /// Creates a new [KvState].
  /// [expiration] The content of the key, which can be up to 2 MB (2 × 1000 × 1000). If the content is larger than 2 MB, call [PutKvWithHighCapacity](https://www.alibabacloud.com/help/en/doc-detail/2850486.html).
  /// [expirationTtl] The time when the key-value pair expires, which cannot be earlier than the current time. The value is a timestamp in seconds. If you specify both Expiration and ExpirationTtl, only ExpirationTtl takes effect.
  /// [isbase] The relative expiration time. Unit: seconds. If you specify both Expiration and ExpirationTtl, only ExpirationTtl takes effect.
  /// [key] kv
  /// [namespace] The name specified when calling [CreatevNamespace](https://help.aliyun.com/document_detail/2850317.html).
  /// [url] The key name. The name can be up to 512 characters in length and cannot contain spaces or backslashes (\\).
  /// [value] The content of the key. If the content has more than 256 characters in length, the system displays the first 100 and the last 100 characters, and omits the middle part.
  KvState({
    pulumi.Output<int>? expiration,
    pulumi.Output<int>? expirationTtl,
    pulumi.Output<bool>? isbase,
    pulumi.Output<String>? key,
    pulumi.Output<String>? namespace,
    pulumi.Output<String>? url,
    pulumi.Output<String>? value,
  }) :
      expiration = pulumi.Input.asOptionalInput<int>(expiration),
      expirationTtl = pulumi.Input.asOptionalInput<int>(expirationTtl),
      isbase = pulumi.Input.asOptionalInput<bool>(isbase),
      key = pulumi.Input.asOptionalInput<String>(key),
      namespace = pulumi.Input.asOptionalInput<String>(namespace),
      url = pulumi.Input.asOptionalInput<String>(url),
      value = pulumi.Input.asOptionalInput<String>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expiration': ?expiration,
      'expirationTtl': ?expirationTtl,
      'isbase': ?isbase,
      'key': ?key,
      'namespace': ?namespace,
      'url': ?url,
      'value': ?value,
    };
  }

  factory KvState.fromMap(Map<String, dynamic> map) {
    return KvState(
      expiration: map['expiration'] == null ? null : pulumi.Output.create<int>(map['expiration'] as int),
      expirationTtl: map['expirationTtl'] == null ? null : pulumi.Output.create<int>(map['expirationTtl'] as int),
      isbase: map['isbase'] == null ? null : pulumi.Output.create<bool>(map['isbase'] as bool),
      key: map['key'] == null ? null : pulumi.Output.create<String>(map['key'] as String),
      namespace: map['namespace'] == null ? null : pulumi.Output.create<String>(map['namespace'] as String),
      url: map['url'] == null ? null : pulumi.Output.create<String>(map['url'] as String),
      value: map['value'] == null ? null : pulumi.Output.create<String>(map['value'] as String),
    );
  }
}

