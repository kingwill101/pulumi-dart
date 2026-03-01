// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_streamanalytics_job_storage_account_job_storage_account_args_doc}
/// The set of arguments for JobStorageAccount.
/// {@endtemplate}
/// {@macro pulumi_streamanalytics_job_storage_account_job_storage_account_args_doc}
class JobStorageAccountArgs {
  /// The authentication mode for the Stream Analytics Job's Storage Account. Possible values are `ConnectionString`, and `Msi`.
  final pulumi.Input<String> authenticationMode;
  final pulumi.Input<String>? storageAccountKey;
  final pulumi.Input<String> storageAccountName;
  /// The ID of the Stream Analytics Job. Changing this forces a new resource to be created.
  final pulumi.Input<String> streamAnalyticsJobId;

  /// Creates a new [JobStorageAccountArgs].
  /// [authenticationMode] The authentication mode for the Stream Analytics Job's Storage Account. Possible values are `ConnectionString`, and `Msi`.
  /// [storageAccountKey] Optional.
  /// [storageAccountName] Required.
  /// [streamAnalyticsJobId] The ID of the Stream Analytics Job. Changing this forces a new resource to be created.
  JobStorageAccountArgs({
    required String authenticationMode,
    String? storageAccountKey,
    required String storageAccountName,
    required String streamAnalyticsJobId,
  }) :
      authenticationMode = pulumi.Input.asInput<String>(authenticationMode),
      storageAccountKey = pulumi.Input.asOptionalInput<String>(storageAccountKey),
      storageAccountName = pulumi.Input.asInput<String>(storageAccountName),
      streamAnalyticsJobId = pulumi.Input.asInput<String>(streamAnalyticsJobId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMode': authenticationMode,
      'storageAccountKey': ?storageAccountKey,
      'storageAccountName': storageAccountName,
      'streamAnalyticsJobId': streamAnalyticsJobId,
    };
  }

  factory JobStorageAccountArgs.fromMap(Map<String, dynamic> map) {
    return JobStorageAccountArgs(
      authenticationMode: map['authenticationMode'] as String,
      storageAccountKey: map['storageAccountKey'] == null ? null : map['storageAccountKey'] as String,
      storageAccountName: map['storageAccountName'] as String,
      streamAnalyticsJobId: map['streamAnalyticsJobId'] as String,
    );
  }
}

