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
  final pulumi.Input<String?>? description;
  /// Gets or sets the frequency at which the watcher is invoked.
  final pulumi.Input<double?>? executionFrequencyInSeconds;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Gets or sets the name of the script the watcher is attached to, i.e. the name of an existing runbook.
  final pulumi.Input<String?>? scriptName;
  /// Gets or sets the parameters of the script.
  final pulumi.Input<Map<String, String>?>? scriptParameters;
  /// Gets or sets the name of the hybrid worker group the watcher will run on.
  final pulumi.Input<String?>? scriptRunOn;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The watcher name.
  final pulumi.Input<String?>? watcherName;

  /// Creates a new [WatcherArgs].
  /// [automationAccountName] The name of the automation account.
  /// [description] Gets or sets the description.
  /// [executionFrequencyInSeconds] Gets or sets the frequency at which the watcher is invoked.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scriptName] Gets or sets the name of the script the watcher is attached to, i.e. the name of an existing runbook.
  /// [scriptParameters] Gets or sets the parameters of the script.
  /// [scriptRunOn] Gets or sets the name of the hybrid worker group the watcher will run on.
  /// [tags] Resource tags.
  /// [watcherName] The watcher name.
  const WatcherArgs({
    required this.automationAccountName,
    this.description,
    this.executionFrequencyInSeconds,
    this.location,
    required this.resourceGroupName,
    this.scriptName,
    this.scriptParameters,
    this.scriptRunOn,
    this.tags,
    this.watcherName,
  });

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
      automationAccountName: pulumi.Input.fromValue(map['automationAccountName'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionFrequencyInSeconds: (() { final guardedValue = map['executionFrequencyInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      scriptName: (() { final guardedValue = map['scriptName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scriptParameters: (() { final guardedValue = map['scriptParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      scriptRunOn: (() { final guardedValue = map['scriptRunOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      watcherName: (() { final guardedValue = map['watcherName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
