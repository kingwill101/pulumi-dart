// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azureplaywrightservice_account_args_doc}
/// The set of arguments for Account.
/// {@endtemplate}
/// {@macro pulumi_azureplaywrightservice_account_args_doc}
class AccountArgs {
  /// Name of account.
  final pulumi.Input<String>? accountName;
  /// When enabled, this feature allows the workspace to use local auth (through service access token) for executing operations.
  final pulumi.Input<String>? localAuth;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// This property sets the connection region for Playwright client workers to cloud-hosted browsers. If enabled, workers connect to browsers in the closest Azure region, ensuring lower latency. If disabled, workers connect to browsers in the Azure region in which the workspace was initially created.
  final pulumi.Input<String>? regionalAffinity;
  /// When enabled, this feature allows the workspace to upload and display test results, including artifacts like traces and screenshots, in the Playwright portal. This enables faster and more efficient troubleshooting.
  final pulumi.Input<String>? reporting;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// When enabled, Playwright client workers can connect to cloud-hosted browsers. This can increase the number of parallel workers for a test run, significantly minimizing test completion durations.
  final pulumi.Input<String>? scalableExecution;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AccountArgs].
  /// [accountName] Name of account.
  /// [localAuth] When enabled, this feature allows the workspace to use local auth (through service access token) for executing operations.
  /// [location] The geo-location where the resource lives
  /// [regionalAffinity] This property sets the connection region for Playwright client workers to cloud-hosted browsers. If enabled, workers connect to browsers in the closest Azure region, ensuring lower latency. If disabled, workers connect to browsers in the Azure region in which the workspace was initially created.
  /// [reporting] When enabled, this feature allows the workspace to upload and display test results, including artifacts like traces and screenshots, in the Playwright portal. This enables faster and more efficient troubleshooting.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scalableExecution] When enabled, Playwright client workers can connect to cloud-hosted browsers. This can increase the number of parallel workers for a test run, significantly minimizing test completion durations.
  /// [tags] Resource tags.
  AccountArgs({
    pulumi.Output<String>? accountName,
    pulumi.Output<String>? localAuth,
    pulumi.Output<String>? location,
    pulumi.Output<String>? regionalAffinity,
    pulumi.Output<String>? reporting,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? scalableExecution,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      accountName = pulumi.Input.asOptionalInput<String>(accountName),
      localAuth = pulumi.Input.asOptionalInput<String>(localAuth),
      location = pulumi.Input.asOptionalInput<String>(location),
      regionalAffinity = pulumi.Input.asOptionalInput<String>(regionalAffinity),
      reporting = pulumi.Input.asOptionalInput<String>(reporting),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scalableExecution = pulumi.Input.asOptionalInput<String>(scalableExecution),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'localAuth': ?localAuth,
      'location': ?location,
      'regionalAffinity': ?regionalAffinity,
      'reporting': ?reporting,
      'resourceGroupName': resourceGroupName,
      'scalableExecution': ?scalableExecution,
      'tags': ?tags,
    };
  }

  factory AccountArgs.fromMap(Map<String, dynamic> map) {
    return AccountArgs(
      accountName: map['accountName'] == null ? null : pulumi.Output.create<String>(map['accountName'] as String),
      localAuth: map['localAuth'] == null ? null : pulumi.Output.create<String>(map['localAuth'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      regionalAffinity: map['regionalAffinity'] == null ? null : pulumi.Output.create<String>(map['regionalAffinity'] as String),
      reporting: map['reporting'] == null ? null : pulumi.Output.create<String>(map['reporting'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scalableExecution: map['scalableExecution'] == null ? null : pulumi.Output.create<String>(map['scalableExecution'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

