import 'package:pulumi/pulumi.dart';
import 'class_item_response.dart';
import 'custom_class_args.dart';

/// Create a custom class.
class CustomClass extends CustomResource {
  /// Allows users to store small amounts of arbitrary data. Both the key and the value must be 63 characters or less each. At most 100 annotations. This field is not used.
  late final Output<Map<String, String>> annotations;

  /// If this custom class is a resource, the custom_class_id is the resource id of the CustomClass. Case sensitive.
  late final Output<String> customClassId;

  /// The time at which this resource was requested for deletion. This field is not used.
  late final Output<String> deleteTime;

  /// User-settable, human-readable name for the CustomClass. Must be 63 characters or less. This field is not used.
  late final Output<String> displayName;

  /// This checksum is computed by the server based on the value of other fields. This may be sent on update, undelete, and delete requests to ensure the client has an up-to-date value before proceeding. This field is not used.
  late final Output<String> etag;

  /// The time at which this resource will be purged. This field is not used.
  late final Output<String> expireTime;

  /// A collection of class items.
  late final Output<List<ClassItemResponse>> items;

  /// The [KMS key name](https://cloud.google.com/kms/docs/resource-hierarchy#keys) with which the content of the ClassItem is encrypted. The expected format is `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  late final Output<String> kmsKeyName;

  /// The [KMS key version name](https://cloud.google.com/kms/docs/resource-hierarchy#key_versions) with which content of the ClassItem is encrypted. The expected format is `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}/cryptoKeyVersions/{crypto_key_version}`.
  late final Output<String> kmsKeyVersionName;
  late final Output<String> location;

  /// The resource name of the custom class.
  late final Output<String> name;
  late final Output<String> project;

  /// Whether or not this CustomClass is in the process of being updated. This field is not used.
  late final Output<bool> reconciling;

  /// The CustomClass lifecycle state. This field is not used.
  late final Output<String> state;

  /// System-assigned unique identifier for the CustomClass. This field is not used.
  late final Output<String> uid;

  CustomClass(
    String name, {
    CustomClassArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:speech/v1:CustomClass',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = Output.createUnknown<Map<String, String>>();
    this.customClassId = Output.createUnknown<String>();
    this.deleteTime = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.expireTime = Output.createUnknown<String>();
    this.items = Output.createUnknown<List<ClassItemResponse>>();
    this.kmsKeyName = Output.createUnknown<String>();
    this.kmsKeyVersionName = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.reconciling = Output.createUnknown<bool>();
    this.state = Output.createUnknown<String>();
    this.uid = Output.createUnknown<String>();
  }
}
