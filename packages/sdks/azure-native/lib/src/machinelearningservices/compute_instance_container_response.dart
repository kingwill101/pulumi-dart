// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_instance_environment_info_response.dart';

/// Defines an Aml Instance container.
class ComputeInstanceContainerResponse {
  /// Auto save settings.
  final pulumi.Input<String>? autosave;

  /// Environment information of this container.
  final pulumi.Input<ComputeInstanceEnvironmentInfoResponse>? environment;

  /// Information of GPU.
  final pulumi.Input<String>? gpu;

  /// Name of the ComputeInstance container.
  final pulumi.Input<String>? name;

  /// network of this container.
  final pulumi.Input<String>? network;

  /// services of this containers.
  final pulumi.Input<List<dynamic>> services;

  /// Creates a new [ComputeInstanceContainerResponse].
  /// [autosave] Auto save settings.
  /// [environment] Environment information of this container.
  /// [gpu] Information of GPU.
  /// [name] Name of the ComputeInstance container.
  /// [network] network of this container.
  /// [services] services of this containers.
  ComputeInstanceContainerResponse({
    this.autosave,
    this.environment,
    this.gpu,
    this.name,
    this.network,
    required this.services,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autosave': ?autosave,
      'environment':
          ?pulumi.Input.mapOptionalInputValue<
            ComputeInstanceEnvironmentInfoResponse,
            Map<String, dynamic>
          >(environment, (value) => value.toMap()),
      'gpu': ?gpu,
      'name': ?name,
      'network': ?network,
      'services': services,
    };
  }

  factory ComputeInstanceContainerResponse.fromMap(Map<String, dynamic> map) {
    return ComputeInstanceContainerResponse(
      autosave: (() {
        final guardedValue = map['autosave'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      environment: (() {
        final guardedValue = map['environment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ComputeInstanceEnvironmentInfoResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      gpu: (() {
        final guardedValue = map['gpu'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      network: (() {
        final guardedValue = map['network'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      services: pulumi.Input.fromValue(
        (map['services'] as List).cast<dynamic>(),
      ),
    );
  }
}
