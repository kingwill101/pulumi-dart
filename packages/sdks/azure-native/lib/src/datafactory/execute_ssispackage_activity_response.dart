// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency_response.dart';
import 'activity_policy_response.dart';
import 'integration_runtime_reference_response.dart';
import 'linked_service_reference_response.dart';
import 'ssisexecution_credential_response.dart';
import 'ssisexecution_parameter_response.dart';
import 'ssislog_location_response.dart';
import 'ssispackage_location_response.dart';
import 'ssisproperty_override_response.dart';
import 'user_property_response.dart';

/// Execute SSIS package activity.
class ExecuteSSISPackageActivityResponse {
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse> connectVia;
  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependencyResponse>>? dependsOn;
  /// Activity description.
  final pulumi.Input<String>? description;
  /// The environment path to execute the SSIS package. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? environmentPath;
  /// The package execution credential.
  final pulumi.Input<SSISExecutionCredentialResponse>? executionCredential;
  /// Linked service reference.
  final pulumi.Input<LinkedServiceReferenceResponse>? linkedServiceName;
  /// SSIS package execution log location.
  final pulumi.Input<SSISLogLocationResponse>? logLocation;
  /// The logging level of SSIS package execution. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? loggingLevel;
  /// Activity name.
  final pulumi.Input<String> name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final pulumi.Input<String>? onInactiveMarkAs;
  /// The package level connection managers to execute the SSIS package.
  final pulumi.Input<Map<String, Map<String, SSISExecutionParameterResponse>>>? packageConnectionManagers;
  /// SSIS package location.
  final pulumi.Input<SSISPackageLocationResponse> packageLocation;
  /// The package level parameters to execute the SSIS package.
  final pulumi.Input<Map<String, SSISExecutionParameterResponse>>? packageParameters;
  /// Activity policy.
  final pulumi.Input<ActivityPolicyResponse>? policy;
  /// The project level connection managers to execute the SSIS package.
  final pulumi.Input<Map<String, Map<String, SSISExecutionParameterResponse>>>? projectConnectionManagers;
  /// The project level parameters to execute the SSIS package.
  final pulumi.Input<Map<String, SSISExecutionParameterResponse>>? projectParameters;
  /// The property overrides to execute the SSIS package.
  final pulumi.Input<Map<String, SSISPropertyOverrideResponse>>? propertyOverrides;
  /// Specifies the runtime to execute SSIS package. The value should be "x86" or "x64". Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? runtime;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<String>? state;
  /// Type of activity.
  /// Expected value is 'ExecuteSSISPackage'.
  final pulumi.Input<String> type;
  /// Activity user properties.
  final pulumi.Input<List<UserPropertyResponse>>? userProperties;

