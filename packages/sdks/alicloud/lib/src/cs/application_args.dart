// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cs_application_application_args_doc}
/// The set of arguments for Application.
/// {@endtemplate}
/// {@macro pulumi_cs_application_application_args_doc}
class ApplicationArgs {
  final pulumi.Input<bool>? blueGreen;
  final pulumi.Input<bool>? blueGreenConfirm;
  final pulumi.Input<String> clusterName;
  final pulumi.Input<String>? description;
  final pulumi.Input<Map<String, String>>? environment;
  final pulumi.Input<bool>? latestImage;
  final pulumi.Input<String>? name;
  final pulumi.Input<String> template;
  final pulumi.Input<String>? version;

  /// Creates a new [ApplicationArgs].
  /// [blueGreen] Optional.
  /// [blueGreenConfirm] Optional.
  /// [clusterName] Required.
  /// [description] Optional.
  /// [environment] Optional.
  /// [latestImage] Optional.
  /// [name] Optional.
  /// [template] Required.
  /// [version] Optional.
  ApplicationArgs({
    this.blueGreen,
    this.blueGreenConfirm,
    required this.clusterName,
    this.description,
    this.environment,
    this.latestImage,
    this.name,
    required this.template,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blueGreen': ?blueGreen,
      'blueGreenConfirm': ?blueGreenConfirm,
      'clusterName': clusterName,
      'description': ?description,
      'environment': ?environment,
      'latestImage': ?latestImage,
      'name': ?name,
      'template': template,
      'version': ?version,
    };
  }

  factory ApplicationArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationArgs(
      blueGreen: map['blueGreen'] == null ? null : (map['blueGreen']! as bool).input(),
      blueGreenConfirm: map['blueGreenConfirm'] == null ? null : (map['blueGreenConfirm']! as bool).input(),
      clusterName: (map['clusterName'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      environment: map['environment'] == null ? null : ((map['environment']! as Map).cast<String, String>()).input(),
      latestImage: map['latestImage'] == null ? null : (map['latestImage']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      template: (map['template'] as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

