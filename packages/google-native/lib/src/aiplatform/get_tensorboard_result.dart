// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_encryption_spec_response.dart';

/// Result data returned by getTensorboard.
class GetTensorboardResult {
  /// Consumer project Cloud Storage path prefix used to store blob data, which can either be a bucket or directory. Does not end with a '/'.
  final String blobStoragePathPrefix;

  /// Timestamp when this Tensorboard was created.
  final String createTime;

  /// Description of this Tensorboard.
  final String description;

  /// User provided name of this Tensorboard.
  final String displayName;

  /// Customer-managed encryption key spec for a Tensorboard. If set, this Tensorboard and all sub-resources of this Tensorboard will be secured by this key.
  final GoogleCloudAiplatformV1EncryptionSpecResponse encryptionSpec;

  /// Used to perform a consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final String etag;

  /// Used to indicate if the TensorBoard instance is the default one. Each project & region can have at most one default TensorBoard instance. Creation of a default TensorBoard instance and updating an existing TensorBoard instance to be default will mark all other TensorBoard instances (if any) as non default.
  final bool isDefault;

  /// The labels with user-defined metadata to organize your Tensorboards. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one Tensorboard (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  final Map<String, String> labels;

  /// Name of the Tensorboard. Format: `projects/{project}/locations/{location}/tensorboards/{tensorboard}`
  final String name;

  /// The number of Runs stored in this Tensorboard.
  final int runCount;

  /// Timestamp when this Tensorboard was last updated.
  final String updateTime;

  /// Creates a new [GetTensorboardResult].
  /// [blobStoragePathPrefix] Consumer project Cloud Storage path prefix used to store blob data, which can either be a bucket or directory. Does not end with a '/'.
  /// [createTime] Timestamp when this Tensorboard was created.
  /// [description] Description of this Tensorboard.
  /// [displayName] User provided name of this Tensorboard.
  /// [encryptionSpec] Customer-managed encryption key spec for a Tensorboard. If set, this Tensorboard and all sub-resources of this Tensorboard will be secured by this key.
  /// [etag] Used to perform a consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [isDefault] Used to indicate if the TensorBoard instance is the default one. Each project & region can have at most one default TensorBoard instance. Creation of a default TensorBoard instance and updating an existing TensorBoard instance to be default will mark all other TensorBoard instances (if any) as non default.
  /// [labels] The labels with user-defined metadata to organize your Tensorboards. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one Tensorboard (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  /// [name] Name of the Tensorboard. Format: `projects/{project}/locations/{location}/tensorboards/{tensorboard}`
  /// [runCount] The number of Runs stored in this Tensorboard.
  /// [updateTime] Timestamp when this Tensorboard was last updated.
  GetTensorboardResult({
    required this.blobStoragePathPrefix,
    required this.createTime,
    required this.description,
    required this.displayName,
    required this.encryptionSpec,
    required this.etag,
    required this.isDefault,
    required this.labels,
    required this.name,
    required this.runCount,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['blobStoragePathPrefix'] = blobStoragePathPrefix;
    map['createTime'] = createTime;
    map['description'] = description;
    map['displayName'] = displayName;
    map['encryptionSpec'] = encryptionSpec.toMap();
    map['etag'] = etag;
    map['isDefault'] = isDefault;
    map['labels'] = labels;
    map['name'] = name;
    map['runCount'] = runCount;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetTensorboardResult.fromMap(Map<String, dynamic> map) {
    return GetTensorboardResult(
      blobStoragePathPrefix: map['blobStoragePathPrefix'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      encryptionSpec: GoogleCloudAiplatformV1EncryptionSpecResponse.fromMap(
          (map['encryptionSpec'] as Map).cast<String, dynamic>()),
      etag: map['etag'] as String,
      isDefault: map['isDefault'] as bool,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      runCount: map['runCount'] as int,
      updateTime: map['updateTime'] as String,
    );
  }
}
