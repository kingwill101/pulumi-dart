// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency_response.dart';
import 'activity_policy_response.dart';
import 'amazon_mwssource_response.dart';
import 'avro_sink_response.dart';
import 'dataset_reference_response.dart';
import 'linked_service_reference_response.dart';
import 'log_settings_response.dart';
import 'log_storage_settings_response.dart';
import 'redirect_incompatible_row_settings_response.dart';
import 'skip_error_file_response.dart';
import 'staging_settings_response.dart';
import 'user_property_response.dart';

/// Copy activity.
class CopyActivityResponse {
  /// Maximum number of data integration units that can be used to perform this data movement. Type: integer (or Expression with resultType integer), minimum: 0.
  final pulumi.Input<dynamic>? dataIntegrationUnits;
  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependencyResponse>>? dependsOn;
  /// Activity description.
  final pulumi.Input<String>? description;
  /// Whether to skip incompatible row. Default value is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? enableSkipIncompatibleRow;
  /// Specifies whether to copy data via an interim staging. Default value is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? enableStaging;
  /// List of inputs for the activity.
  final pulumi.Input<List<DatasetReferenceResponse>>? inputs;
  /// Linked service reference.
  final pulumi.Input<LinkedServiceReferenceResponse>? linkedServiceName;
  /// Log settings customer needs provide when enabling log.
  final pulumi.Input<LogSettingsResponse>? logSettings;
  /// (Deprecated. Please use LogSettings) Log storage settings customer need to provide when enabling session log.
  final pulumi.Input<LogStorageSettingsResponse>? logStorageSettings;
  /// Activity name.
  final pulumi.Input<String> name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final pulumi.Input<String>? onInactiveMarkAs;
  /// List of outputs for the activity.
  final pulumi.Input<List<DatasetReferenceResponse>>? outputs;
  /// Maximum number of concurrent sessions opened on the source or sink to avoid overloading the data store. Type: integer (or Expression with resultType integer), minimum: 0.
  final pulumi.Input<dynamic>? parallelCopies;
  /// Activity policy.
  final pulumi.Input<ActivityPolicyResponse>? policy;
  /// Preserve rules.
  final pulumi.Input<List<dynamic>>? preserve;
  /// Preserve Rules.
  final pulumi.Input<List<dynamic>>? preserveRules;
  /// Redirect incompatible row settings when EnableSkipIncompatibleRow is true.
  final pulumi.Input<RedirectIncompatibleRowSettingsResponse>? redirectIncompatibleRowSettings;
  /// Copy activity sink.
  final pulumi.Input<AvroSinkResponse> sink;
  /// Specify the fault tolerance for data consistency.
  final pulumi.Input<SkipErrorFileResponse>? skipErrorFile;
  /// Copy activity source.
  final pulumi.Input<AmazonMWSSourceResponse> source;
  /// Specifies interim staging settings when EnableStaging is true.
  final pulumi.Input<StagingSettingsResponse>? stagingSettings;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<String>? state;
  /// Copy activity translator. If not specified, tabular translator is used.
  final pulumi.Input<dynamic>? translator;
  /// Type of activity.
  /// Expected value is 'Copy'.
  final pulumi.Input<String> type;
  /// Activity user properties.
  final pulumi.Input<List<UserPropertyResponse>>? userProperties;
  /// Whether to enable Data Consistency validation. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? validateDataConsistency;

