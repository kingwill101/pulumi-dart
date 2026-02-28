// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_image_auth_config.dart';
import 'registry_image_build.dart';

/// {@template pulumi_index_registry_image_registry_image_args_doc}
/// The set of arguments for RegistryImage.
/// {@endtemplate}
/// {@macro pulumi_index_registry_image_registry_image_args_doc}
class RegistryImageArgs {
  /// Authentication configuration for the Docker registry. It is only used for this resource.
  final pulumi.Input<RegistryImageAuthConfig>? authConfig;
  final pulumi.Input<RegistryImageBuild>? build;
  /// If `true`, the verification of TLS certificates of the server/registry is disabled. Defaults to `false`
  final pulumi.Input<bool>? insecureSkipVerify;
  /// If true, then the Docker image won't be deleted on destroy operation. If this is false, it will delete the image from the docker registry on destroy operation. Defaults to `false`
  final pulumi.Input<bool>? keepRemotely;
  /// The name of the Docker image.
  final pulumi.Input<String>? name;
  /// A map of arbitrary strings that, when changed, will force the `docker.RegistryImage` resource to be replaced. This can be used to repush a local image
  final pulumi.Input<Map<String, String>>? triggers;

  /// Creates a new [RegistryImageArgs].
  /// [authConfig] Authentication configuration for the Docker registry. It is only used for this resource.
  /// [build] Optional.
  /// [insecureSkipVerify] If `true`, the verification of TLS certificates of the server/registry is disabled. Defaults to `false`
  /// [keepRemotely] If true, then the Docker image won't be deleted on destroy operation. If this is false, it will delete the image from the docker registry on destroy operation. Defaults to `false`
  /// [name] The name of the Docker image.
  /// [triggers] A map of arbitrary strings that, when changed, will force the `docker.RegistryImage` resource to be replaced. This can be used to repush a local image
  RegistryImageArgs({
    RegistryImageAuthConfig? authConfig,
    RegistryImageBuild? build,
    bool? insecureSkipVerify,
    bool? keepRemotely,
    String? name,
    Map<String, String>? triggers,
  }) :
      authConfig = pulumi.Input.asOptionalInput<RegistryImageAuthConfig>(authConfig),
      build = pulumi.Input.asOptionalInput<RegistryImageBuild>(build),
      insecureSkipVerify = pulumi.Input.asOptionalInput<bool>(insecureSkipVerify),
      keepRemotely = pulumi.Input.asOptionalInput<bool>(keepRemotely),
      name = pulumi.Input.asOptionalInput<String>(name),
      triggers = pulumi.Input.asOptionalInput<Map<String, String>>(triggers);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authConfig': ?pulumi.Input.mapOptionalInputValue<RegistryImageAuthConfig, Map<String, dynamic>>(authConfig, (value) => value.toMap()),
      'build': ?pulumi.Input.mapOptionalInputValue<RegistryImageBuild, Map<String, dynamic>>(build, (value) => value.toMap()),
      'insecureSkipVerify': ?insecureSkipVerify,
      'keepRemotely': ?keepRemotely,
      'name': ?name,
      'triggers': ?triggers,
    };
  }

  factory RegistryImageArgs.fromMap(Map<String, dynamic> map) {
    return RegistryImageArgs(
      authConfig: map['authConfig'] == null ? null : RegistryImageAuthConfig.fromMap((map['authConfig'] as Map).cast<String, dynamic>()),
      build: map['build'] == null ? null : RegistryImageBuild.fromMap((map['build'] as Map).cast<String, dynamic>()),
      insecureSkipVerify: map['insecureSkipVerify'] == null ? null : map['insecureSkipVerify'] as bool,
      keepRemotely: map['keepRemotely'] == null ? null : map['keepRemotely'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      triggers: map['triggers'] == null ? null : (map['triggers'] as Map).cast<String, String>(),
    );
  }
}

