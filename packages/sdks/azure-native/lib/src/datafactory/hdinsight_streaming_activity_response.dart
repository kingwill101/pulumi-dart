// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency_response.dart';
import 'activity_policy_response.dart';
import 'linked_service_reference_response.dart';
import 'user_property_response.dart';

/// HDInsight streaming activity type.
class HDInsightStreamingActivityResponse {
  /// User specified arguments to HDInsightActivity.
  final pulumi.Input<List<dynamic>>? arguments;
  /// Combiner executable name. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? combiner;
  /// Command line environment values.
  final pulumi.Input<List<dynamic>>? commandEnvironment;
  /// Allows user to specify defines for streaming job request.
  final pulumi.Input<Map<String, dynamic>>? defines;
  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependencyResponse>>? dependsOn;
  /// Activity description.
  final pulumi.Input<String>? description;
  /// Linked service reference where the files are located.
  final pulumi.Input<LinkedServiceReferenceResponse>? fileLinkedService;
  /// Paths to streaming job files. Can be directories.
  final pulumi.Input<List<dynamic>> filePaths;
  /// Debug info option.
  final pulumi.Input<String>? getDebugInfo;
  /// Input blob path. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> input;
  /// Linked service reference.
  final pulumi.Input<LinkedServiceReferenceResponse>? linkedServiceName;
  /// Mapper executable name. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> mapper;
  /// Activity name.
  final pulumi.Input<String> name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final pulumi.Input<String>? onInactiveMarkAs;
  /// Output blob path. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> output;
  /// Activity policy.
  final pulumi.Input<ActivityPolicyResponse>? policy;
  /// Reducer executable name. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> reducer;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<String>? state;
  /// Storage linked service references.
  final pulumi.Input<List<LinkedServiceReferenceResponse>>? storageLinkedServices;
  /// Type of activity.
  /// Expected value is 'HDInsightStreaming'.
  final pulumi.Input<String> type;
  /// Activity user properties.
  final pulumi.Input<List<UserPropertyResponse>>? userProperties;

  /// Creates a new [HDInsightStreamingActivityResponse].
  /// [arguments] User specified arguments to HDInsightActivity.
  /// [combiner] Combiner executable name. Type: string (or Expression with resultType string).
  /// [commandEnvironment] Command line environment values.
  /// [defines] Allows user to specify defines for streaming job request.
  /// [dependsOn] Activity depends on condition.
  /// [description] Activity description.
  /// [fileLinkedService] Linked service reference where the files are located.
  /// [filePaths] Paths to streaming job files. Can be directories.
  /// [getDebugInfo] Debug info option.
  /// [input] Input blob path. Type: string (or Expression with resultType string).
  /// [linkedServiceName] Linked service reference.
  /// [mapper] Mapper executable name. Type: string (or Expression with resultType string).
  /// [name] Activity name.
  /// [onInactiveMarkAs] Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  /// [output] Output blob path. Type: string (or Expression with resultType string).
  /// [policy] Activity policy.
  /// [reducer] Reducer executable name. Type: string (or Expression with resultType string).
  /// [state] Activity state. This is an optional property and if not provided, the state will be Active by default.
  /// [storageLinkedServices] Storage linked service references.
  /// [type] Type of activity.
  /// [userProperties] Activity user properties.
  HDInsightStreamingActivityResponse({
    this.arguments,
    this.combiner,
    this.commandEnvironment,
    this.defines,
    this.dependsOn,
    this.description,
    this.fileLinkedService,
    required this.filePaths,
    this.getDebugInfo,
    required this.input,
    this.linkedServiceName,
    required this.mapper,
    required this.name,
    this.onInactiveMarkAs,
    required this.output,
    this.policy,
    required this.reducer,
    this.state,
    this.storageLinkedServices,
    required this.type,
    this.userProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arguments': ?arguments,
      'combiner': ?combiner,
      'commandEnvironment': ?commandEnvironment,
      'defines': ?defines,
      'dependsOn': ?pulumi.Input.mapOptionalInputValue<List<ActivityDependencyResponse>, List<Map<String, dynamic>>>(dependsOn, (value) => pulumi.Input.encodeList<ActivityDependencyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'fileLinkedService': ?pulumi.Input.mapOptionalInputValue<LinkedServiceReferenceResponse, Map<String, dynamic>>(fileLinkedService, (value) => value.toMap()),
      'filePaths': filePaths,
      'getDebugInfo': ?getDebugInfo,
      'input': input,
      'linkedServiceName': ?pulumi.Input.mapOptionalInputValue<LinkedServiceReferenceResponse, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
      'mapper': mapper,
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'output': output,
      'policy': ?pulumi.Input.mapOptionalInputValue<ActivityPolicyResponse, Map<String, dynamic>>(policy, (value) => value.toMap()),
      'reducer': reducer,
      'state': ?state,
      'storageLinkedServices': ?pulumi.Input.mapOptionalInputValue<List<LinkedServiceReferenceResponse>, List<Map<String, dynamic>>>(storageLinkedServices, (value) => pulumi.Input.encodeList<LinkedServiceReferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
      'userProperties': ?pulumi.Input.mapOptionalInputValue<List<UserPropertyResponse>, List<Map<String, dynamic>>>(userProperties, (value) => pulumi.Input.encodeList<UserPropertyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory HDInsightStreamingActivityResponse.fromMap(Map<String, dynamic> map) {
    return HDInsightStreamingActivityResponse(
      arguments: map['arguments'] == null ? null : ((map['arguments'] as List).cast<dynamic>()).input(),
      combiner: map['combiner'] == null ? null : (map['combiner']).input(),
      commandEnvironment: map['commandEnvironment'] == null ? null : ((map['commandEnvironment'] as List).cast<dynamic>()).input(),
      defines: map['defines'] == null ? null : ((map['defines'] as Map).cast<String, dynamic>()).input(),
      dependsOn: map['dependsOn'] == null ? null : (pulumi.Input.decodeList<ActivityDependencyResponse>(map['dependsOn'], (value) => ActivityDependencyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      fileLinkedService: map['fileLinkedService'] == null ? null : (LinkedServiceReferenceResponse.fromMap((map['fileLinkedService'] as Map).cast<String, dynamic>())).input(),
      filePaths: ((map['filePaths'] as List).cast<dynamic>()).input(),
      getDebugInfo: map['getDebugInfo'] == null ? null : (map['getDebugInfo'] as String).input(),
      input: (map['input']).input(),
      linkedServiceName: map['linkedServiceName'] == null ? null : (LinkedServiceReferenceResponse.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>())).input(),
      mapper: (map['mapper']).input(),
      name: (map['name'] as String).input(),
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : (map['onInactiveMarkAs'] as String).input(),
      output: (map['output']).input(),
      policy: map['policy'] == null ? null : (ActivityPolicyResponse.fromMap((map['policy'] as Map).cast<String, dynamic>())).input(),
      reducer: (map['reducer']).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      storageLinkedServices: map['storageLinkedServices'] == null ? null : (pulumi.Input.decodeList<LinkedServiceReferenceResponse>(map['storageLinkedServices'], (value) => LinkedServiceReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: (map['type'] as String).input(),
      userProperties: map['userProperties'] == null ? null : (pulumi.Input.decodeList<UserPropertyResponse>(map['userProperties'], (value) => UserPropertyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

