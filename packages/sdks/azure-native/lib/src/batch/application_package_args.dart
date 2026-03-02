// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_batch_application_package_args_doc}
/// The set of arguments for ApplicationPackage.
/// {@endtemplate}
/// {@macro pulumi_batch_application_package_args_doc}
class ApplicationPackageArgs {
  /// A name for the Batch account which must be unique within the region. Batch account names must be between 3 and 24 characters in length and must use only numbers and lowercase letters. This name is used as part of the DNS name that is used to access the Batch service in the region in which the account is created. For example: http://accountname.region.batch.azure.com/.
  final pulumi.Input<String> accountName;
  /// The name of the application. This must be unique within the account.
  final pulumi.Input<String> applicationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The tags of the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The version of the application.
  final pulumi.Input<String>? versionName;

  /// Creates a new [ApplicationPackageArgs].
  /// [accountName] A name for the Batch account which must be unique within the region. Batch account names must be between 3 and 24 characters in length and must use only numbers and lowercase letters. This name is used as part of the DNS name that is used to access the Batch service in the region in which the account is created. For example: http://accountname.region.batch.azure.com/.
  /// [applicationName] The name of the application. This must be unique within the account.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] The tags of the resource.
  /// [versionName] The version of the application.
  ApplicationPackageArgs({
    required this.accountName,
    required this.applicationName,
    required this.resourceGroupName,
    this.tags,
    this.versionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'applicationName': applicationName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'versionName': ?versionName,
    };
  }

  factory ApplicationPackageArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationPackageArgs(
      accountName: (map['accountName'] as String).input(),
      applicationName: (map['applicationName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      versionName: map['versionName'] == null ? null : (map['versionName']! as String).input(),
    );
  }
}

