// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'datadog_host_metadata_response.dart';

class DatadogHostResponse {
  /// The aliases for the host installed via the Datadog agent.
  final pulumi.Input<List<String>>? aliases;
  /// The Datadog integrations reporting metrics for the host.
  final pulumi.Input<List<String>>? apps;
  final pulumi.Input<DatadogHostMetadataResponse>? meta;
  /// The name of the host.
  final pulumi.Input<String>? name;

  /// Creates a new [DatadogHostResponse].
  /// [aliases] The aliases for the host installed via the Datadog agent.
  /// [apps] The Datadog integrations reporting metrics for the host.
  /// [meta] Optional.
  /// [name] The name of the host.
  const DatadogHostResponse({
    this.aliases,
    this.apps,
    this.meta,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliases': ?aliases,
      'apps': ?apps,
      'meta': ?pulumi.Input.mapOptionalInputValue<DatadogHostMetadataResponse, Map<String, dynamic>>(meta, (value) => value.toMap()),
      'name': ?name,
    };
  }

  factory DatadogHostResponse.fromMap(Map<String, dynamic> map) {
    return DatadogHostResponse(
      aliases: (() { final guardedValue = map['aliases']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      apps: (() { final guardedValue = map['apps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      meta: (() { final guardedValue = map['meta']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatadogHostMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

