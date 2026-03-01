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
  final IntegrationRuntimeReferenceResponse connectVia;
  /// Activity depends on condition.
  final List<ActivityDependencyResponse>? dependsOn;
  /// Activity description.
  final String? description;
  /// The environment path to execute the SSIS package. Type: string (or Expression with resultType string).
  final dynamic environmentPath;
  /// The package execution credential.
  final SSISExecutionCredentialResponse? executionCredential;
  /// Linked service reference.
  final LinkedServiceReferenceResponse? linkedServiceName;
  /// SSIS package execution log location.
  final SSISLogLocationResponse? logLocation;
  /// The logging level of SSIS package execution. Type: string (or Expression with resultType string).
  final dynamic loggingLevel;
  /// Activity name.
  final String name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final String? onInactiveMarkAs;
  /// The package level connection managers to execute the SSIS package.
  final Map<String, Map<String, SSISExecutionParameterResponse>>? packageConnectionManagers;
  /// SSIS package location.
  final SSISPackageLocationResponse packageLocation;
  /// The package level parameters to execute the SSIS package.
  final Map<String, SSISExecutionParameterResponse>? packageParameters;
  /// Activity policy.
  final ActivityPolicyResponse? policy;
  /// The project level connection managers to execute the SSIS package.
  final Map<String, Map<String, SSISExecutionParameterResponse>>? projectConnectionManagers;
  /// The project level parameters to execute the SSIS package.
  final Map<String, SSISExecutionParameterResponse>? projectParameters;
  /// The property overrides to execute the SSIS package.
  final Map<String, SSISPropertyOverrideResponse>? propertyOverrides;
  /// Specifies the runtime to execute SSIS package. The value should be "x86" or "x64". Type: string (or Expression with resultType string).
  final dynamic runtime;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final String? state;
  /// Type of activity.
  /// Expected value is 'ExecuteSSISPackage'.
  final String type;
  /// Activity user properties.
  final List<UserPropertyResponse>? userProperties;

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
      'connectVia': connectVia.toMap(),
      'dependsOn': ?dependsOn == null ? null : pulumi.Input.encodeList<ActivityDependencyResponse, Map<String, dynamic>>(dependsOn!, (value) => value.toMap()),
      'description': ?description,
      'environmentPath': ?environmentPath,
      'executionCredential': ?executionCredential == null ? null : executionCredential!.toMap(),
      'linkedServiceName': ?linkedServiceName == null ? null : linkedServiceName!.toMap(),
      'logLocation': ?logLocation == null ? null : logLocation!.toMap(),
      'loggingLevel': ?loggingLevel,
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'packageConnectionManagers': ?packageConnectionManagers == null ? null : pulumi.Input.encodeMapValues<Map<String, SSISExecutionParameterResponse>, Map<String, Map<String, dynamic>>>(packageConnectionManagers!, (value) => pulumi.Input.encodeMapValues<SSISExecutionParameterResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'packageLocation': packageLocation.toMap(),
      'packageParameters': ?packageParameters == null ? null : pulumi.Input.encodeMapValues<SSISExecutionParameterResponse, Map<String, dynamic>>(packageParameters!, (value) => value.toMap()),
      'policy': ?policy == null ? null : policy!.toMap(),
      'projectConnectionManagers': ?projectConnectionManagers == null ? null : pulumi.Input.encodeMapValues<Map<String, SSISExecutionParameterResponse>, Map<String, Map<String, dynamic>>>(projectConnectionManagers!, (value) => pulumi.Input.encodeMapValues<SSISExecutionParameterResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'projectParameters': ?projectParameters == null ? null : pulumi.Input.encodeMapValues<SSISExecutionParameterResponse, Map<String, dynamic>>(projectParameters!, (value) => value.toMap()),
      'propertyOverrides': ?propertyOverrides == null ? null : pulumi.Input.encodeMapValues<SSISPropertyOverrideResponse, Map<String, dynamic>>(propertyOverrides!, (value) => value.toMap()),
      'runtime': ?runtime,
      'state': ?state,
      'type': type,
      'userProperties': ?userProperties == null ? null : pulumi.Input.encodeList<UserPropertyResponse, Map<String, dynamic>>(userProperties!, (value) => value.toMap()),
    };
  }

  factory ExecuteSSISPackageActivityResponse.fromMap(Map<String, dynamic> map) {
    return ExecuteSSISPackageActivityResponse(
      connectVia: IntegrationRuntimeReferenceResponse.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      dependsOn: map['dependsOn'] == null ? null : pulumi.Input.decodeList<ActivityDependencyResponse>(map['dependsOn'], (value) => ActivityDependencyResponse.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      environmentPath: map['environmentPath'] == null ? null : map['environmentPath'],
      executionCredential: map['executionCredential'] == null ? null : SSISExecutionCredentialResponse.fromMap((map['executionCredential'] as Map).cast<String, dynamic>()),
      linkedServiceName: map['linkedServiceName'] == null ? null : LinkedServiceReferenceResponse.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      logLocation: map['logLocation'] == null ? null : SSISLogLocationResponse.fromMap((map['logLocation'] as Map).cast<String, dynamic>()),
      loggingLevel: map['loggingLevel'] == null ? null : map['loggingLevel'],
      name: map['name'] as String,
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : map['onInactiveMarkAs'] as String,
      packageConnectionManagers: map['packageConnectionManagers'] == null ? null : pulumi.Input.decodeMapValues<Map<String, SSISExecutionParameterResponse>>(map['packageConnectionManagers'], (value) => pulumi.Input.decodeMapValues<SSISExecutionParameterResponse>(value, (value) => SSISExecutionParameterResponse.fromMap((value as Map).cast<String, dynamic>()))),
      packageLocation: SSISPackageLocationResponse.fromMap((map['packageLocation'] as Map).cast<String, dynamic>()),
      packageParameters: map['packageParameters'] == null ? null : pulumi.Input.decodeMapValues<SSISExecutionParameterResponse>(map['packageParameters'], (value) => SSISExecutionParameterResponse.fromMap((value as Map).cast<String, dynamic>())),
      policy: map['policy'] == null ? null : ActivityPolicyResponse.fromMap((map['policy'] as Map).cast<String, dynamic>()),
      projectConnectionManagers: map['projectConnectionManagers'] == null ? null : pulumi.Input.decodeMapValues<Map<String, SSISExecutionParameterResponse>>(map['projectConnectionManagers'], (value) => pulumi.Input.decodeMapValues<SSISExecutionParameterResponse>(value, (value) => SSISExecutionParameterResponse.fromMap((value as Map).cast<String, dynamic>()))),
      projectParameters: map['projectParameters'] == null ? null : pulumi.Input.decodeMapValues<SSISExecutionParameterResponse>(map['projectParameters'], (value) => SSISExecutionParameterResponse.fromMap((value as Map).cast<String, dynamic>())),
      propertyOverrides: map['propertyOverrides'] == null ? null : pulumi.Input.decodeMapValues<SSISPropertyOverrideResponse>(map['propertyOverrides'], (value) => SSISPropertyOverrideResponse.fromMap((value as Map).cast<String, dynamic>())),
      runtime: map['runtime'] == null ? null : map['runtime'],
      state: map['state'] == null ? null : map['state'] as String,
      type: map['type'] as String,
      userProperties: map['userProperties'] == null ? null : pulumi.Input.decodeList<UserPropertyResponse>(map['userProperties'], (value) => UserPropertyResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

