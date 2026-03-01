// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency_response.dart';
import 'activity_policy_response.dart';
import 'linked_service_reference_response.dart';
import 'user_property_response.dart';

/// HDInsight MapReduce activity type.
class HDInsightMapReduceActivityResponse {
  /// User specified arguments to HDInsightActivity.
  final List<dynamic>? arguments;
  /// Class name. Type: string (or Expression with resultType string).
  final dynamic className;
  /// Allows user to specify defines for the MapReduce job request.
  final Map<String, dynamic>? defines;
  /// Activity depends on condition.
  final List<ActivityDependencyResponse>? dependsOn;
  /// Activity description.
  final String? description;
  /// Debug info option.
  final String? getDebugInfo;
  /// Jar path. Type: string (or Expression with resultType string).
  final dynamic jarFilePath;
  /// Jar libs.
  final List<dynamic>? jarLibs;
  /// Jar linked service reference.
  final LinkedServiceReferenceResponse? jarLinkedService;
  /// Linked service reference.
  final LinkedServiceReferenceResponse? linkedServiceName;
  /// Activity name.
  final String name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final String? onInactiveMarkAs;
  /// Activity policy.
  final ActivityPolicyResponse? policy;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final String? state;
  /// Storage linked service references.
  final List<LinkedServiceReferenceResponse>? storageLinkedServices;
  /// Type of activity.
  /// Expected value is 'HDInsightMapReduce'.
  final String type;
  /// Activity user properties.
  final List<UserPropertyResponse>? userProperties;

  /// Creates a new [HDInsightMapReduceActivityResponse].
  /// [arguments] User specified arguments to HDInsightActivity.
  /// [className] Class name. Type: string (or Expression with resultType string).
  /// [defines] Allows user to specify defines for the MapReduce job request.
  /// [dependsOn] Activity depends on condition.
  /// [description] Activity description.
  /// [getDebugInfo] Debug info option.
  /// [jarFilePath] Jar path. Type: string (or Expression with resultType string).
  /// [jarLibs] Jar libs.
  /// [jarLinkedService] Jar linked service reference.
  /// [linkedServiceName] Linked service reference.
  /// [name] Activity name.
  /// [onInactiveMarkAs] Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  /// [policy] Activity policy.
  /// [state] Activity state. This is an optional property and if not provided, the state will be Active by default.
  /// [storageLinkedServices] Storage linked service references.
  /// [type] Type of activity.
  /// [userProperties] Activity user properties.
  HDInsightMapReduceActivityResponse({
    this.arguments,
    required this.className,
    this.defines,
    this.dependsOn,
    this.description,
    this.getDebugInfo,
    required this.jarFilePath,
    this.jarLibs,
    this.jarLinkedService,
    this.linkedServiceName,
    required this.name,
    this.onInactiveMarkAs,
    this.policy,
    this.state,
    this.storageLinkedServices,
    required this.type,
    this.userProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arguments': ?arguments,
      'className': className,
      'defines': ?defines,
      'dependsOn': ?dependsOn == null ? null : pulumi.Input.encodeList<ActivityDependencyResponse, Map<String, dynamic>>(dependsOn!, (value) => value.toMap()),
      'description': ?description,
      'getDebugInfo': ?getDebugInfo,
      'jarFilePath': jarFilePath,
      'jarLibs': ?jarLibs,
      'jarLinkedService': ?jarLinkedService == null ? null : jarLinkedService!.toMap(),
      'linkedServiceName': ?linkedServiceName == null ? null : linkedServiceName!.toMap(),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy': ?policy == null ? null : policy!.toMap(),
      'state': ?state,
      'storageLinkedServices': ?storageLinkedServices == null ? null : pulumi.Input.encodeList<LinkedServiceReferenceResponse, Map<String, dynamic>>(storageLinkedServices!, (value) => value.toMap()),
      'type': type,
      'userProperties': ?userProperties == null ? null : pulumi.Input.encodeList<UserPropertyResponse, Map<String, dynamic>>(userProperties!, (value) => value.toMap()),
    };
  }

  factory HDInsightMapReduceActivityResponse.fromMap(Map<String, dynamic> map) {
    return HDInsightMapReduceActivityResponse(
      arguments: map['arguments'] == null ? null : (map['arguments'] as List).cast<dynamic>(),
      className: map['className'],
      defines: map['defines'] == null ? null : (map['defines'] as Map).cast<String, dynamic>(),
      dependsOn: map['dependsOn'] == null ? null : pulumi.Input.decodeList<ActivityDependencyResponse>(map['dependsOn'], (value) => ActivityDependencyResponse.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      getDebugInfo: map['getDebugInfo'] == null ? null : map['getDebugInfo'] as String,
      jarFilePath: map['jarFilePath'],
      jarLibs: map['jarLibs'] == null ? null : (map['jarLibs'] as List).cast<dynamic>(),
      jarLinkedService: map['jarLinkedService'] == null ? null : LinkedServiceReferenceResponse.fromMap((map['jarLinkedService'] as Map).cast<String, dynamic>()),
      linkedServiceName: map['linkedServiceName'] == null ? null : LinkedServiceReferenceResponse.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : map['onInactiveMarkAs'] as String,
      policy: map['policy'] == null ? null : ActivityPolicyResponse.fromMap((map['policy'] as Map).cast<String, dynamic>()),
      state: map['state'] == null ? null : map['state'] as String,
      storageLinkedServices: map['storageLinkedServices'] == null ? null : pulumi.Input.decodeList<LinkedServiceReferenceResponse>(map['storageLinkedServices'], (value) => LinkedServiceReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
      userProperties: map['userProperties'] == null ? null : pulumi.Input.decodeList<UserPropertyResponse>(map['userProperties'], (value) => UserPropertyResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

