// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'change_feed.dart';
import 'cors_rules.dart';
import 'delete_retention_policy.dart';
import 'last_access_time_tracking_policy.dart';
import 'restore_policy_properties.dart';

/// {@template pulumi_storage_blob_service_properties_args_doc}
/// The set of arguments for BlobServiceProperties.
/// {@endtemplate}
/// {@macro pulumi_storage_blob_service_properties_args_doc}
class BlobServicePropertiesArgs {
  /// The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  final pulumi.Input<String> accountName;
  /// Deprecated in favor of isVersioningEnabled property.
  final pulumi.Input<bool>? automaticSnapshotPolicyEnabled;
  /// The name of the blob Service within the specified storage account. Blob Service Name must be 'default'
  final pulumi.Input<String>? blobServicesName;
  /// The blob service properties for change feed events.
  final pulumi.Input<ChangeFeed>? changeFeed;
  /// The blob service properties for container soft delete.
  final pulumi.Input<DeleteRetentionPolicy>? containerDeleteRetentionPolicy;
  /// Specifies CORS rules for the Blob service. You can include up to five CorsRule elements in the request. If no CorsRule elements are included in the request body, all CORS rules will be deleted, and CORS will be disabled for the Blob service.
  final pulumi.Input<CorsRules>? cors;
  /// DefaultServiceVersion indicates the default version to use for requests to the Blob service if an incoming request’s version is not specified. Possible values include version 2008-10-27 and all more recent versions.
  final pulumi.Input<String>? defaultServiceVersion;
  /// The blob service properties for blob soft delete.
  final pulumi.Input<DeleteRetentionPolicy>? deleteRetentionPolicy;
  /// Versioning is enabled if set to true.
  final pulumi.Input<bool>? isVersioningEnabled;
  /// The blob service property to configure last access time based tracking policy.
  final pulumi.Input<LastAccessTimeTrackingPolicy>? lastAccessTimeTrackingPolicy;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The blob service properties for blob restore policy.
  final pulumi.Input<RestorePolicyProperties>? restorePolicy;

