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
    this.accountName,
    this.localAuth,
    this.location,
    this.regionalAffinity,
    this.reporting,
    required this.resourceGroupName,
    this.scalableExecution,
    this.tags,
  });

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
      accountName: map['accountName'] == null ? null : (map['accountName'] as String).input(),
      localAuth: map['localAuth'] == null ? null : (map['localAuth'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      regionalAffinity: map['regionalAffinity'] == null ? null : (map['regionalAffinity'] as String).input(),
      reporting: map['reporting'] == null ? null : (map['reporting'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      scalableExecution: map['scalableExecution'] == null ? null : (map['scalableExecution'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

