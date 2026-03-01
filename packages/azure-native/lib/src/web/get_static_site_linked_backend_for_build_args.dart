// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_static_site_linked_backend_for_build_args_doc}
/// Arguments for getStaticSiteLinkedBackendForBuild.
/// {@endtemplate}
/// {@macro pulumi_web_get_static_site_linked_backend_for_build_args_doc}
class GetStaticSiteLinkedBackendForBuildArgs {
  /// The stage site identifier
  final pulumi.Input<String> environmentName;
  /// Name of the linked backend that should be retrieved
  final pulumi.Input<String> linkedBackendName;
  /// Name of the static site
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetStaticSiteLinkedBackendForBuildArgs].
  /// [environmentName] The stage site identifier
  /// [linkedBackendName] Name of the linked backend that should be retrieved
  /// [name] Name of the static site
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  GetStaticSiteLinkedBackendForBuildArgs({
    required String environmentName,
    required String linkedBackendName,
    required String name,
    required String resourceGroupName,
  }) :
      environmentName = pulumi.Input.asInput<String>(environmentName),
      linkedBackendName = pulumi.Input.asInput<String>(linkedBackendName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentName': environmentName,
      'linkedBackendName': linkedBackendName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetStaticSiteLinkedBackendForBuildArgs.fromMap(Map<String, dynamic> map) {
    return GetStaticSiteLinkedBackendForBuildArgs(
      environmentName: map['environmentName'] as String,
      linkedBackendName: map['linkedBackendName'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

