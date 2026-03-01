// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency_response.dart';
import 'activity_policy_response.dart';
import 'linked_service_reference_response.dart';
import 'user_property_response.dart';

/// HDInsight Hive activity type.
class HDInsightHiveActivityResponse {
  /// User specified arguments to HDInsightActivity.
  final List<dynamic>? arguments;
  /// Allows user to specify defines for Hive job request.
  final Map<String, dynamic>? defines;
  /// Activity depends on condition.
  final List<ActivityDependencyResponse>? dependsOn;
  /// Activity description.
  final String? description;
  /// Debug info option.
  final String? getDebugInfo;
  /// Linked service reference.
  final LinkedServiceReferenceResponse? linkedServiceName;
  /// Activity name.
  final String name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final String? onInactiveMarkAs;
  /// Activity policy.
  final ActivityPolicyResponse? policy;
  /// Query timeout value (in minutes).  Effective when the HDInsight cluster is with ESP (Enterprise Security Package)
  final int? queryTimeout;
  /// Script linked service reference.
  final LinkedServiceReferenceResponse? scriptLinkedService;
  /// Script path. Type: string (or Expression with resultType string).
  final dynamic scriptPath;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final String? state;
  /// Storage linked service references.
  final List<LinkedServiceReferenceResponse>? storageLinkedServices;
  /// Type of activity.
  /// Expected value is 'HDInsightHive'.
  final String type;
  /// Activity user properties.
  final List<UserPropertyResponse>? userProperties;
  /// User specified arguments under hivevar namespace.
  final Map<String, dynamic>? variables;

  /// Creates a new [HDInsightHiveActivityResponse].
  /// [arguments] User specified arguments to HDInsightActivity.
  /// [defines] Allows user to specify defines for Hive job request.
  /// [dependsOn] Activity depends on condition.
  /// [description] Activity description.
  /// [getDebugInfo] Debug info option.
  /// [linkedServiceName] Linked service reference.
  /// [name] Activity name.
  /// [onInactiveMarkAs] Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  /// [policy] Activity policy.
  /// [queryTimeout] Query timeout value (in minutes).  Effective when the HDInsight cluster is with ESP (Enterprise Security Package)
  /// [scriptLinkedService] Script linked service reference.
  /// [scriptPath] Script path. Type: string (or Expression with resultType string).
  /// [state] Activity state. This is an optional property and if not provided, the state will be Active by default.
  /// [storageLinkedServices] Storage linked service references.
  /// [type] Type of activity.
  /// [userProperties] Activity user properties.
  /// [variables] User specified arguments under hivevar namespace.
  HDInsightHiveActivityResponse({
    this.arguments,
    this.defines,
    this.dependsOn,
    this.description,
    this.getDebugInfo,
    this.linkedServiceName,
    required this.name,
    this.onInactiveMarkAs,
    this.policy,
    this.queryTimeout,
    this.scriptLinkedService,
    this.scriptPath,
    this.state,
    this.storageLinkedServices,
    required this.type,
    this.userProperties,
    this.variables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arguments': ?arguments,
      'defines': ?defines,
      'dependsOn': ?dependsOn == null ? null : pulumi.Input.encodeList<ActivityDependencyResponse, Map<String, dynamic>>(dependsOn!, (value) => value.toMap()),
      'description': ?description,
      'getDebugInfo': ?getDebugInfo,
      'linkedServiceName': ?linkedServiceName == null ? null : linkedServiceName!.toMap(),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy': ?policy == null ? null : policy!.toMap(),
      'queryTimeout': ?queryTimeout,
      'scriptLinkedService': ?scriptLinkedService == null ? null : scriptLinkedService!.toMap(),
      'scriptPath': ?scriptPath,
      'state': ?state,
      'storageLinkedServices': ?storageLinkedServices == null ? null : pulumi.Input.encodeList<LinkedServiceReferenceResponse, Map<String, dynamic>>(storageLinkedServices!, (value) => value.toMap()),
      'type': type,
      'userProperties': ?userProperties == null ? null : pulumi.Input.encodeList<UserPropertyResponse, Map<String, dynamic>>(userProperties!, (value) => value.toMap()),
      'variables': ?variables,
    };
  }

  factory HDInsightHiveActivityResponse.fromMap(Map<String, dynamic> map) {
    return HDInsightHiveActivityResponse(
      arguments: map['arguments'] == null ? null : (map['arguments'] as List).cast<dynamic>(),
      defines: map['defines'] == null ? null : (map['defines'] as Map).cast<String, dynamic>(),
      dependsOn: map['dependsOn'] == null ? null : pulumi.Input.decodeList<ActivityDependencyResponse>(map['dependsOn'], (value) => ActivityDependencyResponse.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      getDebugInfo: map['getDebugInfo'] == null ? null : map['getDebugInfo'] as String,
      linkedServiceName: map['linkedServiceName'] == null ? null : LinkedServiceReferenceResponse.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : map['onInactiveMarkAs'] as String,
      policy: map['policy'] == null ? null : ActivityPolicyResponse.fromMap((map['policy'] as Map).cast<String, dynamic>()),
      queryTimeout: map['queryTimeout'] == null ? null : map['queryTimeout'] as int,
      scriptLinkedService: map['scriptLinkedService'] == null ? null : LinkedServiceReferenceResponse.fromMap((map['scriptLinkedService'] as Map).cast<String, dynamic>()),
      scriptPath: map['scriptPath'] == null ? null : map['scriptPath'],
      state: map['state'] == null ? null : map['state'] as String,
      storageLinkedServices: map['storageLinkedServices'] == null ? null : pulumi.Input.decodeList<LinkedServiceReferenceResponse>(map['storageLinkedServices'], (value) => LinkedServiceReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
      userProperties: map['userProperties'] == null ? null : pulumi.Input.decodeList<UserPropertyResponse>(map['userProperties'], (value) => UserPropertyResponse.fromMap((value as Map).cast<String, dynamic>())),
      variables: map['variables'] == null ? null : (map['variables'] as Map).cast<String, dynamic>(),
    );
  }
}

