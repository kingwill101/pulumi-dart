// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trust_store.dart';

/// {@template pulumi_certificatemanager_v1_trust_config_args_doc}
/// The set of arguments for TrustConfig.
/// {@endtemplate}
/// {@macro pulumi_certificatemanager_v1_trust_config_args_doc}
class TrustConfigArgs {
  /// One or more paragraphs of text description of a TrustConfig.
  final pulumi.Input<String>? description;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;

  /// Set of labels associated with a TrustConfig.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// A user-defined name of the trust config. TrustConfig names must be unique globally and match pattern `projects/*/locations/*/trustConfigs/*`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Required. A user-provided name of the TrustConfig. Must match the regexp `[a-z0-9-]{1,63}`.
  final pulumi.Input<String> trustConfigId;

  /// Set of trust stores to perform validation against. This field is supported when TrustConfig is configured with Load Balancers, currently not supported for SPIFFE certificate validation. Only one TrustStore specified is currently allowed.
  final pulumi.Input<List<TrustStore>>? trustStores;

  /// Creates a new [TrustConfigArgs].
  /// [description] One or more paragraphs of text description of a TrustConfig.
  /// [etag] This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [labels] Set of labels associated with a TrustConfig.
  /// [location] Optional.
  /// [name] A user-defined name of the trust config. TrustConfig names must be unique globally and match pattern `projects/*/locations/*/trustConfigs/*`.
  /// [project] Optional.
  /// [trustConfigId] Required. A user-provided name of the TrustConfig. Must match the regexp `[a-z0-9-]{1,63}`.
  /// [trustStores] Set of trust stores to perform validation against. This field is supported when TrustConfig is configured with Load Balancers, currently not supported for SPIFFE certificate validation. Only one TrustStore specified is currently allowed.
  TrustConfigArgs({
    String? description,
    String? etag,
    Map<String, String>? labels,
    String? location,
    String? name,
    String? project,
    required String trustConfigId,
    List<TrustStore>? trustStores,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       etag = pulumi.Input.asOptionalInput<String>(etag),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asOptionalInput<String>(location),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       trustConfigId = pulumi.Input.asInput<String>(trustConfigId),
       trustStores = pulumi.Input.asOptionalInput<List<TrustStore>>(
         trustStores,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'etag': ?etag,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'trustConfigId': trustConfigId,
      'trustStores':
          ?pulumi.Input.mapOptionalInputValue<
            List<TrustStore>,
            List<Map<String, dynamic>>
          >(
            trustStores,
            (value) =>
                pulumi.Input.encodeList<TrustStore, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory TrustConfigArgs.fromMap(Map<String, dynamic> map) {
    return TrustConfigArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      trustConfigId: map['trustConfigId'] as String,
      trustStores: map['trustStores'] == null
          ? null
          : pulumi.Input.decodeList<TrustStore>(
              map['trustStores'],
              (value) =>
                  TrustStore.fromMap((value as Map).cast<String, dynamic>()),
            ),
    );
  }
}
