// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_sink_bigquery_option/get_sink_bigquery_option.dart';
import '../get_sink_exclusion/get_sink_exclusion.dart';

/// Result data returned by getSink.
class GetSinkResult {
  /// Options that affect sinks exporting data to BigQuery. Structure is documented below.
  final List<GetSinkBigqueryOption> bigqueryOptions;

  /// A description of this exclusion.
  final String description;

  /// The destination of the sink (or, in other words, where logs are written to).
  final String destination;

  /// Whether this exclusion is disabled and it does not exclude any log entries.
  final bool disabled;

  /// Log entries that match any of the exclusion filters are not exported. Structure is documented below.
  final List<GetSinkExclusion> exclusions;

  /// An advanced logs filter that matches the log entries to be excluded.
  final String filter;
  final String id;

  /// A client-assigned identifier, such as `load-balancer-exclusion`.
  final String name;

  /// The identity associated with this sink. This identity must be granted write access to the configured <span pulumi-lang-nodejs="`destination`" pulumi-lang-dotnet="`Destination`" pulumi-lang-go="`destination`" pulumi-lang-python="`destination`" pulumi-lang-yaml="`destination`" pulumi-lang-java="`destination`">`destination`</span>.
  final String writerIdentity;

  GetSinkResult({
    required this.bigqueryOptions,
    required this.description,
    required this.destination,
    required this.disabled,
    required this.exclusions,
    required this.filter,
    required this.id,
    required this.name,
    required this.writerIdentity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bigqueryOptions'] =
        Input.encodeList<GetSinkBigqueryOption, Map<String, dynamic>>(
            bigqueryOptions, (value) => value.toMap());
    map['description'] = description;
    map['destination'] = destination;
    map['disabled'] = disabled;
    map['exclusions'] =
        Input.encodeList<GetSinkExclusion, Map<String, dynamic>>(
            exclusions, (value) => value.toMap());
    map['filter'] = filter;
    map['id'] = id;
    map['name'] = name;
    map['writerIdentity'] = writerIdentity;
    return map;
  }

  factory GetSinkResult.fromMap(Map<String, dynamic> map) {
    return GetSinkResult(
      bigqueryOptions: Input.decodeList<GetSinkBigqueryOption>(
          map['bigqueryOptions'],
          (value) => GetSinkBigqueryOption.fromMap(
              (value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      destination: map['destination'] as String,
      disabled: map['disabled'] as bool,
      exclusions: Input.decodeList<GetSinkExclusion>(
          map['exclusions'],
          (value) =>
              GetSinkExclusion.fromMap((value as Map).cast<String, dynamic>())),
      filter: map['filter'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      writerIdentity: map['writerIdentity'] as String,
    );
  }
}
