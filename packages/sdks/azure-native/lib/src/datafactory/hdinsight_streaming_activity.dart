// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency.dart';
import 'activity_policy.dart';
import 'linked_service_reference.dart';
import 'user_property.dart';

/// HDInsight streaming activity type.
class HDInsightStreamingActivity {
  /// User specified arguments to HDInsightActivity.
  final List<dynamic>? arguments;
  /// Combiner executable name. Type: string (or Expression with resultType string).
  final dynamic combiner;
  /// Command line environment values.
  final List<dynamic>? commandEnvironment;
  /// Allows user to specify defines for streaming job request.
  final Map<String, dynamic>? defines;
  /// Activity depends on condition.
  final List<ActivityDependency>? dependsOn;
  /// Activity description.
  final String? description;
  /// Linked service reference where the files are located.
  final LinkedServiceReference? fileLinkedService;
  /// Paths to streaming job files. Can be directories.
  final List<dynamic> filePaths;
  /// Debug info option.
  final String? getDebugInfo;
  /// Input blob path. Type: string (or Expression with resultType string).
  final dynamic input;
  /// Linked service reference.
  final LinkedServiceReference? linkedServiceName;
  /// Mapper executable name. Type: string (or Expression with resultType string).
  final dynamic mapper;
  /// Activity name.
  final String name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final String? onInactiveMarkAs;
  /// Output blob path. Type: string (or Expression with resultType string).
  final dynamic output;
  /// Activity policy.
  final ActivityPolicy? policy;
  /// Reducer executable name. Type: string (or Expression with resultType string).
  final dynamic reducer;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final String? state;
  /// Storage linked service references.
  final List<LinkedServiceReference>? storageLinkedServices;
  /// Type of activity.
  /// Expected value is 'HDInsightStreaming'.
  final String type;
  /// Activity user properties.
  final List<UserProperty>? userProperties;

  /// Creates a new [HDInsightStreamingActivity].
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
  HDInsightStreamingActivity({
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
      'dependsOn': ?dependsOn == null ? null : pulumi.Input.encodeList<ActivityDependency, Map<String, dynamic>>(dependsOn!, (value) => value.toMap()),
      'description': ?description,
      'fileLinkedService': ?fileLinkedService == null ? null : fileLinkedService!.toMap(),
      'filePaths': filePaths,
      'getDebugInfo': ?getDebugInfo,
      'input': input,
      'linkedServiceName': ?linkedServiceName == null ? null : linkedServiceName!.toMap(),
      'mapper': mapper,
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'output': output,
      'policy': ?policy == null ? null : policy!.toMap(),
      'reducer': reducer,
      'state': ?state,
      'storageLinkedServices': ?storageLinkedServices == null ? null : pulumi.Input.encodeList<LinkedServiceReference, Map<String, dynamic>>(storageLinkedServices!, (value) => value.toMap()),
      'type': type,
      'userProperties': ?userProperties == null ? null : pulumi.Input.encodeList<UserProperty, Map<String, dynamic>>(userProperties!, (value) => value.toMap()),
    };
  }

  factory HDInsightStreamingActivity.fromMap(Map<String, dynamic> map) {
    return HDInsightStreamingActivity(
      arguments: map['arguments'] == null ? null : (map['arguments'] as List).cast<dynamic>(),
      combiner: map['combiner'] == null ? null : map['combiner'],
      commandEnvironment: map['commandEnvironment'] == null ? null : (map['commandEnvironment'] as List).cast<dynamic>(),
      defines: map['defines'] == null ? null : (map['defines'] as Map).cast<String, dynamic>(),
      dependsOn: map['dependsOn'] == null ? null : pulumi.Input.decodeList<ActivityDependency>(map['dependsOn'], (value) => ActivityDependency.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      fileLinkedService: map['fileLinkedService'] == null ? null : LinkedServiceReference.fromMap((map['fileLinkedService'] as Map).cast<String, dynamic>()),
      filePaths: (map['filePaths'] as List).cast<dynamic>(),
      getDebugInfo: map['getDebugInfo'] == null ? null : map['getDebugInfo'] as String,
      input: map['input'],
      linkedServiceName: map['linkedServiceName'] == null ? null : LinkedServiceReference.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      mapper: map['mapper'],
      name: map['name'] as String,
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : map['onInactiveMarkAs'] as String,
      output: map['output'],
      policy: map['policy'] == null ? null : ActivityPolicy.fromMap((map['policy'] as Map).cast<String, dynamic>()),
      reducer: map['reducer'],
      state: map['state'] == null ? null : map['state'] as String,
      storageLinkedServices: map['storageLinkedServices'] == null ? null : pulumi.Input.decodeList<LinkedServiceReference>(map['storageLinkedServices'], (value) => LinkedServiceReference.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
      userProperties: map['userProperties'] == null ? null : pulumi.Input.decodeList<UserProperty>(map['userProperties'], (value) => UserProperty.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

