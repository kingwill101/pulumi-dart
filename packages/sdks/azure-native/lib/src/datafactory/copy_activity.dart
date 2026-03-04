// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency.dart';
import 'activity_policy.dart';
import 'amazon_mwssource.dart';
import 'avro_sink.dart';
import 'dataset_reference.dart';
import 'linked_service_reference.dart';
import 'log_settings.dart';
import 'log_storage_settings.dart';
import 'redirect_incompatible_row_settings.dart';
import 'skip_error_file.dart';
import 'staging_settings.dart';
import 'user_property.dart';

/// Copy activity.
class CopyActivity {
  /// Maximum number of data integration units that can be used to perform this data movement. Type: integer (or Expression with resultType integer), minimum: 0.
  final pulumi.Input<dynamic>? dataIntegrationUnits;

  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependency>>? dependsOn;

  /// Activity description.
  final pulumi.Input<String>? description;

  /// Whether to skip incompatible row. Default value is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? enableSkipIncompatibleRow;

  /// Specifies whether to copy data via an interim staging. Default value is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? enableStaging;

  /// List of inputs for the activity.
  final pulumi.Input<List<DatasetReference>>? inputs;

  /// Linked service reference.
  final pulumi.Input<LinkedServiceReference>? linkedServiceName;

  /// Log settings customer needs provide when enabling log.
  final pulumi.Input<LogSettings>? logSettings;

  /// (Deprecated. Please use LogSettings) Log storage settings customer need to provide when enabling session log.
  final pulumi.Input<LogStorageSettings>? logStorageSettings;

  /// Activity name.
  final pulumi.Input<String> name;

  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final pulumi.Input<String>? onInactiveMarkAs;

  /// List of outputs for the activity.
  final pulumi.Input<List<DatasetReference>>? outputs;

  /// Maximum number of concurrent sessions opened on the source or sink to avoid overloading the data store. Type: integer (or Expression with resultType integer), minimum: 0.
  final pulumi.Input<dynamic>? parallelCopies;

  /// Activity policy.
  final pulumi.Input<ActivityPolicy>? policy;

  /// Preserve rules.
  final pulumi.Input<List<dynamic>>? preserve;

  /// Preserve Rules.
  final pulumi.Input<List<dynamic>>? preserveRules;

  /// Redirect incompatible row settings when EnableSkipIncompatibleRow is true.
  final pulumi.Input<RedirectIncompatibleRowSettings>?
  redirectIncompatibleRowSettings;

  /// Copy activity sink.
  final pulumi.Input<AvroSink> sink;

  /// Specify the fault tolerance for data consistency.
  final pulumi.Input<SkipErrorFile>? skipErrorFile;

  /// Copy activity source.
  final pulumi.Input<AmazonMWSSource> source;

  /// Specifies interim staging settings when EnableStaging is true.
  final pulumi.Input<StagingSettings>? stagingSettings;

  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<String>? state;

  /// Copy activity translator. If not specified, tabular translator is used.
  final pulumi.Input<dynamic>? translator;

  /// Type of activity.
  /// Expected value is 'Copy'.
  final pulumi.Input<String> type;

  /// Activity user properties.
  final pulumi.Input<List<UserProperty>>? userProperties;

  /// Whether to enable Data Consistency validation. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? validateDataConsistency;

