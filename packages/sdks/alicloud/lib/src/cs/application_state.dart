// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_service.dart';

/// Input properties used for looking up and filtering Application resources.
class ApplicationState {
  final pulumi.Input<bool>? blueGreen;
  final pulumi.Input<bool>? blueGreenConfirm;
  final pulumi.Input<String>? clusterName;
  final pulumi.Input<String>? defaultDomain;
  final pulumi.Input<String>? description;
  final pulumi.Input<Map<String, String>>? environment;
  final pulumi.Input<bool>? latestImage;
  final pulumi.Input<String>? name;
  final pulumi.Input<List<ApplicationService>>? services;
  final pulumi.Input<String>? template;
  final pulumi.Input<String>? version;

  /// Creates a new [ApplicationState].
  /// [blueGreen] Optional.
  /// [blueGreenConfirm] Optional.
  /// [clusterName] Optional.
  /// [defaultDomain] Optional.
  /// [description] Optional.
  /// [environment] Optional.
  /// [latestImage] Optional.
  /// [name] Optional.
  /// [services] Optional.
  /// [template] Optional.
  /// [version] Optional.
  ApplicationState({
    this.blueGreen,
    this.blueGreenConfirm,
    this.clusterName,
    this.defaultDomain,
    this.description,
    this.environment,
    this.latestImage,
    this.name,
    this.services,
    this.template,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blueGreen': ?blueGreen,
      'blueGreenConfirm': ?blueGreenConfirm,
      'clusterName': ?clusterName,
      'defaultDomain': ?defaultDomain,
      'description': ?description,
      'environment': ?environment,
      'latestImage': ?latestImage,
      'name': ?name,
      'services': ?pulumi.Input.mapOptionalInputValue<List<ApplicationService>, List<Map<String, dynamic>>>(services, (value) => pulumi.Input.encodeList<ApplicationService, Map<String, dynamic>>(value, (value) => value.toMap())),
      'template': ?template,
      'version': ?version,
    };
  }

  factory ApplicationState.fromMap(Map<String, dynamic> map) {
    return ApplicationState(
      blueGreen: map['blueGreen'] == null ? null : (map['blueGreen'] as bool).input(),
      blueGreenConfirm: map['blueGreenConfirm'] == null ? null : (map['blueGreenConfirm'] as bool).input(),
      clusterName: map['clusterName'] == null ? null : (map['clusterName'] as String).input(),
      defaultDomain: map['defaultDomain'] == null ? null : (map['defaultDomain'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      environment: map['environment'] == null ? null : ((map['environment'] as Map).cast<String, String>()).input(),
      latestImage: map['latestImage'] == null ? null : (map['latestImage'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      services: map['services'] == null ? null : (pulumi.Input.decodeList<ApplicationService>(map['services'], (value) => ApplicationService.fromMap((value as Map).cast<String, dynamic>()))).input(),
      template: map['template'] == null ? null : (map['template'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

