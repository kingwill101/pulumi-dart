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
    this.createdAt = registerOutput<String>('createdAt');
    this.environmentId = registerOutput<String>('environmentId');
    this.gcsUri = registerOutput<String>('gcsUri');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.name = registerOutput<String>('name');
    this.operation = registerOutput<String>('operation');
    this.organizationId = registerOutput<String>('organizationId');
    this.updatedAt = registerOutput<String>('updatedAt');
  }
}
