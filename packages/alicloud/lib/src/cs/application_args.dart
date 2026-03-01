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
    bool? blueGreen,
    bool? blueGreenConfirm,
    required String clusterName,
    String? description,
    Map<String, String>? environment,
    bool? latestImage,
    String? name,
    required String template,
    String? version,
  }) :
      blueGreen = pulumi.Input.asOptionalInput<bool>(blueGreen),
      blueGreenConfirm = pulumi.Input.asOptionalInput<bool>(blueGreenConfirm),
      clusterName = pulumi.Input.asInput<String>(clusterName),
      description = pulumi.Input.asOptionalInput<String>(description),
      environment = pulumi.Input.asOptionalInput<Map<String, String>>(environment),
      latestImage = pulumi.Input.asOptionalInput<bool>(latestImage),
      name = pulumi.Input.asOptionalInput<String>(name),
      template = pulumi.Input.asInput<String>(template),
      version = pulumi.Input.asOptionalInput<String>(version);

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
      blueGreen: map['blueGreen'] == null ? null : map['blueGreen'] as bool,
      blueGreenConfirm: map['blueGreenConfirm'] == null ? null : map['blueGreenConfirm'] as bool,
      clusterName: map['clusterName'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      environment: map['environment'] == null ? null : (map['environment'] as Map).cast<String, String>(),
      latestImage: map['latestImage'] == null ? null : map['latestImage'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      template: map['template'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

