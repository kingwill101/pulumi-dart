// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_log_ingestion_ingestion_args_doc}
/// The set of arguments for Ingestion.
/// {@endtemplate}
/// {@macro pulumi_log_ingestion_ingestion_args_doc}
class IngestionArgs {
  /// Ingestion job description.
  final pulumi.Input<String>? description;
  /// The name displayed on the web page.
  final pulumi.Input<String> displayName;
  /// Ingestion job name, it can only contain lowercase letters, numbers, dashes `-` and underscores `_`. It must start and end with lowercase letters or numbers, and the name must be 2 to 128 characters long.
  final pulumi.Input<String> ingestionName;
  /// Task execution interval, support minute `m`, hour `h`, day `d`, for example 30 minutes `30m`.
  final pulumi.Input<String> interval;
  /// The name of the target logstore.
  final pulumi.Input<String> logstore;
  /// The name of the log project. It is the only in one Alicloud account.
  final pulumi.Input<String> project;
  /// Whether to run the ingestion job immediately, if false, wait for an interval before starting the ingestion.
  final pulumi.Input<bool> runImmediately;
  /// Data source and data format details. [Refer to details](https://www.alibabacloud.com/help/en/doc-detail/147819.html).
  final pulumi.Input<String> source;
  /// Which time zone is the log time imported in, e.g. `+0800`.
  final pulumi.Input<String>? timeZone;

  /// Creates a new [IngestionArgs].
  /// [description] Ingestion job description.
  /// [displayName] The name displayed on the web page.
  /// [ingestionName] Ingestion job name, it can only contain lowercase letters, numbers, dashes `-` and underscores `_`. It must start and end with lowercase letters or numbers, and the name must be 2 to 128 characters long.
  /// [interval] Task execution interval, support minute `m`, hour `h`, day `d`, for example 30 minutes `30m`.
  /// [logstore] The name of the target logstore.
  /// [project] The name of the log project. It is the only in one Alicloud account.
  /// [runImmediately] Whether to run the ingestion job immediately, if false, wait for an interval before starting the ingestion.
  /// [source] Data source and data format details. [Refer to details](https://www.alibabacloud.com/help/en/doc-detail/147819.html).
  /// [timeZone] Which time zone is the log time imported in, e.g. `+0800`.
  const IngestionArgs({
    this.description,
    required this.displayName,
    required this.ingestionName,
    required this.interval,
    required this.logstore,
    required this.project,
    required this.runImmediately,
    required this.source,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': displayName,
      'ingestionName': ingestionName,
      'interval': interval,
      'logstore': logstore,
      'project': project,
      'runImmediately': runImmediately,
      'source': source,
      'timeZone': ?timeZone,
    };
  }

  factory IngestionArgs.fromMap(Map<String, dynamic> map) {
    return IngestionArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      ingestionName: pulumi.Input.fromValue(map['ingestionName'] as String),
      interval: pulumi.Input.fromValue(map['interval'] as String),
      logstore: pulumi.Input.fromValue(map['logstore'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
      runImmediately: pulumi.Input.fromValue(map['runImmediately'] as bool),
      source: pulumi.Input.fromValue(map['source'] as String),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

