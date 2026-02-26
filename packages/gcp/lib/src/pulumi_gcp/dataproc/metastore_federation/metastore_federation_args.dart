// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../metastore_federation_backend_metastore/metastore_federation_backend_metastore.dart';

/// The set of arguments for MetastoreFederation.
class MetastoreFederationArgs {
  /// A map from BackendMetastore rank to BackendMetastores from which the federation service serves metadata at query time. The map key represents the order in which BackendMetastores should be evaluated to resolve database names at query time and should be greater than or equal to zero. A BackendMetastore with a lower number will be evaluated before a BackendMetastore with a higher number.
  /// Structure is documented below.
  final Input<List<MetastoreFederationBackendMetastore>> backendMetastores;
  final Input<bool>? deletionProtection;

  /// The ID of the metastore federation. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),
  /// and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between
  /// 3 and 63 characters.
  final Input<String> federationId;

  /// User-defined labels for the metastore federation.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The location where the metastore federation should reside.
  final Input<String>? location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// A map of resource manager tags.
  /// Resource manager tag keys and values have the same definition as resource manager tags.
  /// Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/{tag_value_id}.
  final Input<Map<String, String>>? tags;

  /// The Apache Hive metastore version of the federation. All backend metastore versions must be compatible with the federation version.
  final Input<String> version;

  MetastoreFederationArgs({
    required this.backendMetastores,
    this.deletionProtection,
    required this.federationId,
    this.labels,
    this.location,
    this.project,
    this.tags,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backendMetastores'] = Input.mapInputValue<
            List<MetastoreFederationBackendMetastore>,
            List<Map<String, dynamic>>>(
        backendMetastores,
        (value) => Input.encodeList<MetastoreFederationBackendMetastore,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final deletionProtectionValue = deletionProtection;
    if (deletionProtectionValue != null) {
      map['deletionProtection'] = deletionProtectionValue;
    }
    map['federationId'] = federationId;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['version'] = version;
    return map;
  }

  factory MetastoreFederationArgs.fromMap(Map<String, dynamic> map) {
    return MetastoreFederationArgs(
      backendMetastores:
          Input.asInput<List<MetastoreFederationBackendMetastore>>(
              map['backendMetastores']),
      deletionProtection:
          Input.asOptionalInput<bool>(map['deletionProtection']),
      federationId: Input.asInput<String>(map['federationId']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      version: Input.asInput<String>(map['version']),
    );
  }
}