  /// Creates a new [BlobServicePropertiesArgs].
  /// [accountName] The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  /// [automaticSnapshotPolicyEnabled] Deprecated in favor of isVersioningEnabled property.
  /// [blobServicesName] The name of the blob Service within the specified storage account. Blob Service Name must be 'default'
  /// [changeFeed] The blob service properties for change feed events.
  /// [containerDeleteRetentionPolicy] The blob service properties for container soft delete.
  /// [cors] Specifies CORS rules for the Blob service. You can include up to five CorsRule elements in the request. If no CorsRule elements are included in the request body, all CORS rules will be deleted, and CORS will be disabled for the Blob service.
  /// [defaultServiceVersion] DefaultServiceVersion indicates the default version to use for requests to the Blob service if an incoming request’s version is not specified. Possible values include version 2008-10-27 and all more recent versions.
  /// [deleteRetentionPolicy] The blob service properties for blob soft delete.
  /// [isVersioningEnabled] Versioning is enabled if set to true.
  /// [lastAccessTimeTrackingPolicy] The blob service property to configure last access time based tracking policy.
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  /// [restorePolicy] The blob service properties for blob restore policy.
  BlobServicePropertiesArgs({
    required String accountName,
    bool? automaticSnapshotPolicyEnabled,
    String? blobServicesName,
    ChangeFeed? changeFeed,
    DeleteRetentionPolicy? containerDeleteRetentionPolicy,
    CorsRules? cors,
    String? defaultServiceVersion,
    DeleteRetentionPolicy? deleteRetentionPolicy,
    bool? isVersioningEnabled,
    LastAccessTimeTrackingPolicy? lastAccessTimeTrackingPolicy,
    required String resourceGroupName,
    RestorePolicyProperties? restorePolicy,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      automaticSnapshotPolicyEnabled = pulumi.Input.asOptionalInput<bool>(automaticSnapshotPolicyEnabled),
      blobServicesName = pulumi.Input.asOptionalInput<String>(blobServicesName),
      changeFeed = pulumi.Input.asOptionalInput<ChangeFeed>(changeFeed),
      containerDeleteRetentionPolicy = pulumi.Input.asOptionalInput<DeleteRetentionPolicy>(containerDeleteRetentionPolicy),
      cors = pulumi.Input.asOptionalInput<CorsRules>(cors),
      defaultServiceVersion = pulumi.Input.asOptionalInput<String>(defaultServiceVersion),
      deleteRetentionPolicy = pulumi.Input.asOptionalInput<DeleteRetentionPolicy>(deleteRetentionPolicy),
      isVersioningEnabled = pulumi.Input.asOptionalInput<bool>(isVersioningEnabled),
      lastAccessTimeTrackingPolicy = pulumi.Input.asOptionalInput<LastAccessTimeTrackingPolicy>(lastAccessTimeTrackingPolicy),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      restorePolicy = pulumi.Input.asOptionalInput<RestorePolicyProperties>(restorePolicy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'automaticSnapshotPolicyEnabled': ?automaticSnapshotPolicyEnabled,
      'blobServicesName': ?blobServicesName,
      'changeFeed': ?pulumi.Input.mapOptionalInputValue<ChangeFeed, Map<String, dynamic>>(changeFeed, (value) => value.toMap()),
      'containerDeleteRetentionPolicy': ?pulumi.Input.mapOptionalInputValue<DeleteRetentionPolicy, Map<String, dynamic>>(containerDeleteRetentionPolicy, (value) => value.toMap()),
      'cors': ?pulumi.Input.mapOptionalInputValue<CorsRules, Map<String, dynamic>>(cors, (value) => value.toMap()),
      'defaultServiceVersion': ?defaultServiceVersion,
      'deleteRetentionPolicy': ?pulumi.Input.mapOptionalInputValue<DeleteRetentionPolicy, Map<String, dynamic>>(deleteRetentionPolicy, (value) => value.toMap()),
      'isVersioningEnabled': ?isVersioningEnabled,
      'lastAccessTimeTrackingPolicy': ?pulumi.Input.mapOptionalInputValue<LastAccessTimeTrackingPolicy, Map<String, dynamic>>(lastAccessTimeTrackingPolicy, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'restorePolicy': ?pulumi.Input.mapOptionalInputValue<RestorePolicyProperties, Map<String, dynamic>>(restorePolicy, (value) => value.toMap()),
    };
  }

  factory BlobServicePropertiesArgs.fromMap(Map<String, dynamic> map) {
    return BlobServicePropertiesArgs(
      accountName: map['accountName'] as String,
      automaticSnapshotPolicyEnabled: map['automaticSnapshotPolicyEnabled'] == null ? null : map['automaticSnapshotPolicyEnabled'] as bool,
      blobServicesName: map['blobServicesName'] == null ? null : map['blobServicesName'] as String,
      changeFeed: map['changeFeed'] == null ? null : ChangeFeed.fromMap((map['changeFeed'] as Map).cast<String, dynamic>()),
      containerDeleteRetentionPolicy: map['containerDeleteRetentionPolicy'] == null ? null : DeleteRetentionPolicy.fromMap((map['containerDeleteRetentionPolicy'] as Map).cast<String, dynamic>()),
      cors: map['cors'] == null ? null : CorsRules.fromMap((map['cors'] as Map).cast<String, dynamic>()),
      defaultServiceVersion: map['defaultServiceVersion'] == null ? null : map['defaultServiceVersion'] as String,
      deleteRetentionPolicy: map['deleteRetentionPolicy'] == null ? null : DeleteRetentionPolicy.fromMap((map['deleteRetentionPolicy'] as Map).cast<String, dynamic>()),
      isVersioningEnabled: map['isVersioningEnabled'] == null ? null : map['isVersioningEnabled'] as bool,
      lastAccessTimeTrackingPolicy: map['lastAccessTimeTrackingPolicy'] == null ? null : LastAccessTimeTrackingPolicy.fromMap((map['lastAccessTimeTrackingPolicy'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      restorePolicy: map['restorePolicy'] == null ? null : RestorePolicyProperties.fromMap((map['restorePolicy'] as Map).cast<String, dynamic>()),
    );
  }
}

