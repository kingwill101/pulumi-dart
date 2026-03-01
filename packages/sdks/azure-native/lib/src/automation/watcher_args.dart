// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_watcher_args_doc}
/// The set of arguments for Watcher.
/// {@endtemplate}
/// {@macro pulumi_automation_watcher_args_doc}
class WatcherArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// Gets or sets the description.
  final pulumi.Input<String>? description;
  /// Gets or sets the frequency at which the watcher is invoked.
  final pulumi.Input<double>? executionFrequencyInSeconds;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Gets or sets the name of the script the watcher is attached to, i.e. the name of an existing runbook.
  final pulumi.Input<String>? scriptName;
  /// Gets or sets the parameters of the script.
  final pulumi.Input<Map<String, String>>? scriptParameters;
  /// Gets or sets the name of the hybrid worker group the watcher will run on.
  final pulumi.Input<String>? scriptRunOn;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The watcher name.
  final pulumi.Input<String>? watcherName;

  /// Creates a new [WatcherArgs].
  /// [automationAccountName] The name of the automation account.
  /// [description] Gets or sets the description.
  /// [executionFrequencyInSeconds] Gets or sets the frequency at which the watcher is invoked.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] Name of an Azure Resource group.
  /// [scriptName] Gets or sets the name of the script the watcher is attached to, i.e. the name of an existing runbook.
  /// [scriptParameters] Gets or sets the parameters of the script.
  /// [scriptRunOn] Gets or sets the name of the hybrid worker group the watcher will run on.
  /// [tags] Resource tags.
  /// [watcherName] The watcher name.
  WatcherArgs({
    required pulumi.Output<String> automationAccountName,
    pulumi.Output<String>? description,
    pulumi.Output<double>? executionFrequencyInSeconds,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? scriptName,
    pulumi.Output<Map<String, String>>? scriptParameters,
    pulumi.Output<String>? scriptRunOn,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? watcherName,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      description = pulumi.Input.asOptionalInput<String>(description),
      executionFrequencyInSeconds = pulumi.Input.asOptionalInput<double>(executionFrequencyInSeconds),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scriptName = pulumi.Input.asOptionalInput<String>(scriptName),
      scriptParameters = pulumi.Input.asOptionalInput<Map<String, String>>(scriptParameters),
      scriptRunOn = pulumi.Input.asOptionalInput<String>(scriptRunOn),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      watcherName = pulumi.Input.asOptionalInput<String>(watcherName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'description': ?description,
      'executionFrequencyInSeconds': ?executionFrequencyInSeconds,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'scriptName': ?scriptName,
      'scriptParameters': ?scriptParameters,
      'scriptRunOn': ?scriptRunOn,
      'tags': ?tags,
      'watcherName': ?watcherName,
    };
  }

  factory WatcherArgs.fromMap(Map<String, dynamic> map) {
    return WatcherArgs(
      automationAccountName: pulumi.Output.create<String>(map['automationAccountName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      executionFrequencyInSeconds: map['executionFrequencyInSeconds'] == null ? null : pulumi.Output.create<double>(map['executionFrequencyInSeconds'] as double),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scriptName: map['scriptName'] == null ? null : pulumi.Output.create<String>(map['scriptName'] as String),
      scriptParameters: map['scriptParameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['scriptParameters'] as Map).cast<String, String>()),
      scriptRunOn: map['scriptRunOn'] == null ? null : pulumi.Output.create<String>(map['scriptRunOn'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      watcherName: map['watcherName'] == null ? null : pulumi.Output.create<String>(map['watcherName'] as String),
    );
  }
}

