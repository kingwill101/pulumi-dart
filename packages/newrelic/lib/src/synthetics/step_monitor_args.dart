// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'step_monitor_location_private.dart';
import 'step_monitor_step.dart';
import 'step_monitor_tag.dart';

/// {@template pulumi_synthetics_step_monitor_step_monitor_args_doc}
/// The set of arguments for StepMonitor.
/// {@endtemplate}
/// {@macro pulumi_synthetics_step_monitor_step_monitor_args_doc}
class StepMonitorArgs {
  /// The account in which the Synthetics monitor will be created.
  final pulumi.Input<String>? accountId;
  /// The multiple browsers list on which synthetic monitors will run. Valid values are `CHROME` and `FIREFOX`.
  final pulumi.Input<List<String>>? browsers;
  /// The multiple devices list on which synthetic monitors will run. Valid values are `DESKTOP`, `MOBILE_LANDSCAPE`, `MOBILE_PORTRAIT`, `TABLET_LANDSCAPE` and `TABLET_PORTRAIT`.
  final pulumi.Input<List<String>>? devices;
  /// Capture a screenshot during job execution.
  final pulumi.Input<bool>? enableScreenshotOnFailureAndScript;
  /// The location the monitor will run from. At least one of `locations_public` or `location_private` is required. See Nested locations_private blocks below for details.
  final pulumi.Input<List<StepMonitorLocationPrivate>>? locationPrivates;
  /// The location the monitor will run from. Check out [this page](https://docs.newrelic.com/docs/synthetics/synthetic-monitoring/administration/synthetic-public-minion-ips/) for a list of valid public locations. You don't need the `AWS_` prefix as the provider uses NerdGraph. At least one of either `locations_public` or `location_private` is required.
  final pulumi.Input<List<String>>? locationsPublics;
  /// The name for the monitor.
  final pulumi.Input<String>? name;
  /// The interval at which this monitor should run. Valid values are `EVERY_MINUTE`, `EVERY_5_MINUTES`, `EVERY_10_MINUTES`, `EVERY_15_MINUTES`, `EVERY_30_MINUTES`, `EVERY_HOUR`, `EVERY_6_HOURS`, `EVERY_12_HOURS`, or `EVERY_DAY`.
  final pulumi.Input<String> period;
  /// The runtime that the monitor will use to run jobs (`CHROME_BROWSER`).
  final pulumi.Input<String>? runtimeType_;
  /// The specific version of the runtime type selected (`100`).
  ///
  /// > **WARNING:**  The <b style="color:red;">end-of-life</b> of the **Synthetics Legacy Runtime** took effect on <b style="color:red;">October 22, 2024</b>, implying that support for using the deprecated Synthetics Legacy Runtime with **new and existing** Synthetic monitors <b style="color:maroon;">officially ended as of October 22, 2024</b>. As a consequence of this API change, all requests associated with Synthetic Monitors (except Ping Monitors) going out of the New Relic Terraform Provider will be blocked by an API error if they include values corresponding to the legacy runtime or blank runtime values.
  /// <br><br>
  /// Following these changes, starting with <b style="color:red;">v3.51.0</b> of the New Relic Terraform Provider, configuration of **new and existing** Synthetic monitors without runtime attributes (or) comprising runtime attributes signifying the legacy runtime will be deemed invalid (this applies to all Synthetic monitor resources, except `newrelic.synthetics.Monitor` with type `SIMPLE`). If your monitors' configuration is not updated with new runtime values, you will see the consequences stated here. New Synthetic monitors created after August 26, 2024 already adhere to these restrictions, as part of the first phase of the EOL.
  /// <br><br>
  /// We kindly recommend that you upgrade your Synthetic Monitors to the new runtime as soon as possible if they are still using the legacy runtime, to avoid seeing the aforementioned consequences. Please check out this guide in the documentation of the Terraform Provider (specifically, the table at the bottom of the guide, if you're looking for updates to be made to the configuration of Synthetic monitors) and [this announcement](https://forum.newrelic.com/s/hubtopic/aAXPh0000001brxOAA/upcoming-endoflife-legacy-synthetics-runtimes-and-cpm) for more details on the EOL, actions needed, relevant resources, and more.
  /// <br><br>
  /// You would not be affected by the EOL if your Synthetic monitors' Terraform configuration comprises new runtime values.
  final pulumi.Input<String>? runtimeTypeVersion;
  /// The run state of the monitor. (`ENABLED` or `DISABLED`).
  final pulumi.Input<String> status;
  /// The steps that make up the script the monitor will run. See Nested steps blocks below for details.
  final pulumi.Input<List<StepMonitorStep>> steps;
  /// The tags that will be associated with the monitor. See Nested tag blocks below for details.
  final pulumi.Input<List<StepMonitorTag>>? tags;
  /// A boolean attribute to be set true by the customer, if they would like to use the unsupported legacy runtime of Synthetic Monitors by means of an exemption given until the October 22, 2024 Legacy Runtime EOL. Setting this attribute to true would allow skipping validation performed by the the New Relic Terraform Provider starting v3.43.0 to disallow using the legacy runtime with new monitors. This would, hence, allow creation of monitors in the legacy runtime until the October 22, 2024 Legacy Runtime EOL, if exempt by the API.
  final pulumi.Input<bool>? useUnsupportedLegacyRuntime;

