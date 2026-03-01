// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_dsc_configuration_dsc_configuration_args_doc}
/// The set of arguments for DscConfiguration.
/// {@endtemplate}
/// {@macro pulumi_automation_dsc_configuration_dsc_configuration_args_doc}
class DscConfigurationArgs {
  /// The name of the automation account in which the DSC Configuration is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> automationAccountName;
  /// The PowerShell DSC Configuration script.
  final pulumi.Input<String> contentEmbedded;
  /// Description to go with DSC Configuration.
  final pulumi.Input<String>? description;
  /// Must be the same location as the Automation Account. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Verbose log option.
  final pulumi.Input<bool>? logVerbose;
  /// Specifies the name of the DSC Configuration. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which the DSC Configuration is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DscConfigurationArgs].
  /// [automationAccountName] The name of the automation account in which the DSC Configuration is created. Changing this forces a new resource to be created.
  /// [contentEmbedded] The PowerShell DSC Configuration script.
  /// [description] Description to go with DSC Configuration.
  /// [location] Must be the same location as the Automation Account. Changing this forces a new resource to be created.
  /// [logVerbose] Verbose log option.
  /// [name] Specifies the name of the DSC Configuration. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the DSC Configuration is created. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  DscConfigurationArgs({
    required String automationAccountName,
    required String contentEmbedded,
    String? description,
    String? location,
    bool? logVerbose,
    String? name,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      contentEmbedded = pulumi.Input.asInput<String>(contentEmbedded),
      description = pulumi.Input.asOptionalInput<String>(description),
      location = pulumi.Input.asOptionalInput<String>(location),
      logVerbose = pulumi.Input.asOptionalInput<bool>(logVerbose),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'contentEmbedded': contentEmbedded,
      'description': ?description,
      'location': ?location,
      'logVerbose': ?logVerbose,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory DscConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return DscConfigurationArgs(
      automationAccountName: map['automationAccountName'] as String,
      contentEmbedded: map['contentEmbedded'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      logVerbose: map['logVerbose'] == null ? null : map['logVerbose'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

