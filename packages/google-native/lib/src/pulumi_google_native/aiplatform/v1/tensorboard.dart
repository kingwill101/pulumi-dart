import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_aiplatform_v1_encryption_spec_response.dart';
import 'tensorboard_args.dart';

/// Creates a Tensorboard.
/// Auto-naming is currently not supported for this resource.
class Tensorboard extends CustomResource {
  /// Consumer project Cloud Storage path prefix used to store blob data, which can either be a bucket or directory. Does not end with a '/'.
  late final Output<String> blobStoragePathPrefix;

  /// Timestamp when this Tensorboard was created.
  late final Output<String> createTime;

  /// Description of this Tensorboard.
  late final Output<String> description;

  /// User provided name of this Tensorboard.
  late final Output<String> displayName;

  /// Customer-managed encryption key spec for a Tensorboard. If set, this Tensorboard and all sub-resources of this Tensorboard will be secured by this key.
  late final Output<GoogleCloudAiplatformV1EncryptionSpecResponse>
      encryptionSpec;

  /// Used to perform a consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  late final Output<String> etag;

  /// Used to indicate if the TensorBoard instance is the default one. Each project & region can have at most one default TensorBoard instance. Creation of a default TensorBoard instance and updating an existing TensorBoard instance to be default will mark all other TensorBoard instances (if any) as non default.
  late final Output<bool> isDefault;

  /// The labels with user-defined metadata to organize your Tensorboards. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one Tensorboard (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Name of the Tensorboard. Format: `projects/{project}/locations/{location}/tensorboards/{tensorboard}`
  late final Output<String> name;
  late final Output<String> project;

  /// The number of Runs stored in this Tensorboard.
  late final Output<int> runCount;

  /// Timestamp when this Tensorboard was last updated.
  late final Output<String> updateTime;

  Tensorboard(
    String name, {
    TensorboardArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:aiplatform/v1:Tensorboard',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.blobStoragePathPrefix =
        registerOutput<String>('blobStoragePathPrefix');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.encryptionSpec =
        registerOutput<GoogleCloudAiplatformV1EncryptionSpecResponse>(
            'encryptionSpec');
    this.etag = registerOutput<String>('etag');
    this.isDefault = registerOutput<bool>('isDefault');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.runCount = registerOutput<int>('runCount');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
