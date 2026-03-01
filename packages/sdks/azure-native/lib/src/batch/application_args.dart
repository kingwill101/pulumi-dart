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
    required pulumi.Output<String> accountName,
    pulumi.Output<bool>? allowUpdates,
    pulumi.Output<String>? applicationName,
    pulumi.Output<String>? defaultVersion,
    pulumi.Output<String>? displayName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      allowUpdates = pulumi.Input.asOptionalInput<bool>(allowUpdates),
      applicationName = pulumi.Input.asOptionalInput<String>(applicationName),
      defaultVersion = pulumi.Input.asOptionalInput<String>(defaultVersion),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      allowUpdates: map['allowUpdates'] == null ? null : pulumi.Output.create<bool>(map['allowUpdates'] as bool),
      applicationName: map['applicationName'] == null ? null : pulumi.Output.create<String>(map['applicationName'] as String),
      defaultVersion: map['defaultVersion'] == null ? null : pulumi.Output.create<String>(map['defaultVersion'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

