// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_encryption_spec.dart';

/// The set of arguments for Tensorboard.
class TensorboardAiplatformV1beta1Args {
  /// Description of this Tensorboard.
  final pulumi.Input<String>? description;

  /// User provided name of this Tensorboard.
  final pulumi.Input<String> displayName;

  /// Customer-managed encryption key spec for a Tensorboard. If set, this Tensorboard and all sub-resources of this Tensorboard will be secured by this key.
  final pulumi.Input<GoogleCloudAiplatformV1beta1EncryptionSpec>?
      encryptionSpec;

  /// Used to perform a consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final pulumi.Input<String>? etag;

  /// Used to indicate if the TensorBoard instance is the default one. Each project & region can have at most one default TensorBoard instance. Creation of a default TensorBoard instance and updating an existing TensorBoard instance to be default will mark all other TensorBoard instances (if any) as non default.
  final pulumi.Input<bool>? isDefault;

  /// The labels with user-defined metadata to organize your Tensorboards. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one Tensorboard (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  TensorboardAiplatformV1beta1Args({
    this.description,
    required this.displayName,
    this.encryptionSpec,
    this.etag,
    this.isDefault,
    this.labels,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    final encryptionSpecValue = encryptionSpec;
    if (encryptionSpecValue != null) {
      map['encryptionSpec'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudAiplatformV1beta1EncryptionSpec,
          Map<String, dynamic>>(encryptionSpecValue, (value) => value.toMap());
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final isDefaultValue = isDefault;
    if (isDefaultValue != null) {
      map['isDefault'] = isDefaultValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory TensorboardAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return TensorboardAiplatformV1beta1Args(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      encryptionSpec: pulumi.Input.asOptionalInput<
          GoogleCloudAiplatformV1beta1EncryptionSpec>(map['encryptionSpec']),
      etag: pulumi.Input.asOptionalInput<String>(map['etag']),
      isDefault: pulumi.Input.asOptionalInput<bool>(map['isDefault']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
