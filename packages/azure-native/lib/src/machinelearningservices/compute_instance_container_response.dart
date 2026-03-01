// ignore_for_file: unused_element, unnecessary_cast

import 'compute_instance_environment_info_response.dart';

/// Defines an Aml Instance container.
class ComputeInstanceContainerResponse {
  /// Auto save settings.
  final String? autosave;
  /// Environment information of this container.
  final ComputeInstanceEnvironmentInfoResponse? environment;
  /// Information of GPU.
  final String? gpu;
  /// Name of the ComputeInstance container.
  final String? name;
  /// network of this container.
  final String? network;
  /// services of this containers.
  final List<dynamic> services;

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
      'environment': ?environment == null ? null : environment!.toMap(),
      'gpu': ?gpu,
      'name': ?name,
      'network': ?network,
      'services': services,
    };
  }

  factory ComputeInstanceContainerResponse.fromMap(Map<String, dynamic> map) {
    return ComputeInstanceContainerResponse(
      autosave: map['autosave'] == null ? null : map['autosave'] as String,
      environment: map['environment'] == null ? null : ComputeInstanceEnvironmentInfoResponse.fromMap((map['environment'] as Map).cast<String, dynamic>()),
      gpu: map['gpu'] == null ? null : map['gpu'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      services: (map['services'] as List).cast<dynamic>(),
    );
  }
}

