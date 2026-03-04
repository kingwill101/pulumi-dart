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
      'services':
          ?pulumi.Input.mapOptionalInputValue<
            List<ApplicationService>,
            List<Map<String, dynamic>>
          >(
            services,
            (value) =>
                pulumi.Input.encodeList<
                  ApplicationService,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'template': ?template,
      'version': ?version,
    };
  }

  factory ApplicationState.fromMap(Map<String, dynamic> map) {
    return ApplicationState(
      blueGreen: (() {
        final guardedValue = map['blueGreen'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      blueGreenConfirm: (() {
        final guardedValue = map['blueGreenConfirm'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      clusterName: (() {
        final guardedValue = map['clusterName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      defaultDomain: (() {
        final guardedValue = map['defaultDomain'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      environment: (() {
        final guardedValue = map['environment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      latestImage: (() {
        final guardedValue = map['latestImage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      services: (() {
        final guardedValue = map['services'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ApplicationService>(
            guardedValue,
            (value) => ApplicationService.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      template: (() {
        final guardedValue = map['template'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