  /// Creates a new [ExecuteSSISPackageActivityResponse].
  /// [connectVia] The integration runtime reference.
  /// [dependsOn] Activity depends on condition.
  /// [description] Activity description.
  /// [environmentPath] The environment path to execute the SSIS package. Type: string (or Expression with resultType string).
  /// [executionCredential] The package execution credential.
  /// [linkedServiceName] Linked service reference.
  /// [logLocation] SSIS package execution log location.
  /// [loggingLevel] The logging level of SSIS package execution. Type: string (or Expression with resultType string).
  /// [name] Activity name.
  /// [onInactiveMarkAs] Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  /// [packageConnectionManagers] The package level connection managers to execute the SSIS package.
  /// [packageLocation] SSIS package location.
  /// [packageParameters] The package level parameters to execute the SSIS package.
  /// [policy] Activity policy.
  /// [projectConnectionManagers] The project level connection managers to execute the SSIS package.
  /// [projectParameters] The project level parameters to execute the SSIS package.
  /// [propertyOverrides] The property overrides to execute the SSIS package.
  /// [runtime] Specifies the runtime to execute SSIS package. The value should be "x86" or "x64". Type: string (or Expression with resultType string).
  /// [state] Activity state. This is an optional property and if not provided, the state will be Active by default.
  /// [type] Type of activity.
  /// [userProperties] Activity user properties.
  ExecuteSSISPackageActivityResponse({
    required this.connectVia,
    this.dependsOn,
    this.description,
    this.environmentPath,
    this.executionCredential,
    this.linkedServiceName,
    this.logLocation,
    this.loggingLevel,
    required this.name,
    this.onInactiveMarkAs,
    this.packageConnectionManagers,
    required this.packageLocation,
    this.packageParameters,
    this.policy,
    this.projectConnectionManagers,
    this.projectParameters,
    this.propertyOverrides,
    this.runtime,
    this.state,
    required this.type,
    this.userProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectVia': pulumi.Input.mapInputValue<IntegrationRuntimeReferenceResponse, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'dependsOn': ?pulumi.Input.mapOptionalInputValue<List<ActivityDependencyResponse>, List<Map<String, dynamic>>>(dependsOn, (value) => pulumi.Input.encodeList<ActivityDependencyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'environmentPath': ?environmentPath,
      'executionCredential': ?pulumi.Input.mapOptionalInputValue<SSISExecutionCredentialResponse, Map<String, dynamic>>(executionCredential, (value) => value.toMap()),
      'linkedServiceName': ?pulumi.Input.mapOptionalInputValue<LinkedServiceReferenceResponse, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
      'logLocation': ?pulumi.Input.mapOptionalInputValue<SSISLogLocationResponse, Map<String, dynamic>>(logLocation, (value) => value.toMap()),
      'loggingLevel': ?loggingLevel,
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'packageConnectionManagers': ?pulumi.Input.mapOptionalInputValue<Map<String, Map<String, SSISExecutionParameterResponse>>, Map<String, Map<String, Map<String, dynamic>>>>(packageConnectionManagers, (value) => pulumi.Input.encodeMapValues<Map<String, SSISExecutionParameterResponse>, Map<String, Map<String, dynamic>>>(value, (value) => pulumi.Input.encodeMapValues<SSISExecutionParameterResponse, Map<String, dynamic>>(value, (value) => value.toMap()))),
      'packageLocation': pulumi.Input.mapInputValue<SSISPackageLocationResponse, Map<String, dynamic>>(packageLocation, (value) => value.toMap()),
      'packageParameters': ?pulumi.Input.mapOptionalInputValue<Map<String, SSISExecutionParameterResponse>, Map<String, Map<String, dynamic>>>(packageParameters, (value) => pulumi.Input.encodeMapValues<SSISExecutionParameterResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'policy': ?pulumi.Input.mapOptionalInputValue<ActivityPolicyResponse, Map<String, dynamic>>(policy, (value) => value.toMap()),
      'projectConnectionManagers': ?pulumi.Input.mapOptionalInputValue<Map<String, Map<String, SSISExecutionParameterResponse>>, Map<String, Map<String, Map<String, dynamic>>>>(projectConnectionManagers, (value) => pulumi.Input.encodeMapValues<Map<String, SSISExecutionParameterResponse>, Map<String, Map<String, dynamic>>>(value, (value) => pulumi.Input.encodeMapValues<SSISExecutionParameterResponse, Map<String, dynamic>>(value, (value) => value.toMap()))),
      'projectParameters': ?pulumi.Input.mapOptionalInputValue<Map<String, SSISExecutionParameterResponse>, Map<String, Map<String, dynamic>>>(projectParameters, (value) => pulumi.Input.encodeMapValues<SSISExecutionParameterResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'propertyOverrides': ?pulumi.Input.mapOptionalInputValue<Map<String, SSISPropertyOverrideResponse>, Map<String, Map<String, dynamic>>>(propertyOverrides, (value) => pulumi.Input.encodeMapValues<SSISPropertyOverrideResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'runtime': ?runtime,
      'state': ?state,
      'type': type,
      'userProperties': ?pulumi.Input.mapOptionalInputValue<List<UserPropertyResponse>, List<Map<String, dynamic>>>(userProperties, (value) => pulumi.Input.encodeList<UserPropertyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ExecuteSSISPackageActivityResponse.fromMap(Map<String, dynamic> map) {
    return ExecuteSSISPackageActivityResponse(
      connectVia: (IntegrationRuntimeReferenceResponse.fromMap((map['connectVia'] as Map).cast<String, dynamic>())).input(),
      dependsOn: map['dependsOn'] == null ? null : (pulumi.Input.decodeList<ActivityDependencyResponse>(map['dependsOn']!, (value) => ActivityDependencyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      environmentPath: map['environmentPath'] == null ? null : (map['environmentPath']!).input(),
      executionCredential: map['executionCredential'] == null ? null : (SSISExecutionCredentialResponse.fromMap((map['executionCredential']! as Map).cast<String, dynamic>())).input(),
      linkedServiceName: map['linkedServiceName'] == null ? null : (LinkedServiceReferenceResponse.fromMap((map['linkedServiceName']! as Map).cast<String, dynamic>())).input(),
      logLocation: map['logLocation'] == null ? null : (SSISLogLocationResponse.fromMap((map['logLocation']! as Map).cast<String, dynamic>())).input(),
      loggingLevel: map['loggingLevel'] == null ? null : (map['loggingLevel']!).input(),
      name: (map['name'] as String).input(),
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : (map['onInactiveMarkAs']! as String).input(),
      packageConnectionManagers: map['packageConnectionManagers'] == null ? null : (pulumi.Input.decodeMapValues<Map<String, SSISExecutionParameterResponse>>(map['packageConnectionManagers']!, (value) => pulumi.Input.decodeMapValues<SSISExecutionParameterResponse>(value, (value) => SSISExecutionParameterResponse.fromMap((value as Map).cast<String, dynamic>())))).input(),
      packageLocation: (SSISPackageLocationResponse.fromMap((map['packageLocation'] as Map).cast<String, dynamic>())).input(),
      packageParameters: map['packageParameters'] == null ? null : (pulumi.Input.decodeMapValues<SSISExecutionParameterResponse>(map['packageParameters']!, (value) => SSISExecutionParameterResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      policy: map['policy'] == null ? null : (ActivityPolicyResponse.fromMap((map['policy']! as Map).cast<String, dynamic>())).input(),
      projectConnectionManagers: map['projectConnectionManagers'] == null ? null : (pulumi.Input.decodeMapValues<Map<String, SSISExecutionParameterResponse>>(map['projectConnectionManagers']!, (value) => pulumi.Input.decodeMapValues<SSISExecutionParameterResponse>(value, (value) => SSISExecutionParameterResponse.fromMap((value as Map).cast<String, dynamic>())))).input(),
      projectParameters: map['projectParameters'] == null ? null : (pulumi.Input.decodeMapValues<SSISExecutionParameterResponse>(map['projectParameters']!, (value) => SSISExecutionParameterResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      propertyOverrides: map['propertyOverrides'] == null ? null : (pulumi.Input.decodeMapValues<SSISPropertyOverrideResponse>(map['propertyOverrides']!, (value) => SSISPropertyOverrideResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      runtime: map['runtime'] == null ? null : (map['runtime']!).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      type: (map['type'] as String).input(),
      userProperties: map['userProperties'] == null ? null : (pulumi.Input.decodeList<UserPropertyResponse>(map['userProperties']!, (value) => UserPropertyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

