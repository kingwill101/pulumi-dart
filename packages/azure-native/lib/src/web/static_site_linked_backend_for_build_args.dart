// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_static_site_linked_backend_for_build_args_doc}
/// The set of arguments for StaticSiteLinkedBackendForBuild.
/// {@endtemplate}
/// {@macro pulumi_web_static_site_linked_backend_for_build_args_doc}
class StaticSiteLinkedBackendForBuildArgs {
  /// The resource id of the backend linked to the static site
  final pulumi.Input<String>? backendResourceId;
  /// The stage site identifier
  final pulumi.Input<String> environmentName;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Name of the backend to link to the static site
  final pulumi.Input<String>? linkedBackendName;
  /// Name of the static site
  final pulumi.Input<String> name;
  /// The region of the backend linked to the static site
  final pulumi.Input<String>? region;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [StaticSiteLinkedBackendForBuildArgs].
  /// [backendResourceId] The resource id of the backend linked to the static site
  /// [environmentName] The stage site identifier
  /// [kind] Kind of resource.
  /// [linkedBackendName] Name of the backend to link to the static site
  /// [name] Name of the static site
  /// [region] The region of the backend linked to the static site
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  StaticSiteLinkedBackendForBuildArgs({
    String? backendResourceId,
    required String environmentName,
    String? kind,
    String? linkedBackendName,
    required String name,
    String? region,
    required String resourceGroupName,
  }) :
      backendResourceId = pulumi.Input.asOptionalInput<String>(backendResourceId),
      environmentName = pulumi.Input.asInput<String>(environmentName),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      linkedBackendName = pulumi.Input.asOptionalInput<String>(linkedBackendName),
      name = pulumi.Input.asInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendResourceId': ?backendResourceId,
      'environmentName': environmentName,
      'kind': ?kind,
      'linkedBackendName': ?linkedBackendName,
      'name': name,
      'region': ?region,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory StaticSiteLinkedBackendForBuildArgs.fromMap(Map<String, dynamic> map) {
    return StaticSiteLinkedBackendForBuildArgs(
      backendResourceId: map['backendResourceId'] == null ? null : map['backendResourceId'] as String,
      environmentName: map['environmentName'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      linkedBackendName: map['linkedBackendName'] == null ? null : map['linkedBackendName'] as String,
      name: map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

