// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_v1_acl.dart';

/// {@template pulumi_keymanager_secret_v1_secret_v1_args_doc}
/// The set of arguments for SecretV1.
/// {@endtemplate}
/// {@macro pulumi_keymanager_secret_v1_secret_v1_args_doc}
class SecretV1Args {
  /// Allows to control an access to a secret. Currently only the
  /// `read` operation is supported. If not specified, the secret is accessible
  /// project wide.
  final pulumi.Input<SecretV1Acl>? acl;
  /// Metadata provided by a user or system for informational purposes.
  final pulumi.Input<String>? algorithm;
  /// Metadata provided by a user or system for informational purposes.
  final pulumi.Input<int>? bitLength;
  /// The expiration time of the secret in the RFC3339 timestamp format (e.g. `2019-03-09T12:58:49Z`). If omitted, a secret will never expire. Changing this creates a new secret.
  final pulumi.Input<String>? expiration;
  /// Additional Metadata for the secret.
  final pulumi.Input<Map<String, String>>? metadata;
  /// Metadata provided by a user or system for informational purposes.
  final pulumi.Input<String>? mode;
  /// Human-readable name for the Secret. Does not have
  /// to be unique.
  final pulumi.Input<String>? name;
  /// The secret's data to be stored. **payload\_content\_type** must also be supplied if **payload** is included.
  final pulumi.Input<String>? payload;
  /// (required if **payload** is encoded) The encoding used for the payload to be able to include it in the JSON request. Must be either `base64` or `binary`.
  final pulumi.Input<String>? payloadContentEncoding;
  /// (required if **payload** is included) The media type for the content of the payload. Must be one of `text/plain`, `text/plain;charset=utf-8`, `text/plain; charset=utf-8`, `application/octet-stream`, `application/pkcs8`.
  final pulumi.Input<String>? payloadContentType;
  /// The region in which to obtain the V1 KeyManager client.
  /// A KeyManager client is needed to create a secret. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// V1 secret.
  final pulumi.Input<String>? region;
  /// Used to indicate the type of secret being stored. For more information see [Secret types](https://docs.openstack.org/barbican/latest/api/reference/secret_types.html).
  final pulumi.Input<String>? secretType;

  /// Creates a new [SecretV1Args].
  /// [acl] Allows to control an access to a secret. Currently only the
  /// [algorithm] Metadata provided by a user or system for informational purposes.
  /// [bitLength] Metadata provided by a user or system for informational purposes.
  /// [expiration] The expiration time of the secret in the RFC3339 timestamp format (e.g. `2019-03-09T12:58:49Z`). If omitted, a secret will never expire. Changing this creates a new secret.
  /// [metadata] Additional Metadata for the secret.
  /// [mode] Metadata provided by a user or system for informational purposes.
  /// [name] Human-readable name for the Secret. Does not have
  /// [payload] The secret's data to be stored. **payload\_content\_type** must also be supplied if **payload** is included.
  /// [payloadContentEncoding] (required if **payload** is encoded) The encoding used for the payload to be able to include it in the JSON request. Must be either `base64` or `binary`.
  /// [payloadContentType] (required if **payload** is included) The media type for the content of the payload. Must be one of `text/plain`, `text/plain;charset=utf-8`, `text/plain; charset=utf-8`, `application/octet-stream`, `application/pkcs8`.
  /// [region] The region in which to obtain the V1 KeyManager client.
  /// [secretType] Used to indicate the type of secret being stored. For more information see [Secret types](https://docs.openstack.org/barbican/latest/api/reference/secret_types.html).
  SecretV1Args({
    SecretV1Acl? acl,
    String? algorithm,
    int? bitLength,
    String? expiration,
    Map<String, String>? metadata,
    String? mode,
    String? name,
    String? payload,
    String? payloadContentEncoding,
    String? payloadContentType,
    String? region,
    String? secretType,
  }) :
      acl = pulumi.Input.asOptionalInput<SecretV1Acl>(acl),
      algorithm = pulumi.Input.asOptionalInput<String>(algorithm),
      bitLength = pulumi.Input.asOptionalInput<int>(bitLength),
      expiration = pulumi.Input.asOptionalInput<String>(expiration),
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      mode = pulumi.Input.asOptionalInput<String>(mode),
      name = pulumi.Input.asOptionalInput<String>(name),
      payload = pulumi.Input.asOptionalInput<String>(payload),
      payloadContentEncoding = pulumi.Input.asOptionalInput<String>(payloadContentEncoding),
      payloadContentType = pulumi.Input.asOptionalInput<String>(payloadContentType),
      region = pulumi.Input.asOptionalInput<String>(region),
      secretType = pulumi.Input.asOptionalInput<String>(secretType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acl': ?pulumi.Input.mapOptionalInputValue<SecretV1Acl, Map<String, dynamic>>(acl, (value) => value.toMap()),
      'algorithm': ?algorithm,
      'bitLength': ?bitLength,
      'expiration': ?expiration,
      'metadata': ?metadata,
      'mode': ?mode,
      'name': ?name,
      'payload': ?payload,
      'payloadContentEncoding': ?payloadContentEncoding,
      'payloadContentType': ?payloadContentType,
      'region': ?region,
      'secretType': ?secretType,
    };
  }

  factory SecretV1Args.fromMap(Map<String, dynamic> map) {
    return SecretV1Args(
      acl: map['acl'] == null ? null : SecretV1Acl.fromMap((map['acl'] as Map).cast<String, dynamic>()),
      algorithm: map['algorithm'] == null ? null : map['algorithm'] as String,
      bitLength: map['bitLength'] == null ? null : map['bitLength'] as int,
      expiration: map['expiration'] == null ? null : map['expiration'] as String,
      metadata: map['metadata'] == null ? null : (map['metadata'] as Map).cast<String, String>(),
      mode: map['mode'] == null ? null : map['mode'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      payload: map['payload'] == null ? null : map['payload'] as String,
      payloadContentEncoding: map['payloadContentEncoding'] == null ? null : map['payloadContentEncoding'] as String,
      payloadContentType: map['payloadContentType'] == null ? null : map['payloadContentType'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      secretType: map['secretType'] == null ? null : map['secretType'] as String,
    );
  }
}

