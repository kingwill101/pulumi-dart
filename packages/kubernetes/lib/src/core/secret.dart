// ignore_for_file: unused_element, unnecessary_cast

import '../meta/object_meta.dart';

/// Secret holds secret data of a certain type. The total bytes of the values in the Data field must be less than MaxSecretSize bytes.
///
/// Note: While Pulumi automatically encrypts the 'data' and 'stringData'
/// fields, this encryption only applies to Pulumi's context, including the state file,
/// the Service, the CLI, etc. Kubernetes does not encrypt Secret resources by default,
/// and the contents are visible to users with access to the Secret in Kubernetes using
/// tools like 'kubectl'.
///
/// For more information on securing Kubernetes Secrets, see the following links:
/// https://kubernetes.io/docs/concepts/configuration/secret/#security-properties
/// https://kubernetes.io/docs/concepts/configuration/secret/#risks
class Secret {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;
  /// Data contains the secret data. Each key must consist of alphanumeric characters, '-', '_' or '.'. The serialized form of the secret data is a base64 encoded string, representing the arbitrary (possibly non-string) data value here. Described in https://tools.ietf.org/html/rfc4648#section-4
  final Map<String, String>? data;
  /// Immutable, if set to true, ensures that data stored in the Secret cannot be updated (only object metadata can be modified). If not set to true, the field can be modified at any time. Defaulted to nil.
  final bool? immutable;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final ObjectMeta? metadata;
  /// stringData allows specifying non-binary secret data in string form. It is provided as a write-only input field for convenience. All keys and values are merged into the data field on write, overwriting any existing values. The stringData field is never output when reading from the API.
  final Map<String, String>? stringData;
  /// Used to facilitate programmatic handling of secret data. More info: https://kubernetes.io/docs/concepts/configuration/secret/#secret-types
  final String? type;

  /// Creates a new [Secret].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [data] Data contains the secret data. Each key must consist of alphanumeric characters, '-', '_' or '.'. The serialized form of the secret data is a base64 encoded string, representing the arbitrary (possibly non-string) data value here. Described in https://tools.ietf.org/html/rfc4648#section-4
  /// [immutable] Immutable, if set to true, ensures that data stored in the Secret cannot be updated (only object metadata can be modified). If not set to true, the field can be modified at any time. Defaulted to nil.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// [stringData] stringData allows specifying non-binary secret data in string form. It is provided as a write-only input field for convenience. All keys and values are merged into the data field on write, overwriting any existing values. The stringData field is never output when reading from the API.
  /// [type] Used to facilitate programmatic handling of secret data. More info: https://kubernetes.io/docs/concepts/configuration/secret/#secret-types
  Secret({
    this.apiVersion,
    this.data,
    this.immutable,
    this.kind,
    this.metadata,
    this.stringData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'data': ?data,
      'immutable': ?immutable,
      'kind': ?kind,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'stringData': ?stringData,
      'type': ?type,
    };
  }

  factory Secret.fromMap(Map<String, dynamic> map) {
    return Secret(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      data: map['data'] == null ? null : (map['data'] as Map).cast<String, String>(),
      immutable: map['immutable'] == null ? null : map['immutable'] as bool,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      stringData: map['stringData'] == null ? null : (map['stringData'] as Map).cast<String, String>(),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

