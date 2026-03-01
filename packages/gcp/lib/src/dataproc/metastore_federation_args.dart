// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metastore_federation_backend_metastore.dart';

/// {@template pulumi_dataproc_metastore_federation_metastore_federation_args_doc}
/// The set of arguments for MetastoreFederation.
/// {@endtemplate}
/// {@macro pulumi_dataproc_metastore_federation_metastore_federation_args_doc}
class MetastoreFederationArgs {
  /// A map from BackendMetastore rank to BackendMetastores from which the federation service serves metadata at query time. The map key represents the order in which BackendMetastores should be evaluated to resolve database names at query time and should be greater than or equal to zero. A BackendMetastore with a lower number will be evaluated before a BackendMetastore with a higher number.
  /// Structure is documented below.
  final pulumi.Input<List<MetastoreFederationBackendMetastore>> backendMetastores;
  final pulumi.Input<bool>? deletionProtection;
  /// The ID of the metastore federation. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),
  /// and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between
  /// 3 and 63 characters.
  final pulumi.Input<String> federationId;
  /// User-defined labels for the metastore federation.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location where the metastore federation should reside.
  final pulumi.Input<String>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// A map of resource manager tags.
  /// Resource manager tag keys and values have the same definition as resource manager tags.
  /// Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/{tag_value_id}.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Apache Hive metastore version of the federation. All backend metastore versions must be compatible with the federation version.
  final pulumi.Input<String> version;

  /// Creates a new [MetastoreFederationArgs].
  /// [backendMetastores] A map from BackendMetastore rank to BackendMetastores from which the federation service serves metadata at query time. The map key represents the order in which BackendMetastores should be evaluated to resolve database names at query time and should be greater than or equal to zero. A BackendMetastore with a lower number will be evaluated before a BackendMetastore with a higher number.
  /// [deletionProtection] Optional.
  /// [federationId] The ID of the metastore federation. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),
  /// [labels] User-defined labels for the metastore federation.
  /// [location] The location where the metastore federation should reside.
  /// [project] The ID of the project in which the resource belongs.
  /// [tags] A map of resource manager tags.
  /// [version] The Apache Hive metastore version of the federation. All backend metastore versions must be compatible with the federation version.
  MetastoreFederationArgs({
    required List<MetastoreFederationBackendMetastore> backendMetastores,
    bool? deletionProtection,
    required String federationId,
    Map<String, String>? labels,
    String? location,
    String? project,
    Map<String, String>? tags,
    required String version,
  }) :
      backendMetastores = pulumi.Input.asInput<List<MetastoreFederationBackendMetastore>>(backendMetastores),
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      federationId = pulumi.Input.asInput<String>(federationId),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      version = pulumi.Input.asInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendMetastores': pulumi.Input.mapInputValue<List<MetastoreFederationBackendMetastore>, List<Map<String, dynamic>>>(backendMetastores, (value) => pulumi.Input.encodeList<MetastoreFederationBackendMetastore, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deletionProtection': ?deletionProtection,
      'federationId': federationId,
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
      'tags': ?tags,
      'version': version,
    };
  }

  factory MetastoreFederationArgs.fromMap(Map<String, dynamic> map) {
    return MetastoreFederationArgs(
      backendMetastores: pulumi.Input.decodeList<MetastoreFederationBackendMetastore>(map['backendMetastores'], (value) => MetastoreFederationBackendMetastore.fromMap((value as Map).cast<String, dynamic>())),
      deletionProtection: map['deletionProtection'] == null ? null : map['deletionProtection'] as bool,
      federationId: map['federationId'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      version: map['version'] as String,
    );
  }
}

