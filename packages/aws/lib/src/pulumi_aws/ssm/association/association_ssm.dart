import 'package:pulumi/pulumi.dart' as pulumi;
import '../association_output_location/association_output_location.dart';
import '../association_target/association_target.dart';
import 'association_ssm_args.dart';

/// Associates an SSM Document to an instance or EC2 tag.
///
/// ## Example Usage
///
/// ### Create an association for a specific instance
///
///
///
/// ### Create an association for all managed instances in an AWS account
///
/// To target all managed instances in an AWS account, set the `key` as `"InstanceIds"` with `values` set as `["*"]`. This example also illustrates how to use an Amazon owned SSM document named `AmazonCloudWatch-ManageAgent`.
///
///
///
/// ### Create an association for a specific tag
///
/// This example shows how to target all managed instances that are assigned a tag key of `Environment` and value of `Development`.
///
///
///
/// ### Create an association with a specific schedule
///
/// This example shows how to schedule an association in various ways.
///
///
///
/// ### Create an association with multiple instances with their instance ids
///
///
///
/// ### Create an association with multiple instances with their values matching their tags
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `association_id` - (String) ID of the SSM association.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import SSM associations using the `association_id`. For example:
///
/// ```sh
/// $ pulumi import aws:ssm/association:Association example 10abcdef-0abc-1234-5678-90abcdef123456
/// ```
class AssociationSsm extends pulumi.CustomResource {
  /// By default, when you create a new or update associations, the system runs it immediately and then according to the schedule you specified. Enable this option if you do not want an association to run immediately after you create or update it. This parameter is not supported for rate expressions. Default: `false`.
  late final pulumi.Output<bool?> applyOnlyAtCronInterval;

  /// The ARN of the SSM association
  late final pulumi.Output<String> arn;

  /// The ID of the SSM association.
  late final pulumi.Output<String> associationId;

  /// The descriptive name for the association.
  late final pulumi.Output<String?> associationName;

  /// Specify the target for the association. This target is required for associations that use an `Automation` document and target resources by using rate controls. This should be set to the SSM document `parameter` that will define how your automation will branch out.
  late final pulumi.Output<String?> automationTargetParameterName;

  /// One or more Systems Manager Change Calendar names. The association runs only when the Change Calendar is open.
  late final pulumi.Output<List<String>?> calendarNames;

  /// The compliance severity for the association. Can be one of the following: `UNSPECIFIED`, `LOW`, `MEDIUM`, `HIGH` or `CRITICAL`
  late final pulumi.Output<String?> complianceSeverity;

  /// The document version you want to associate with the target(s). Can be a specific version or the default version.
  late final pulumi.Output<String> documentVersion;

  /// The maximum number of targets allowed to run the association at the same time. You can specify a number, for example 10, or a percentage of the target set, for example 10%.
  late final pulumi.Output<String?> maxConcurrency;

  /// The number of errors that are allowed before the system stops sending requests to run the association on additional targets. You can specify a number, for example 10, or a percentage of the target set, for example 10%. If you specify a threshold of 3, the stop command is sent when the fourth error is returned. If you specify a threshold of 10% for 50 associations, the stop command is sent when the sixth error is returned.
  late final pulumi.Output<String?> maxErrors;

  /// The name of the SSM document to apply.
  late final pulumi.Output<String> name;

  /// An output location block. Output Location is documented below.
  late final pulumi.Output<AssociationOutputLocation?> outputLocation;

  /// A block of arbitrary string parameters to pass to the SSM document.
  late final pulumi.Output<Map<String, String>> parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A [cron or rate expression](https://docs.aws.amazon.com/systems-manager/latest/userguide/reference-cron-and-rate-expressions.html) that specifies when the association runs.
  late final pulumi.Output<String?> scheduleExpression;

  /// The mode for generating association compliance. You can specify `AUTO` or `MANUAL`.
  late final pulumi.Output<String?> syncCompliance;

  /// A map of tags to assign to the object. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// A block containing the targets of the SSM association. Targets are documented below. AWS currently supports a maximum of 5 targets.
  late final pulumi.Output<List<AssociationTarget>> targets;

  /// The number of seconds to wait for the association status to be `Success`. If `Success` status is not reached within the given time, create opration will fail.
  ///
  /// Output Location (`output_location`) is an S3 bucket where you want to store the results of this association:
  late final pulumi.Output<int?> waitForSuccessTimeoutSeconds;

  AssociationSsm(
    String name, {
    AssociationSsmArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssm/association:Association',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applyOnlyAtCronInterval =
        registerOutput<bool?>('applyOnlyAtCronInterval');
    this.arn = registerOutput<String>('arn');
    this.associationId = registerOutput<String>('associationId');
    this.associationName = registerOutput<String?>('associationName');
    this.automationTargetParameterName =
        registerOutput<String?>('automationTargetParameterName');
    this.calendarNames = registerOutput<List<String>?>('calendarNames');
    this.complianceSeverity = registerOutput<String?>('complianceSeverity');
    this.documentVersion = registerOutput<String>('documentVersion');
    this.maxConcurrency = registerOutput<String?>('maxConcurrency');
    this.maxErrors = registerOutput<String?>('maxErrors');
    this.name = registerOutput<String>('name');
    this.outputLocation =
        registerOutput<AssociationOutputLocation?>('outputLocation');
    this.parameters = registerOutput<Map<String, String>>('parameters');
    this.region = registerOutput<String>('region');
    this.scheduleExpression = registerOutput<String?>('scheduleExpression');
    this.syncCompliance = registerOutput<String?>('syncCompliance');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targets = registerOutput<List<AssociationTarget>>('targets');
    this.waitForSuccessTimeoutSeconds =
        registerOutput<int?>('waitForSuccessTimeoutSeconds');
  }
}
