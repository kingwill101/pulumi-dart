// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_batch_application_args_doc}
/// The set of arguments for Application.
/// {@endtemplate}
/// {@macro pulumi_batch_application_args_doc}
class ApplicationArgs {
  /// A name for the Batch account which must be unique within the region. Batch account names must be between 3 and 24 characters in length and must use only numbers and lowercase letters. This name is used as part of the DNS name that is used to access the Batch service in the region in which the account is created. For example: http://accountname.region.batch.azure.com/.
  final pulumi.Input<String> accountName;
  /// A value indicating whether packages within the application may be overwritten using the same version string.
  final pulumi.Input<bool>? allowUpdates;
  /// The name of the application. This must be unique within the account.
  final pulumi.Input<String>? applicationName;
  /// The package to use if a client requests the application but does not specify a version. This property can only be set to the name of an existing package.
  final pulumi.Input<String>? defaultVersion;
  /// The display name for the application.
  final pulumi.Input<String>? displayName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The tags of the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ApplicationArgs].
  /// [accountName] A name for the Batch account which must be unique within the region. Batch account names must be between 3 and 24 characters in length and must use only numbers and lowercase letters. This name is used as part of the DNS name that is used to access the Batch service in the region in which the account is created. For example: http://accountname.region.batch.azure.com/.
  /// [allowUpdates] A value indicating whether packages within the application may be overwritten using the same version string.
  /// [applicationName] The name of the application. This must be unique within the account.
  /// [defaultVersion] The package to use if a client requests the application but does not specify a version. This property can only be set to the name of an existing package.
  /// [displayName] The display name for the application.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] The tags of the resource.
  ApplicationArgs({
    required this.accountName,
    this.allowUpdates,
    this.applicationName,
    this.defaultVersion,
    this.displayName,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'allowUpdates': ?allowUpdates,
      'applicationName': ?applicationName,
      'defaultVersion': ?defaultVersion,
      'displayName': ?displayName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ApplicationArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationArgs(
      accountName: (map['accountName'] as String).input(),
      allowUpdates: map['allowUpdates'] == null ? null : (map['allowUpdates']! as bool).input(),
      applicationName: map['applicationName'] == null ? null : (map['applicationName']! as String).input(),
      defaultVersion: map['defaultVersion'] == null ? null : (map['defaultVersion']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

