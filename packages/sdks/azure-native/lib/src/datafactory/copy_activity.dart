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
  final dynamic dataIntegrationUnits;
  /// Activity depends on condition.
  final List<ActivityDependency>? dependsOn;
  /// Activity description.
  final String? description;
  /// Whether to skip incompatible row. Default value is false. Type: boolean (or Expression with resultType boolean).
  final dynamic enableSkipIncompatibleRow;
  /// Specifies whether to copy data via an interim staging. Default value is false. Type: boolean (or Expression with resultType boolean).
  final dynamic enableStaging;
  /// List of inputs for the activity.
  final List<DatasetReference>? inputs;
  /// Linked service reference.
  final LinkedServiceReference? linkedServiceName;
  /// Log settings customer needs provide when enabling log.
  final LogSettings? logSettings;
  /// (Deprecated. Please use LogSettings) Log storage settings customer need to provide when enabling session log.
  final LogStorageSettings? logStorageSettings;
  /// Activity name.
  final String name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final String? onInactiveMarkAs;
  /// List of outputs for the activity.
  final List<DatasetReference>? outputs;
  /// Maximum number of concurrent sessions opened on the source or sink to avoid overloading the data store. Type: integer (or Expression with resultType integer), minimum: 0.
  final dynamic parallelCopies;
  /// Activity policy.
  final ActivityPolicy? policy;
  /// Preserve rules.
  final List<dynamic>? preserve;
  /// Preserve Rules.
  final List<dynamic>? preserveRules;
  /// Redirect incompatible row settings when EnableSkipIncompatibleRow is true.
  final RedirectIncompatibleRowSettings? redirectIncompatibleRowSettings;
  /// Copy activity sink.
  final AvroSink sink;
  /// Specify the fault tolerance for data consistency.
  final SkipErrorFile? skipErrorFile;
  /// Copy activity source.
  final AmazonMWSSource source;
  /// Specifies interim staging settings when EnableStaging is true.
  final StagingSettings? stagingSettings;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final String? state;
  /// Copy activity translator. If not specified, tabular translator is used.
  final dynamic translator;
  /// Type of activity.
  /// Expected value is 'Copy'.
  final String type;
  /// Activity user properties.
  final List<UserProperty>? userProperties;
  /// Whether to enable Data Consistency validation. Type: boolean (or Expression with resultType boolean).
  final dynamic validateDataConsistency;

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
      'dependsOn': ?dependsOn == null ? null : pulumi.Input.encodeList<ActivityDependency, Map<String, dynamic>>(dependsOn!, (value) => value.toMap()),
      'description': ?description,
      'enableSkipIncompatibleRow': ?enableSkipIncompatibleRow,
      'enableStaging': ?enableStaging,
      'inputs': ?inputs == null ? null : pulumi.Input.encodeList<DatasetReference, Map<String, dynamic>>(inputs!, (value) => value.toMap()),
      'linkedServiceName': ?linkedServiceName == null ? null : linkedServiceName!.toMap(),
      'logSettings': ?logSettings == null ? null : logSettings!.toMap(),
      'logStorageSettings': ?logStorageSettings == null ? null : logStorageSettings!.toMap(),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'outputs': ?outputs == null ? null : pulumi.Input.encodeList<DatasetReference, Map<String, dynamic>>(outputs!, (value) => value.toMap()),
      'parallelCopies': ?parallelCopies,
      'policy': ?policy == null ? null : policy!.toMap(),
      'preserve': ?preserve,
      'preserveRules': ?preserveRules,
      'redirectIncompatibleRowSettings': ?redirectIncompatibleRowSettings == null ? null : redirectIncompatibleRowSettings!.toMap(),
      'sink': sink.toMap(),
      'skipErrorFile': ?skipErrorFile == null ? null : skipErrorFile!.toMap(),
      'source': source.toMap(),
      'stagingSettings': ?stagingSettings == null ? null : stagingSettings!.toMap(),
      'state': ?state,
      'translator': ?translator,
      'type': type,
      'userProperties': ?userProperties == null ? null : pulumi.Input.encodeList<UserProperty, Map<String, dynamic>>(userProperties!, (value) => value.toMap()),
      'validateDataConsistency': ?validateDataConsistency,
    };
  }

  factory CopyActivity.fromMap(Map<String, dynamic> map) {
    return CopyActivity(
      dataIntegrationUnits: map['dataIntegrationUnits'] == null ? null : map['dataIntegrationUnits'],
      dependsOn: map['dependsOn'] == null ? null : pulumi.Input.decodeList<ActivityDependency>(map['dependsOn'], (value) => ActivityDependency.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      enableSkipIncompatibleRow: map['enableSkipIncompatibleRow'] == null ? null : map['enableSkipIncompatibleRow'],
      enableStaging: map['enableStaging'] == null ? null : map['enableStaging'],
      inputs: map['inputs'] == null ? null : pulumi.Input.decodeList<DatasetReference>(map['inputs'], (value) => DatasetReference.fromMap((value as Map).cast<String, dynamic>())),
      linkedServiceName: map['linkedServiceName'] == null ? null : LinkedServiceReference.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      logSettings: map['logSettings'] == null ? null : LogSettings.fromMap((map['logSettings'] as Map).cast<String, dynamic>()),
      logStorageSettings: map['logStorageSettings'] == null ? null : LogStorageSettings.fromMap((map['logStorageSettings'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : map['onInactiveMarkAs'] as String,
      outputs: map['outputs'] == null ? null : pulumi.Input.decodeList<DatasetReference>(map['outputs'], (value) => DatasetReference.fromMap((value as Map).cast<String, dynamic>())),
      parallelCopies: map['parallelCopies'] == null ? null : map['parallelCopies'],
      policy: map['policy'] == null ? null : ActivityPolicy.fromMap((map['policy'] as Map).cast<String, dynamic>()),
      preserve: map['preserve'] == null ? null : (map['preserve'] as List).cast<dynamic>(),
      preserveRules: map['preserveRules'] == null ? null : (map['preserveRules'] as List).cast<dynamic>(),
      redirectIncompatibleRowSettings: map['redirectIncompatibleRowSettings'] == null ? null : RedirectIncompatibleRowSettings.fromMap((map['redirectIncompatibleRowSettings'] as Map).cast<String, dynamic>()),
      sink: AvroSink.fromMap((map['sink'] as Map).cast<String, dynamic>()),
      skipErrorFile: map['skipErrorFile'] == null ? null : SkipErrorFile.fromMap((map['skipErrorFile'] as Map).cast<String, dynamic>()),
      source: AmazonMWSSource.fromMap((map['source'] as Map).cast<String, dynamic>()),
      stagingSettings: map['stagingSettings'] == null ? null : StagingSettings.fromMap((map['stagingSettings'] as Map).cast<String, dynamic>()),
      state: map['state'] == null ? null : map['state'] as String,
      translator: map['translator'] == null ? null : map['translator'],
      type: map['type'] as String,
      userProperties: map['userProperties'] == null ? null : pulumi.Input.decodeList<UserProperty>(map['userProperties'], (value) => UserProperty.fromMap((value as Map).cast<String, dynamic>())),
      validateDataConsistency: map['validateDataConsistency'] == null ? null : map['validateDataConsistency'],
    );
  }
}

