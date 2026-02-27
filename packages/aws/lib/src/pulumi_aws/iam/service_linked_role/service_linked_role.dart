import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_linked_role_args.dart';

/// Provides an [IAM service-linked role](https://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the IAM service-linked role.
///
///
/// Using `pulumi import`, import IAM service-linked roles using role ARN. For example:
///
/// ```sh
/// $ pulumi import aws:iam/serviceLinkedRole:ServiceLinkedRole elasticbeanstalk arn:aws:iam::123456789012:role/aws-service-role/elasticbeanstalk.amazonaws.com/AWSServiceRoleForElasticBeanstalk
/// ```
class ServiceLinkedRole extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) specifying the role.
  late final pulumi.Output<String> arn;

  /// The AWS service to which this role is attached. You use a string similar to a URL but without the `http://` in front. For example: `elasticbeanstalk.amazonaws.com`. To find the full list of services that support service-linked roles, check [the docs](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-services-that-work-with-iam.html).
  late final pulumi.Output<String> awsServiceName;

  /// The creation date of the IAM role.
  late final pulumi.Output<String> createDate;

  /// Additional string appended to the role name. Not all AWS services support custom suffixes.
  late final pulumi.Output<String?> customSuffix;

  /// The description of the role.
  late final pulumi.Output<String?> description;

  /// The name of the role.
  late final pulumi.Output<String> name;

  /// The path of the role.
  late final pulumi.Output<String> path;

  /// Key-value mapping of tags for the IAM role. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The stable and unique string identifying the role.
  late final pulumi.Output<String> uniqueId;

  ServiceLinkedRole(
    String name, {
    ServiceLinkedRoleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/serviceLinkedRole:ServiceLinkedRole',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.awsServiceName = registerOutput<String>('awsServiceName');
    this.createDate = registerOutput<String>('createDate');
    this.customSuffix = registerOutput<String?>('customSuffix');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.path = registerOutput<String>('path');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.uniqueId = registerOutput<String>('uniqueId');
  }
}
