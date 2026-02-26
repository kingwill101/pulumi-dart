import 'package:pulumi/pulumi.dart';
import 'google_cloud_aiplatform_v1beta1_deployed_index_ref_response.dart';
import 'google_cloud_aiplatform_v1beta1_encryption_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_index_stats_response.dart';
import 'index_args2.dart';

/// Creates an Index.
/// Auto-naming is currently not supported for this resource.
class Index2 extends CustomResource {
  /// Timestamp when this Index was created.
  late final Output<String> createTime;

  /// The pointers to DeployedIndexes created from this Index. An Index can be only deleted if all its DeployedIndexes had been undeployed first.
  late final Output<List<GoogleCloudAiplatformV1beta1DeployedIndexRefResponse>>
      deployedIndexes;

  /// The description of the Index.
  late final Output<String> description;

  /// The display name of the Index. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  late final Output<String> displayName;

  /// Immutable. Customer-managed encryption key spec for an Index. If set, this Index and all sub-resources of this Index will be secured by this key.
  late final Output<GoogleCloudAiplatformV1beta1EncryptionSpecResponse>
      encryptionSpec;

  /// Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  late final Output<String> etag;

  /// Stats of the index resource.
  late final Output<GoogleCloudAiplatformV1beta1IndexStatsResponse> indexStats;

  /// Immutable. The update method to use with this Index. If not set, BATCH_UPDATE will be used by default.
  late final Output<String> indexUpdateMethod;

  /// The labels with user-defined metadata to organize your Indexes. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// An additional information about the Index; the schema of the metadata can be found in metadata_schema.
  late final Output<dynamic> metadata;

  /// Immutable. Points to a YAML file stored on Google Cloud Storage describing additional information about the Index, that is specific to it. Unset if the Index does not have any additional information. The schema is defined as an OpenAPI 3.0.2 [Schema Object](https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.2.md#schemaObject). Note: The URI given on output will be immutable and probably different, including the URI scheme, than the one given on input. The output URI will point to a location where the user only has a read access.
  late final Output<String> metadataSchemaUri;

  /// The resource name of the Index.
  late final Output<String> name;
  late final Output<String> project;

  /// Timestamp when this Index was most recently updated. This also includes any update to the contents of the Index. Note that Operations working on this Index may have their Operations.metadata.generic_metadata.update_time a little after the value of this timestamp, yet that does not mean their results are not already reflected in the Index. Result of any successfully completed Operation on the Index is reflected in it.
  late final Output<String> updateTime;

  Index2(
    String name, {
    IndexArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:aiplatform/v1beta1:Index',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.deployedIndexes = Output.createUnknown<
        List<GoogleCloudAiplatformV1beta1DeployedIndexRefResponse>>();
    this.description = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.encryptionSpec = Output.createUnknown<
        GoogleCloudAiplatformV1beta1EncryptionSpecResponse>();
    this.etag = Output.createUnknown<String>();
    this.indexStats =
        Output.createUnknown<GoogleCloudAiplatformV1beta1IndexStatsResponse>();
    this.indexUpdateMethod = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.metadata = Output.createUnknown<dynamic>();
    this.metadataSchemaUri = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
