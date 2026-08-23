// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_runtime_environment_args_doc}
/// The set of arguments for RuntimeEnvironment.
/// {@endtemplate}
/// {@macro pulumi_automation_runtime_environment_args_doc}
class RuntimeEnvironmentArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// List of Default packages for Environment
  final pulumi.Input<Map<String, String>>? defaultPackages;
  /// Gets or sets the description.
  final pulumi.Input<String>? description;
  /// Language of Runtime Environment
  final pulumi.Input<String>? language;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Runtime Environment.
  final pulumi.Input<String>? runtimeEnvironmentName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Version of Language
  final pulumi.Input<String>? version;

  /// Creates a new [RuntimeEnvironmentArgs].
  /// [automationAccountName] The name of the automation account.
  /// [defaultPackages] List of Default packages for Environment
  /// [description] Gets or sets the description.
  /// [language] Language of Runtime Environment
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [runtimeEnvironmentName] The name of the Runtime Environment.
  /// [tags] Resource tags.
  /// [version] Version of Language
  const RuntimeEnvironmentArgs({
    required this.automationAccountName,
    this.defaultPackages,
    this.description,
    this.language,
    this.location,
    required this.resourceGroupName,
    this.runtimeEnvironmentName,
    this.tags,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'defaultPackages': ?defaultPackages,
      'description': ?description,
      'language': ?language,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'runtimeEnvironmentName': ?runtimeEnvironmentName,
      'tags': ?tags,
      'version': ?version,
    };
  }

  factory RuntimeEnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return RuntimeEnvironmentArgs(
      automationAccountName: pulumi.Input.fromValue(map['automationAccountName'] as String),
      defaultPackages: (() { final guardedValue = map['defaultPackages']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      language: (() { final guardedValue = map['language']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      runtimeEnvironmentName: (() { final guardedValue = map['runtimeEnvironmentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
