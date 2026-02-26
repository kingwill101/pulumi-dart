// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../edge_cache_keyset_public_key/edge_cache_keyset_public_key.dart';
import '../edge_cache_keyset_validation_shared_key/edge_cache_keyset_validation_shared_key.dart';

/// The set of arguments for EdgeCacheKeyset.
class EdgeCacheKeysetArgs {
  /// A human-readable description of the resource.
  final Input<String>? description;

  /// Set of label tags associated with the EdgeCache resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Name of the resource; provided by the client when the resource is created.
  /// The name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,
  /// and all following characters must be a dash, underscore, letter or digit.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// An ordered list of Ed25519 public keys to use for validating signed requests.
  /// You must specify <span pulumi-lang-nodejs="`publicKeys`" pulumi-lang-dotnet="`PublicKeys`" pulumi-lang-go="`publicKeys`" pulumi-lang-python="`public_keys`" pulumi-lang-yaml="`publicKeys`" pulumi-lang-java="`publicKeys`">`public_keys`</span> or <span pulumi-lang-nodejs="`validationSharedKeys`" pulumi-lang-dotnet="`ValidationSharedKeys`" pulumi-lang-go="`validationSharedKeys`" pulumi-lang-python="`validation_shared_keys`" pulumi-lang-yaml="`validationSharedKeys`" pulumi-lang-java="`validationSharedKeys`">`validation_shared_keys`</span> (or both). The keys in <span pulumi-lang-nodejs="`publicKeys`" pulumi-lang-dotnet="`PublicKeys`" pulumi-lang-go="`publicKeys`" pulumi-lang-python="`public_keys`" pulumi-lang-yaml="`publicKeys`" pulumi-lang-java="`publicKeys`">`public_keys`</span> are checked first.
  /// You may specify no more than one Google-managed public key.
  /// If you specify <span pulumi-lang-nodejs="`publicKeys`" pulumi-lang-dotnet="`PublicKeys`" pulumi-lang-go="`publicKeys`" pulumi-lang-python="`public_keys`" pulumi-lang-yaml="`publicKeys`" pulumi-lang-java="`publicKeys`">`public_keys`</span>, you must specify at least one (1) key and may specify up to three (3) keys.
  /// Ed25519 public keys are not secret, and only allow Google to validate a request was signed by your corresponding private key.
  /// Ensure that the private key is kept secret, and that only authorized users can add public keys to a keyset.
  /// Structure is documented below.
  final Input<List<EdgeCacheKeysetPublicKey>>? publicKeys;

  /// An ordered list of shared keys to use for validating signed requests.
  /// Shared keys are secret.  Ensure that only authorized users can add <span pulumi-lang-nodejs="`validationSharedKeys`" pulumi-lang-dotnet="`ValidationSharedKeys`" pulumi-lang-go="`validationSharedKeys`" pulumi-lang-python="`validation_shared_keys`" pulumi-lang-yaml="`validationSharedKeys`" pulumi-lang-java="`validationSharedKeys`">`validation_shared_keys`</span> to a keyset.
  /// You can rotate keys by appending (pushing) a new key to the list of <span pulumi-lang-nodejs="`validationSharedKeys`" pulumi-lang-dotnet="`ValidationSharedKeys`" pulumi-lang-go="`validationSharedKeys`" pulumi-lang-python="`validation_shared_keys`" pulumi-lang-yaml="`validationSharedKeys`" pulumi-lang-java="`validationSharedKeys`">`validation_shared_keys`</span> and removing any superseded keys.
  /// You must specify <span pulumi-lang-nodejs="`publicKeys`" pulumi-lang-dotnet="`PublicKeys`" pulumi-lang-go="`publicKeys`" pulumi-lang-python="`public_keys`" pulumi-lang-yaml="`publicKeys`" pulumi-lang-java="`publicKeys`">`public_keys`</span> or <span pulumi-lang-nodejs="`validationSharedKeys`" pulumi-lang-dotnet="`ValidationSharedKeys`" pulumi-lang-go="`validationSharedKeys`" pulumi-lang-python="`validation_shared_keys`" pulumi-lang-yaml="`validationSharedKeys`" pulumi-lang-java="`validationSharedKeys`">`validation_shared_keys`</span> (or both). The keys in <span pulumi-lang-nodejs="`publicKeys`" pulumi-lang-dotnet="`PublicKeys`" pulumi-lang-go="`publicKeys`" pulumi-lang-python="`public_keys`" pulumi-lang-yaml="`publicKeys`" pulumi-lang-java="`publicKeys`">`public_keys`</span> are checked first.
  /// Structure is documented below.
  final Input<List<EdgeCacheKeysetValidationSharedKey>>? validationSharedKeys;

  EdgeCacheKeysetArgs({
    this.description,
    this.labels,
    this.name,
    this.project,
    this.publicKeys,
    this.validationSharedKeys,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final publicKeysValue = publicKeys;
    if (publicKeysValue != null) {
      map['publicKeys'] = Input.mapOptionalInputValue<
              List<EdgeCacheKeysetPublicKey>, List<Map<String, dynamic>>>(
          publicKeysValue,
          (value) =>
              Input.encodeList<EdgeCacheKeysetPublicKey, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final validationSharedKeysValue = validationSharedKeys;
    if (validationSharedKeysValue != null) {
      map['validationSharedKeys'] = Input.mapOptionalInputValue<
              List<EdgeCacheKeysetValidationSharedKey>,
              List<Map<String, dynamic>>>(
          validationSharedKeysValue,
          (value) => Input.encodeList<EdgeCacheKeysetValidationSharedKey,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory EdgeCacheKeysetArgs.fromMap(Map<String, dynamic> map) {
    return EdgeCacheKeysetArgs(
      description: Input.asOptionalInput<String>(map['description']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      publicKeys: Input.asOptionalInput<List<EdgeCacheKeysetPublicKey>>(
          map['publicKeys']),
      validationSharedKeys:
          Input.asOptionalInput<List<EdgeCacheKeysetValidationSharedKey>>(
              map['validationSharedKeys']),
    );
  }
}