  /// Creates a new [CopyActivityResponse].
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
  CopyActivityResponse({
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
      'dependsOn': ?pulumi.Input.mapOptionalInputValue<List<ActivityDependencyResponse>, List<Map<String, dynamic>>>(dependsOn, (value) => pulumi.Input.encodeList<ActivityDependencyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'enableSkipIncompatibleRow': ?enableSkipIncompatibleRow,
      'enableStaging': ?enableStaging,
      'inputs': ?pulumi.Input.mapOptionalInputValue<List<DatasetReferenceResponse>, List<Map<String, dynamic>>>(inputs, (value) => pulumi.Input.encodeList<DatasetReferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'linkedServiceName': ?pulumi.Input.mapOptionalInputValue<LinkedServiceReferenceResponse, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
      'logSettings': ?pulumi.Input.mapOptionalInputValue<LogSettingsResponse, Map<String, dynamic>>(logSettings, (value) => value.toMap()),
      'logStorageSettings': ?pulumi.Input.mapOptionalInputValue<LogStorageSettingsResponse, Map<String, dynamic>>(logStorageSettings, (value) => value.toMap()),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'outputs': ?pulumi.Input.mapOptionalInputValue<List<DatasetReferenceResponse>, List<Map<String, dynamic>>>(outputs, (value) => pulumi.Input.encodeList<DatasetReferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parallelCopies': ?parallelCopies,
      'policy': ?pulumi.Input.mapOptionalInputValue<ActivityPolicyResponse, Map<String, dynamic>>(policy, (value) => value.toMap()),
      'preserve': ?preserve,
      'preserveRules': ?preserveRules,
      'redirectIncompatibleRowSettings': ?pulumi.Input.mapOptionalInputValue<RedirectIncompatibleRowSettingsResponse, Map<String, dynamic>>(redirectIncompatibleRowSettings, (value) => value.toMap()),
      'sink': pulumi.Input.mapInputValue<AvroSinkResponse, Map<String, dynamic>>(sink, (value) => value.toMap()),
      'skipErrorFile': ?pulumi.Input.mapOptionalInputValue<SkipErrorFileResponse, Map<String, dynamic>>(skipErrorFile, (value) => value.toMap()),
      'source': pulumi.Input.mapInputValue<AmazonMWSSourceResponse, Map<String, dynamic>>(source, (value) => value.toMap()),
      'stagingSettings': ?pulumi.Input.mapOptionalInputValue<StagingSettingsResponse, Map<String, dynamic>>(stagingSettings, (value) => value.toMap()),
      'state': ?state,
      'translator': ?translator,
      'type': type,
      'userProperties': ?pulumi.Input.mapOptionalInputValue<List<UserPropertyResponse>, List<Map<String, dynamic>>>(userProperties, (value) => pulumi.Input.encodeList<UserPropertyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'validateDataConsistency': ?validateDataConsistency,
    };
  }

  factory CopyActivityResponse.fromMap(Map<String, dynamic> map) {
    return CopyActivityResponse(
      dataIntegrationUnits: map['dataIntegrationUnits'] == null ? null : (map['dataIntegrationUnits']).input(),
      dependsOn: map['dependsOn'] == null ? null : (pulumi.Input.decodeList<ActivityDependencyResponse>(map['dependsOn'], (value) => ActivityDependencyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      enableSkipIncompatibleRow: map['enableSkipIncompatibleRow'] == null ? null : (map['enableSkipIncompatibleRow']).input(),
      enableStaging: map['enableStaging'] == null ? null : (map['enableStaging']).input(),
      inputs: map['inputs'] == null ? null : (pulumi.Input.decodeList<DatasetReferenceResponse>(map['inputs'], (value) => DatasetReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      linkedServiceName: map['linkedServiceName'] == null ? null : (LinkedServiceReferenceResponse.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>())).input(),
      logSettings: map['logSettings'] == null ? null : (LogSettingsResponse.fromMap((map['logSettings'] as Map).cast<String, dynamic>())).input(),
      logStorageSettings: map['logStorageSettings'] == null ? null : (LogStorageSettingsResponse.fromMap((map['logStorageSettings'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : (map['onInactiveMarkAs'] as String).input(),
      outputs: map['outputs'] == null ? null : (pulumi.Input.decodeList<DatasetReferenceResponse>(map['outputs'], (value) => DatasetReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      parallelCopies: map['parallelCopies'] == null ? null : (map['parallelCopies']).input(),
      policy: map['policy'] == null ? null : (ActivityPolicyResponse.fromMap((map['policy'] as Map).cast<String, dynamic>())).input(),
      preserve: map['preserve'] == null ? null : ((map['preserve'] as List).cast<dynamic>()).input(),
      preserveRules: map['preserveRules'] == null ? null : ((map['preserveRules'] as List).cast<dynamic>()).input(),
      redirectIncompatibleRowSettings: map['redirectIncompatibleRowSettings'] == null ? null : (RedirectIncompatibleRowSettingsResponse.fromMap((map['redirectIncompatibleRowSettings'] as Map).cast<String, dynamic>())).input(),
      sink: (AvroSinkResponse.fromMap((map['sink'] as Map).cast<String, dynamic>())).input(),
      skipErrorFile: map['skipErrorFile'] == null ? null : (SkipErrorFileResponse.fromMap((map['skipErrorFile'] as Map).cast<String, dynamic>())).input(),
      source: (AmazonMWSSourceResponse.fromMap((map['source'] as Map).cast<String, dynamic>())).input(),
      stagingSettings: map['stagingSettings'] == null ? null : (StagingSettingsResponse.fromMap((map['stagingSettings'] as Map).cast<String, dynamic>())).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      translator: map['translator'] == null ? null : (map['translator']).input(),
      type: (map['type'] as String).input(),
      userProperties: map['userProperties'] == null ? null : (pulumi.Input.decodeList<UserPropertyResponse>(map['userProperties'], (value) => UserPropertyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      validateDataConsistency: map['validateDataConsistency'] == null ? null : (map['validateDataConsistency']).input(),
    );
  }
}

