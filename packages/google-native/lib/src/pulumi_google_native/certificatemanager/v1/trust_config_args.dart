// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'trust_store.dart';

/// The set of arguments for TrustConfig.
class TrustConfigArgs {
  /// One or more paragraphs of text description of a TrustConfig.
  final Input<String>? description;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final Input<String>? etag;

  /// Set of labels associated with a TrustConfig.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// A user-defined name of the trust config. TrustConfig names must be unique globally and match pattern `projects/*/locations/*/trustConfigs/*`.
  final Input<String>? name;
  final Input<String>? project;

  /// Required. A user-provided name of the TrustConfig. Must match the regexp `[a-z0-9-]{1,63}`.
  final Input<String> trustConfigId;

  /// Set of trust stores to perform validation against. This field is supported when TrustConfig is configured with Load Balancers, currently not supported for SPIFFE certificate validation. Only one TrustStore specified is currently allowed.
  final Input<List<TrustStore>>? trustStores;

  TrustConfigArgs({
    this.description,
    this.etag,
    this.labels,
    this.location,
    this.name,
    this.project,
    required this.trustConfigId,
    this.trustStores,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['trustConfigId'] = trustConfigId;
    final trustStoresValue = trustStores;
    if (trustStoresValue != null) {
      map['trustStores'] = Input.mapOptionalInputValue<List<TrustStore>,
              List<Map<String, dynamic>>>(
          trustStoresValue,
          (value) => Input.encodeList<TrustStore, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    return map;
  }

  factory TrustConfigArgs.fromMap(Map<String, dynamic> map) {
    return TrustConfigArgs(
      description: Input.asOptionalInput<String>(map['description']),
      etag: Input.asOptionalInput<String>(map['etag']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      trustConfigId: Input.asInput<String>(map['trustConfigId']),
      trustStores: Input.asOptionalInput<List<TrustStore>>(map['trustStores']),
    );
  }
}
