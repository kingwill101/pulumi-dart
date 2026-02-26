import 'package:pulumi/pulumi.dart';
import 'archive_deployment_args.dart';

/// Creates a new ArchiveDeployment.
class ArchiveDeployment extends CustomResource {
  /// The time at which the Archive Deployment was created in milliseconds since the epoch.
  late final Output<String> createdAt;
  late final Output<String> environmentId;

  /// Input only. The Google Cloud Storage signed URL returned from GenerateUploadUrl and used to upload the Archive zip file.
  late final Output<String> gcsUri;

  /// User-supplied key-value pairs used to organize ArchiveDeployments. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  late final Output<Map<String, String>> labels;

  /// Name of the Archive Deployment in the following format: `organizations/{org}/environments/{env}/archiveDeployments/{id}`.
  late final Output<String> name;

  /// A reference to the LRO that created this Archive Deployment in the following format: `organizations/{org}/operations/{id}`
  late final Output<String> operation;
  late final Output<String> organizationId;

  /// The time at which the Archive Deployment was updated in milliseconds since the epoch.
  late final Output<String> updatedAt;

  ArchiveDeployment(
    String name, {
    ArchiveDeploymentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:ArchiveDeployment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createdAt = Output.createUnknown<String>();
    this.environmentId = Output.createUnknown<String>();
    this.gcsUri = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.name = Output.createUnknown<String>();
    this.operation = Output.createUnknown<String>();
    this.organizationId = Output.createUnknown<String>();
    this.updatedAt = Output.createUnknown<String>();
  }
}