  /// Creates a new [CopyActivity].
  /// [dataIntegrationUnits] Maximum number of data integration units that can be used to perform this data movement. Type: integer (or Expression with resultType integer), minimum: 0.
  /// [dependsOn] Activity depends on condition.
  /// [description] Activity description.
  /// [enableSkipIncompatibleRow] Whether to skip incompatible row. Default value is false. Type: boolean (or Expression with resultType boolean).
  /// [enableStaging] Specifies whether to copy data via an interim staging. Default value is false. Type: boolean (or Expression with resultType boolean).
  /// [inputs] List of inputs for the activity.
  /// [linkedServiceName] Linked service reference.
  /// [logSettings] Log settings customer needs provide when enabling log.
  /// [logStorageSettings] (Deprecated. Please use LogSettings) Log storage settings customer need to provide when enabling session log.
  /// [name] Activity name.
  /// [onInactiveMarkAs] Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  /// [outputs] List of outputs for the activity.
  /// [parallelCopies] Maximum number of concurrent sessions opened on the source or sink to avoid overloading the data store. Type: integer (or Expression with resultType integer), minimum: 0.
  /// [policy] Activity policy.
  /// [preserve] Preserve rules.
  /// [preserveRules] Preserve Rules.
  /// [redirectIncompatibleRowSettings] Redirect incompatible row settings when EnableSkipIncompatibleRow is true.
  /// [sink] Copy activity sink.
  /// [skipErrorFile] Specify the fault tolerance for data consistency.
  /// [source] Copy activity source.
  /// [stagingSettings] Specifies interim staging settings when EnableStaging is true.
  /// [state] Activity state. This is an optional property and if not provided, the state will be Active by default.
  /// [translator] Copy activity translator. If not specified, tabular translator is used.
  /// [type] Type of activity.
  /// [userProperties] Activity user properties.
  /// [validateDataConsistency] Whether to enable Data Consistency validation. Type: boolean (or Expression with resultType boolean).
  CopyActivity({
    this.dataIntegrationUnits,
    this.dependsOn,
    this.description,
    this.enableSkipIncompatibleRow,
    this.enableStaging,
    this.inputs,
    this.linkedServiceName,
    this.logSettings,
    this.logStorageSettings,
    required this.name,
    this.onInactiveMarkAs,
    this.outputs,
    this.parallelCopies,
    this.policy,
    this.preserve,
    this.preserveRules,
    this.redirectIncompatibleRowSettings,
    required this.sink,
    this.skipErrorFile,
    required this.source,
    this.stagingSettings,
    this.state,
    this.translator,
    required this.type,
    this.userProperties,
    this.validateDataConsistency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataIntegrationUnits': ?dataIntegrationUnits,
      'dependsOn':
          ?pulumi.Input.mapOptionalInputValue<
            List<ActivityDependency>,
            List<Map<String, dynamic>>
          >(
            dependsOn,
            (value) =>
                pulumi.Input.encodeList<
                  ActivityDependency,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'description': ?description,
      'enableSkipIncompatibleRow': ?enableSkipIncompatibleRow,
      'enableStaging': ?enableStaging,
      'inputs':
          ?pulumi.Input.mapOptionalInputValue<
            List<DatasetReference>,
            List<Map<String, dynamic>>
          >(
            inputs,
            (value) =>
                pulumi.Input.encodeList<DatasetReference, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'linkedServiceName':
          ?pulumi.Input.mapOptionalInputValue<
            LinkedServiceReference,
            Map<String, dynamic>
          >(linkedServiceName, (value) => value.toMap()),
      'logSettings':
          ?pulumi.Input.mapOptionalInputValue<
            LogSettings,
            Map<String, dynamic>
          >(logSettings, (value) => value.toMap()),
      'logStorageSettings':
          ?pulumi.Input.mapOptionalInputValue<
            LogStorageSettings,
            Map<String, dynamic>
          >(logStorageSettings, (value) => value.toMap()),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'outputs':
          ?pulumi.Input.mapOptionalInputValue<
            List<DatasetReference>,
            List<Map<String, dynamic>>
          >(
            outputs,
            (value) =>
                pulumi.Input.encodeList<DatasetReference, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'parallelCopies': ?parallelCopies,
      'policy':
          ?pulumi.Input.mapOptionalInputValue<
            ActivityPolicy,
            Map<String, dynamic>
          >(policy, (value) => value.toMap()),
      'preserve': ?preserve,
      'preserveRules': ?preserveRules,
      'redirectIncompatibleRowSettings':
          ?pulumi.Input.mapOptionalInputValue<
            RedirectIncompatibleRowSettings,
            Map<String, dynamic>
          >(redirectIncompatibleRowSettings, (value) => value.toMap()),
      'sink': pulumi.Input.mapInputValue<AvroSink, Map<String, dynamic>>(
        sink,
        (value) => value.toMap(),
      ),
      'skipErrorFile':
          ?pulumi.Input.mapOptionalInputValue<
            SkipErrorFile,
            Map<String, dynamic>
          >(skipErrorFile, (value) => value.toMap()),
      'source':
          pulumi.Input.mapInputValue<AmazonMWSSource, Map<String, dynamic>>(
            source,
            (value) => value.toMap(),
          ),
      'stagingSettings':
          ?pulumi.Input.mapOptionalInputValue<
            StagingSettings,
            Map<String, dynamic>
          >(stagingSettings, (value) => value.toMap()),
      'state': ?state,
      'translator': ?translator,
      'type': type,
      'userProperties':
          ?pulumi.Input.mapOptionalInputValue<
            List<UserProperty>,
            List<Map<String, dynamic>>
          >(
            userProperties,
            (value) =>
                pulumi.Input.encodeList<UserProperty, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'validateDataConsistency': ?validateDataConsistency,
    };
  }

  factory CopyActivity.fromMap(Map<String, dynamic> map) {
    return CopyActivity(
      dataIntegrationUnits: (() {
        final guardedValue = map['dataIntegrationUnits'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      dependsOn: (() {
        final guardedValue = map['dependsOn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ActivityDependency>(
            guardedValue,
            (value) => ActivityDependency.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enableSkipIncompatibleRow: (() {
        final guardedValue = map['enableSkipIncompatibleRow'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      enableStaging: (() {
        final guardedValue = map['enableStaging'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      inputs: (() {
        final guardedValue = map['inputs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DatasetReference>(
            guardedValue,
            (value) => DatasetReference.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      linkedServiceName: (() {
        final guardedValue = map['linkedServiceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LinkedServiceReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      logSettings: (() {
        final guardedValue = map['logSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LogSettings.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      logStorageSettings: (() {
        final guardedValue = map['logStorageSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LogStorageSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      onInactiveMarkAs: (() {
        final guardedValue = map['onInactiveMarkAs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputs: (() {
        final guardedValue = map['outputs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DatasetReference>(
            guardedValue,
            (value) => DatasetReference.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      parallelCopies: (() {
        final guardedValue = map['parallelCopies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      policy: (() {
        final guardedValue = map['policy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ActivityPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      preserve: (() {
        final guardedValue = map['preserve'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>());
      })(),
      preserveRules: (() {
        final guardedValue = map['preserveRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>());
      })(),
      redirectIncompatibleRowSettings: (() {
        final guardedValue = map['redirectIncompatibleRowSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RedirectIncompatibleRowSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sink: pulumi.Input.fromValue(
        AvroSink.fromMap((map['sink']! as Map).cast<String, dynamic>()),
      ),
      skipErrorFile: (() {
        final guardedValue = map['skipErrorFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SkipErrorFile.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      source: pulumi.Input.fromValue(
        AmazonMWSSource.fromMap(
          (map['source']! as Map).cast<String, dynamic>(),
        ),
      ),
      stagingSettings: (() {
        final guardedValue = map['stagingSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          StagingSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      translator: (() {
        final guardedValue = map['translator'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      userProperties: (() {
        final guardedValue = map['userProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<UserProperty>(
            guardedValue,
            (value) =>
                UserProperty.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      validateDataConsistency: (() {
        final guardedValue = map['validateDataConsistency'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
    );
  }
}