  /// Creates a new [StepMonitorArgs].
  /// [accountId] The account in which the Synthetics monitor will be created.
  /// [browsers] The multiple browsers list on which synthetic monitors will run. Valid values are `CHROME` and `FIREFOX`.
  /// [devices] The multiple devices list on which synthetic monitors will run. Valid values are `DESKTOP`, `MOBILE_LANDSCAPE`, `MOBILE_PORTRAIT`, `TABLET_LANDSCAPE` and `TABLET_PORTRAIT`.
  /// [enableScreenshotOnFailureAndScript] Capture a screenshot during job execution.
  /// [locationPrivates] The location the monitor will run from. At least one of `locations_public` or `location_private` is required. See Nested locations_private blocks below for details.
  /// [locationsPublics] The location the monitor will run from. Check out [this page](https://docs.newrelic.com/docs/synthetics/synthetic-monitoring/administration/synthetic-public-minion-ips/) for a list of valid public locations. You don't need the `AWS_` prefix as the provider uses NerdGraph. At least one of either `locations_public` or `location_private` is required.
  /// [name] The name for the monitor.
  /// [period] The interval at which this monitor should run. Valid values are `EVERY_MINUTE`, `EVERY_5_MINUTES`, `EVERY_10_MINUTES`, `EVERY_15_MINUTES`, `EVERY_30_MINUTES`, `EVERY_HOUR`, `EVERY_6_HOURS`, `EVERY_12_HOURS`, or `EVERY_DAY`.
  /// [runtimeType_] The runtime that the monitor will use to run jobs (`CHROME_BROWSER`).
  /// [runtimeTypeVersion] The specific version of the runtime type selected (`100`).
  /// [status] The run state of the monitor. (`ENABLED` or `DISABLED`).
  /// [steps] The steps that make up the script the monitor will run. See Nested steps blocks below for details.
  /// [tags] The tags that will be associated with the monitor. See Nested tag blocks below for details.
  /// [useUnsupportedLegacyRuntime] A boolean attribute to be set true by the customer, if they would like to use the unsupported legacy runtime of Synthetic Monitors by means of an exemption given until the October 22, 2024 Legacy Runtime EOL. Setting this attribute to true would allow skipping validation performed by the the New Relic Terraform Provider starting v3.43.0 to disallow using the legacy runtime with new monitors. This would, hence, allow creation of monitors in the legacy runtime until the October 22, 2024 Legacy Runtime EOL, if exempt by the API.
  StepMonitorArgs({
    String? accountId,
    List<String>? browsers,
    List<String>? devices,
    bool? enableScreenshotOnFailureAndScript,
    List<StepMonitorLocationPrivate>? locationPrivates,
    List<String>? locationsPublics,
    String? name,
    required String period,
    String? runtimeType_,
    String? runtimeTypeVersion,
    required String status,
    required List<StepMonitorStep> steps,
    List<StepMonitorTag>? tags,
    bool? useUnsupportedLegacyRuntime,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      browsers = pulumi.Input.asOptionalInput<List<String>>(browsers),
      devices = pulumi.Input.asOptionalInput<List<String>>(devices),
      enableScreenshotOnFailureAndScript = pulumi.Input.asOptionalInput<bool>(enableScreenshotOnFailureAndScript),
      locationPrivates = pulumi.Input.asOptionalInput<List<StepMonitorLocationPrivate>>(locationPrivates),
      locationsPublics = pulumi.Input.asOptionalInput<List<String>>(locationsPublics),
      name = pulumi.Input.asOptionalInput<String>(name),
      period = pulumi.Input.asInput<String>(period),
      runtimeType_ = pulumi.Input.asOptionalInput<String>(runtimeType_),
      runtimeTypeVersion = pulumi.Input.asOptionalInput<String>(runtimeTypeVersion),
      status = pulumi.Input.asInput<String>(status),
      steps = pulumi.Input.asInput<List<StepMonitorStep>>(steps),
      tags = pulumi.Input.asOptionalInput<List<StepMonitorTag>>(tags),
      useUnsupportedLegacyRuntime = pulumi.Input.asOptionalInput<bool>(useUnsupportedLegacyRuntime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'browsers': ?browsers,
      'devices': ?devices,
      'enableScreenshotOnFailureAndScript': ?enableScreenshotOnFailureAndScript,
      'locationPrivates': ?pulumi.Input.mapOptionalInputValue<List<StepMonitorLocationPrivate>, List<Map<String, dynamic>>>(locationPrivates, (value) => pulumi.Input.encodeList<StepMonitorLocationPrivate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'locationsPublics': ?locationsPublics,
      'name': ?name,
      'period': period,
      'runtimeType': ?runtimeType_,
      'runtimeTypeVersion': ?runtimeTypeVersion,
      'status': status,
      'steps': pulumi.Input.mapInputValue<List<StepMonitorStep>, List<Map<String, dynamic>>>(steps, (value) => pulumi.Input.encodeList<StepMonitorStep, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?pulumi.Input.mapOptionalInputValue<List<StepMonitorTag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<StepMonitorTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'useUnsupportedLegacyRuntime': ?useUnsupportedLegacyRuntime,
    };
  }

  factory StepMonitorArgs.fromMap(Map<String, dynamic> map) {
    return StepMonitorArgs(
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      browsers: map['browsers'] == null ? null : (map['browsers'] as List).cast<String>(),
      devices: map['devices'] == null ? null : (map['devices'] as List).cast<String>(),
      enableScreenshotOnFailureAndScript: map['enableScreenshotOnFailureAndScript'] == null ? null : map['enableScreenshotOnFailureAndScript'] as bool,
      locationPrivates: map['locationPrivates'] == null ? null : pulumi.Input.decodeList<StepMonitorLocationPrivate>(map['locationPrivates'], (value) => StepMonitorLocationPrivate.fromMap((value as Map).cast<String, dynamic>())),
      locationsPublics: map['locationsPublics'] == null ? null : (map['locationsPublics'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      period: map['period'] as String,
      runtimeType_: map['runtimeType'] == null ? null : map['runtimeType'] as String,
      runtimeTypeVersion: map['runtimeTypeVersion'] == null ? null : map['runtimeTypeVersion'] as String,
      status: map['status'] as String,
      steps: pulumi.Input.decodeList<StepMonitorStep>(map['steps'], (value) => StepMonitorStep.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<StepMonitorTag>(map['tags'], (value) => StepMonitorTag.fromMap((value as Map).cast<String, dynamic>())),
      useUnsupportedLegacyRuntime: map['useUnsupportedLegacyRuntime'] == null ? null : map['useUnsupportedLegacyRuntime'] as bool,
    );
  }
}

