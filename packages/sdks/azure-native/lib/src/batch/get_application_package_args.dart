// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_batch_get_application_package_args_doc}
/// Arguments for getApplicationPackage.
/// {@endtemplate}
/// {@macro pulumi_batch_get_application_package_args_doc}
class GetApplicationPackageArgs {
  /// A name for the Batch account which must be unique within the region. Batch account names must be between 3 and 24 characters in length and must use only numbers and lowercase letters. This name is used as part of the DNS name that is used to access the Batch service in the region in which the account is created. For example: http://accountname.region.batch.azure.com/.
  final pulumi.Input<String> accountName;
  /// The name of the application. This must be unique within the account.
  final pulumi.Input<String> applicationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The version of the application.
  final pulumi.Input<String> versionName;

  /// Creates a new [GetApplicationPackageArgs].
  /// [accountName] A name for the Batch account which must be unique within the region. Batch account names must be between 3 and 24 characters in length and must use only numbers and lowercase letters. This name is used as part of the DNS name that is used to access the Batch service in the region in which the account is created. For example: http://accountname.region.batch.azure.com/.
  /// [applicationName] The name of the application. This must be unique within the account.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [versionName] The version of the application.
  const GetApplicationPackageArgs({
    required this.accountName,
    required this.applicationName,
    required this.resourceGroupName,
    required this.versionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'applicationName': applicationName,
      'resourceGroupName': resourceGroupName,
      'versionName': versionName,
    };
  }

  factory GetApplicationPackageArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationPackageArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      applicationName: pulumi.Input.fromValue(map['applicationName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      versionName: pulumi.Input.fromValue(map['versionName'] as String),
    );
  }
}
