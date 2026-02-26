// ignore_for_file: unused_element, unnecessary_cast

import '../ai_reasoning_engine_spec_deployment_spec/ai_reasoning_engine_spec_deployment_spec.dart';
import '../ai_reasoning_engine_spec_package_spec/ai_reasoning_engine_spec_package_spec.dart';
import '../ai_reasoning_engine_spec_source_code_spec/ai_reasoning_engine_spec_source_code_spec.dart';

class AiReasoningEngineSpec {
  /// Optional. The OSS agent framework used to develop the agent.
  final String? agentFramework;

  /// Optional. Declarations for object class methods in OpenAPI
  /// specification format.
  final String? classMethods;

  /// Optional. The specification of a Reasoning Engine deployment.
  /// Structure is documented below.
  final AiReasoningEngineSpecDeploymentSpec? deploymentSpec;

  /// Optional. User provided package spec of the ReasoningEngine.
  /// Ignored when users directly specify a deployment image through
  /// deploymentSpec.first_party_image_override, but keeping the<span pulumi-lang-nodejs="
  /// fieldBehavior " pulumi-lang-dotnet="
  /// FieldBehavior " pulumi-lang-go="
  /// fieldBehavior " pulumi-lang-python="
  /// field_behavior " pulumi-lang-yaml="
  /// fieldBehavior " pulumi-lang-java="
  /// fieldBehavior ">
  /// field_behavior </span>to avoid introducing breaking changes.
  /// Structure is documented below.
  final AiReasoningEngineSpecPackageSpec? packageSpec;

  /// Optional. The service account that the Reasoning Engine artifact runs
  /// as. It should have "roles/storage.objectViewer" for reading the user
  /// project's Cloud Storage and "roles/aiplatform.user" for using Vertex
  /// extensions. If not specified, the Vertex AI Reasoning Engine service
  /// Agent in the project will be used.
  final String? serviceAccount;

  /// Specification for deploying from source code.
  /// Structure is documented below.
  final AiReasoningEngineSpecSourceCodeSpec? sourceCodeSpec;

  AiReasoningEngineSpec({
    this.agentFramework,
    this.classMethods,
    this.deploymentSpec,
    this.packageSpec,
    this.serviceAccount,
    this.sourceCodeSpec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final agentFrameworkValue = agentFramework;
    if (agentFrameworkValue != null) {
      map['agentFramework'] = agentFrameworkValue;
    }
    final classMethodsValue = classMethods;
    if (classMethodsValue != null) {
      map['classMethods'] = classMethodsValue;
    }
    final deploymentSpecValue = deploymentSpec;
    if (deploymentSpecValue != null) {
      map['deploymentSpec'] = deploymentSpecValue.toMap();
    }
    final packageSpecValue = packageSpec;
    if (packageSpecValue != null) {
      map['packageSpec'] = packageSpecValue.toMap();
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    final sourceCodeSpecValue = sourceCodeSpec;
    if (sourceCodeSpecValue != null) {
      map['sourceCodeSpec'] = sourceCodeSpecValue.toMap();
    }
    return map;
  }

  factory AiReasoningEngineSpec.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineSpec(
      agentFramework: map['agentFramework'] == null
          ? null
          : map['agentFramework'] as String,
      classMethods:
          map['classMethods'] == null ? null : map['classMethods'] as String,
      deploymentSpec: map['deploymentSpec'] == null
          ? null
          : AiReasoningEngineSpecDeploymentSpec.fromMap(
              (map['deploymentSpec'] as Map).cast<String, dynamic>()),
      packageSpec: map['packageSpec'] == null
          ? null
          : AiReasoningEngineSpecPackageSpec.fromMap(
              (map['packageSpec'] as Map).cast<String, dynamic>()),
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
      sourceCodeSpec: map['sourceCodeSpec'] == null
          ? null
          : AiReasoningEngineSpecSourceCodeSpec.fromMap(
              (map['sourceCodeSpec'] as Map).cast<String, dynamic>()),
    );
  }
}
