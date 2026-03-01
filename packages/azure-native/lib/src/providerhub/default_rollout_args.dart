// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_rollout_properties.dart';

/// {@template pulumi_providerhub_default_rollout_args_doc}
/// The set of arguments for DefaultRollout.
/// {@endtemplate}
/// {@macro pulumi_providerhub_default_rollout_args_doc}
class DefaultRolloutArgs {
  /// Properties of the rollout.
  final pulumi.Input<DefaultRolloutProperties>? properties;
  /// The name of the resource provider hosted within ProviderHub.
  final pulumi.Input<String> providerNamespace;
  /// The rollout name.
  final pulumi.Input<String>? rolloutName;

  /// Creates a new [DefaultRolloutArgs].
  /// [properties] Properties of the rollout.
  /// [providerNamespace] The name of the resource provider hosted within ProviderHub.
  /// [rolloutName] The rollout name.
  DefaultRolloutArgs({
    DefaultRolloutProperties? properties,
    required String providerNamespace,
    String? rolloutName,
  }) :
      properties = pulumi.Input.asOptionalInput<DefaultRolloutProperties>(properties),
      providerNamespace = pulumi.Input.asInput<String>(providerNamespace),
      rolloutName = pulumi.Input.asOptionalInput<String>(rolloutName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<DefaultRolloutProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'providerNamespace': providerNamespace,
      'rolloutName': ?rolloutName,
    };
  }

  factory DefaultRolloutArgs.fromMap(Map<String, dynamic> map) {
    return DefaultRolloutArgs(
      properties: map['properties'] == null ? null : DefaultRolloutProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      providerNamespace: map['providerNamespace'] as String,
      rolloutName: map['rolloutName'] == null ? null : map['rolloutName'] as String,
    );
  }
}

