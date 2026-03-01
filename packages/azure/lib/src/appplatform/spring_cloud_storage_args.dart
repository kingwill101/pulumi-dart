// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_spring_cloud_storage_spring_cloud_storage_args_doc}
/// The set of arguments for SpringCloudStorage.
/// {@endtemplate}
/// {@macro pulumi_appplatform_spring_cloud_storage_spring_cloud_storage_args_doc}
class SpringCloudStorageArgs {
  /// The name which should be used for this Spring Cloud Storage. Changing this forces a new Spring Cloud Storage to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Spring Cloud Service where the Spring Cloud Storage should exist. Changing this forces a new Spring Cloud Storage to be created.
  final pulumi.Input<String> springCloudServiceId;
  /// The access key of the Azure Storage Account.
  final pulumi.Input<String> storageAccountKey;
  /// The account name of the Azure Storage Account.
  final pulumi.Input<String> storageAccountName;

  /// Creates a new [SpringCloudStorageArgs].
  /// [name] The name which should be used for this Spring Cloud Storage. Changing this forces a new Spring Cloud Storage to be created.
  /// [springCloudServiceId] The ID of the Spring Cloud Service where the Spring Cloud Storage should exist. Changing this forces a new Spring Cloud Storage to be created.
  /// [storageAccountKey] The access key of the Azure Storage Account.
  /// [storageAccountName] The account name of the Azure Storage Account.
  SpringCloudStorageArgs({
    String? name,
    required String springCloudServiceId,
    required String storageAccountKey,
    required String storageAccountName,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      springCloudServiceId = pulumi.Input.asInput<String>(springCloudServiceId),
      storageAccountKey = pulumi.Input.asInput<String>(storageAccountKey),
      storageAccountName = pulumi.Input.asInput<String>(storageAccountName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'springCloudServiceId': springCloudServiceId,
      'storageAccountKey': storageAccountKey,
      'storageAccountName': storageAccountName,
    };
  }

  factory SpringCloudStorageArgs.fromMap(Map<String, dynamic> map) {
    return SpringCloudStorageArgs(
      name: map['name'] == null ? null : map['name'] as String,
      springCloudServiceId: map['springCloudServiceId'] as String,
      storageAccountKey: map['storageAccountKey'] as String,
      storageAccountName: map['storageAccountName'] as String,
    );
  }
}

