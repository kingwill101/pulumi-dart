// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_rotation_policy.dart';

/// {@template pulumi_keyvault_key_key_args_doc}
/// The set of arguments for Key.
/// {@endtemplate}
/// {@macro pulumi_keyvault_key_key_args_doc}
class KeyArgs {
  /// Specifies the curve to use when creating an `EC` key. Possible values are `P-256`, `P-256K`, `P-384`, and `P-521`. This field will be required in a future release if `key_type` is `EC` or `EC-HSM`. The API will default to `P-256` if nothing is specified. Changing this forces a new resource to be created.
  final pulumi.Input<String>? curve;
  /// Expiration UTC datetime (Y-m-d'T'H:M:S'Z').
  ///
  /// > **Note:** Removing this field from the config forces a new resource to be created.
  final pulumi.Input<String>? expirationDate;
  /// A list of JSON web key operations. Possible values include: `decrypt`, `encrypt`, `sign`, `unwrapKey`, `verify` and `wrapKey`. Please note these values are case sensitive.
  final pulumi.Input<List<String>> keyOpts;
  /// Specifies the Size of the RSA key to create in bytes. For example, 1024 or 2048. *Note*: This field is required if `key_type` is `RSA` or `RSA-HSM`. Changing this forces a new resource to be created.
  final pulumi.Input<int>? keySize;
  /// Specifies the Key Type to use for this Key Vault Key. Possible values are `EC` (Elliptic Curve), `EC-HSM`, `RSA` and `RSA-HSM`. Changing this forces a new resource to be created.
  final pulumi.Input<String> keyType;
  /// The ID of the Key Vault where the Key should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> keyVaultId;
  /// Specifies the name of the Key Vault Key. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Key not usable before the provided UTC datetime (Y-m-d'T'H:M:S'Z').
  ///
  /// > **Note:** Once `expiration_date` is set, it's not possible to unset the key even if it is deleted & recreated as underlying Azure API uses the restore of the purged key.
  final pulumi.Input<String>? notBeforeDate;
  /// A `rotation_policy` block as defined below.
  final pulumi.Input<KeyRotationPolicy>? rotationPolicy;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [KeyArgs].
  /// [curve] Specifies the curve to use when creating an `EC` key. Possible values are `P-256`, `P-256K`, `P-384`, and `P-521`. This field will be required in a future release if `key_type` is `EC` or `EC-HSM`. The API will default to `P-256` if nothing is specified. Changing this forces a new resource to be created.
  /// [expirationDate] Expiration UTC datetime (Y-m-d'T'H:M:S'Z').
  /// [keyOpts] A list of JSON web key operations. Possible values include: `decrypt`, `encrypt`, `sign`, `unwrapKey`, `verify` and `wrapKey`. Please note these values are case sensitive.
  /// [keySize] Specifies the Size of the RSA key to create in bytes. For example, 1024 or 2048. *Note*: This field is required if `key_type` is `RSA` or `RSA-HSM`. Changing this forces a new resource to be created.
  /// [keyType] Specifies the Key Type to use for this Key Vault Key. Possible values are `EC` (Elliptic Curve), `EC-HSM`, `RSA` and `RSA-HSM`. Changing this forces a new resource to be created.
  /// [keyVaultId] The ID of the Key Vault where the Key should be created. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Key Vault Key. Changing this forces a new resource to be created.
  /// [notBeforeDate] Key not usable before the provided UTC datetime (Y-m-d'T'H:M:S'Z').
  /// [rotationPolicy] A `rotation_policy` block as defined below.
  /// [tags] A mapping of tags to assign to the resource.
  KeyArgs({
    String? curve,
    String? expirationDate,
    required List<String> keyOpts,
    int? keySize,
    required String keyType,
    required String keyVaultId,
    String? name,
    String? notBeforeDate,
    KeyRotationPolicy? rotationPolicy,
    Map<String, String>? tags,
  }) :
      curve = pulumi.Input.asOptionalInput<String>(curve),
      expirationDate = pulumi.Input.asOptionalInput<String>(expirationDate),
      keyOpts = pulumi.Input.asInput<List<String>>(keyOpts),
      keySize = pulumi.Input.asOptionalInput<int>(keySize),
      keyType = pulumi.Input.asInput<String>(keyType),
      keyVaultId = pulumi.Input.asInput<String>(keyVaultId),
      name = pulumi.Input.asOptionalInput<String>(name),
      notBeforeDate = pulumi.Input.asOptionalInput<String>(notBeforeDate),
      rotationPolicy = pulumi.Input.asOptionalInput<KeyRotationPolicy>(rotationPolicy),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'curve': ?curve,
      'expirationDate': ?expirationDate,
      'keyOpts': keyOpts,
      'keySize': ?keySize,
      'keyType': keyType,
      'keyVaultId': keyVaultId,
      'name': ?name,
      'notBeforeDate': ?notBeforeDate,
      'rotationPolicy': ?pulumi.Input.mapOptionalInputValue<KeyRotationPolicy, Map<String, dynamic>>(rotationPolicy, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory KeyArgs.fromMap(Map<String, dynamic> map) {
    return KeyArgs(
      curve: map['curve'] == null ? null : map['curve'] as String,
      expirationDate: map['expirationDate'] == null ? null : map['expirationDate'] as String,
      keyOpts: (map['keyOpts'] as List).cast<String>(),
      keySize: map['keySize'] == null ? null : map['keySize'] as int,
      keyType: map['keyType'] as String,
      keyVaultId: map['keyVaultId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      notBeforeDate: map['notBeforeDate'] == null ? null : map['notBeforeDate'] as String,
      rotationPolicy: map['rotationPolicy'] == null ? null : KeyRotationPolicy.fromMap((map['rotationPolicy'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

