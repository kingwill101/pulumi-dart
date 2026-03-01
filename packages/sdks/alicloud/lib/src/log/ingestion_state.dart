// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Ingestion resources.
class IngestionState {
  /// Ingestion job description.
  final pulumi.Input<String>? description;
  /// The name displayed on the web page.
  final pulumi.Input<String>? displayName;
  /// Ingestion job name, it can only contain lowercase letters, numbers, dashes `-` and underscores `_`. It must start and end with lowercase letters or numbers, and the name must be 2 to 128 characters long.
  final pulumi.Input<String>? ingestionName;
  /// Task execution interval, support minute `m`, hour `h`, day `d`, for example 30 minutes `30m`.
  final pulumi.Input<String>? interval;
  /// The name of the target logstore.
  final pulumi.Input<String>? logstore;
  /// The name of the log project. It is the only in one Alicloud account.
  final pulumi.Input<String>? project;
  /// Whether to run the ingestion job immediately, if false, wait for an interval before starting the ingestion.
  final pulumi.Input<bool>? runImmediately;
  /// Data source and data format details. [Refer to details](https://www.alibabacloud.com/help/en/doc-detail/147819.html).
  final pulumi.Input<String>? source;
  /// Which time zone is the log time imported in, e.g. `+0800`.
  final pulumi.Input<String>? timeZone;

  /// Creates a new [IngestionState].
  /// [description] Ingestion job description.
  /// [displayName] The name displayed on the web page.
  /// [ingestionName] Ingestion job name, it can only contain lowercase letters, numbers, dashes `-` and underscores `_`. It must start and end with lowercase letters or numbers, and the name must be 2 to 128 characters long.
  /// [interval] Task execution interval, support minute `m`, hour `h`, day `d`, for example 30 minutes `30m`.
  /// [logstore] The name of the target logstore.
  /// [project] The name of the log project. It is the only in one Alicloud account.
  /// [runImmediately] Whether to run the ingestion job immediately, if false, wait for an interval before starting the ingestion.
  /// [source] Data source and data format details. [Refer to details](https://www.alibabacloud.com/help/en/doc-detail/147819.html).
  /// [timeZone] Which time zone is the log time imported in, e.g. `+0800`.
  IngestionState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? ingestionName,
    pulumi.Output<String>? interval,
    pulumi.Output<String>? logstore,
    pulumi.Output<String>? project,
    pulumi.Output<bool>? runImmediately,
    pulumi.Output<String>? source,
    pulumi.Output<String>? timeZone,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      ingestionName = pulumi.Input.asOptionalInput<String>(ingestionName),
      interval = pulumi.Input.asOptionalInput<String>(interval),
      logstore = pulumi.Input.asOptionalInput<String>(logstore),
      project = pulumi.Input.asOptionalInput<String>(project),
      runImmediately = pulumi.Input.asOptionalInput<bool>(runImmediately),
      source = pulumi.Input.asOptionalInput<String>(source),
      timeZone = pulumi.Input.asOptionalInput<String>(timeZone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'ingestionName': ?ingestionName,
      'interval': ?interval,
      'logstore': ?logstore,
      'project': ?project,
      'runImmediately': ?runImmediately,
      'source': ?source,
      'timeZone': ?timeZone,
    };
  }

  factory IngestionState.fromMap(Map<String, dynamic> map) {
    return IngestionState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      ingestionName: map['ingestionName'] == null ? null : pulumi.Output.create<String>(map['ingestionName'] as String),
      interval: map['interval'] == null ? null : pulumi.Output.create<String>(map['interval'] as String),
      logstore: map['logstore'] == null ? null : pulumi.Output.create<String>(map['logstore'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      runImmediately: map['runImmediately'] == null ? null : pulumi.Output.create<bool>(map['runImmediately'] as bool),
      source: map['source'] == null ? null : pulumi.Output.create<String>(map['source'] as String),
      timeZone: map['timeZone'] == null ? null : pulumi.Output.create<String>(map['timeZone'] as String),
    );
  }
}

