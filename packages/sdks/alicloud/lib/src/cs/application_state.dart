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
    pulumi.Output<bool>? blueGreen,
    pulumi.Output<bool>? blueGreenConfirm,
    pulumi.Output<String>? clusterName,
    pulumi.Output<String>? defaultDomain,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? environment,
    pulumi.Output<bool>? latestImage,
    pulumi.Output<String>? name,
    pulumi.Output<List<ApplicationService>>? services,
    pulumi.Output<String>? template,
    pulumi.Output<String>? version,
  }) :
      blueGreen = pulumi.Input.asOptionalInput<bool>(blueGreen),
      blueGreenConfirm = pulumi.Input.asOptionalInput<bool>(blueGreenConfirm),
      clusterName = pulumi.Input.asOptionalInput<String>(clusterName),
      defaultDomain = pulumi.Input.asOptionalInput<String>(defaultDomain),
      description = pulumi.Input.asOptionalInput<String>(description),
      environment = pulumi.Input.asOptionalInput<Map<String, String>>(environment),
      latestImage = pulumi.Input.asOptionalInput<bool>(latestImage),
      name = pulumi.Input.asOptionalInput<String>(name),
      services = pulumi.Input.asOptionalInput<List<ApplicationService>>(services),
      template = pulumi.Input.asOptionalInput<String>(template),
      version = pulumi.Input.asOptionalInput<String>(version);

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
      blueGreen: map['blueGreen'] == null ? null : pulumi.Output.create<bool>(map['blueGreen'] as bool),
      blueGreenConfirm: map['blueGreenConfirm'] == null ? null : pulumi.Output.create<bool>(map['blueGreenConfirm'] as bool),
      clusterName: map['clusterName'] == null ? null : pulumi.Output.create<String>(map['clusterName'] as String),
      defaultDomain: map['defaultDomain'] == null ? null : pulumi.Output.create<String>(map['defaultDomain'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      environment: map['environment'] == null ? null : pulumi.Output.create<Map<String, String>>((map['environment'] as Map).cast<String, String>()),
      latestImage: map['latestImage'] == null ? null : pulumi.Output.create<bool>(map['latestImage'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      services: map['services'] == null ? null : pulumi.Output.create<List<ApplicationService>>(pulumi.Input.decodeList<ApplicationService>(map['services'], (value) => ApplicationService.fromMap((value as Map).cast<String, dynamic>()))),
      template: map['template'] == null ? null : pulumi.Output.create<String>(map['template'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

