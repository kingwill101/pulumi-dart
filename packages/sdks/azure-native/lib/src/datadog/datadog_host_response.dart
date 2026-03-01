// ignore_for_file: unused_element, unnecessary_cast

import 'datadog_host_metadata_response.dart';

class DatadogHostResponse {
  /// The aliases for the host installed via the Datadog agent.
  final List<String>? aliases;
  /// The Datadog integrations reporting metrics for the host.
  final List<String>? apps;
  final DatadogHostMetadataResponse? meta;
  /// The name of the host.
  final String? name;

  /// Creates a new [DatadogHostResponse].
  /// [aliases] The aliases for the host installed via the Datadog agent.
  /// [apps] The Datadog integrations reporting metrics for the host.
  /// [meta] Optional.
  /// [name] The name of the host.
  DatadogHostResponse({
    this.aliases,
    this.apps,
    this.meta,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliases': ?aliases,
      'apps': ?apps,
      'meta': ?meta == null ? null : meta!.toMap(),
      'name': ?name,
    };
  }

  factory DatadogHostResponse.fromMap(Map<String, dynamic> map) {
    return DatadogHostResponse(
      aliases: map['aliases'] == null ? null : (map['aliases'] as List).cast<String>(),
      apps: map['apps'] == null ? null : (map['apps'] as List).cast<String>(),
      meta: map['meta'] == null ? null : DatadogHostMetadataResponse.fromMap((map['meta'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

