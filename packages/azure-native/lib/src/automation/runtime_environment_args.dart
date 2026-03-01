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
  /// Name of an Azure Resource group.
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
  /// [resourceGroupName] Name of an Azure Resource group.
  /// [runtimeEnvironmentName] The name of the Runtime Environment.
  /// [tags] Resource tags.
  /// [version] Version of Language
  RuntimeEnvironmentArgs({
    required String automationAccountName,
    Map<String, String>? defaultPackages,
    String? description,
    String? language,
    String? location,
    required String resourceGroupName,
    String? runtimeEnvironmentName,
    Map<String, String>? tags,
    String? version,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      defaultPackages = pulumi.Input.asOptionalInput<Map<String, String>>(defaultPackages),
      description = pulumi.Input.asOptionalInput<String>(description),
      language = pulumi.Input.asOptionalInput<String>(language),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      runtimeEnvironmentName = pulumi.Input.asOptionalInput<String>(runtimeEnvironmentName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      version = pulumi.Input.asOptionalInput<String>(version);

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
      automationAccountName: map['automationAccountName'] as String,
      defaultPackages: map['defaultPackages'] == null ? null : (map['defaultPackages'] as Map).cast<String, String>(),
      description: map['description'] == null ? null : map['description'] as String,
      language: map['language'] == null ? null : map['language'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      runtimeEnvironmentName: map['runtimeEnvironmentName'] == null ? null : map['runtimeEnvironmentName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

