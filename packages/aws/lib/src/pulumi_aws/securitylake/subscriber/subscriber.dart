import 'package:pulumi/pulumi.dart' as pulumi;
import '../subscriber_source/subscriber_source.dart';
import '../subscriber_subscriber_identity/subscriber_subscriber_identity.dart';
import '../subscriber_timeouts/subscriber_timeouts.dart';
import 'subscriber_args.dart';

/// Resource for managing an AWS Security Lake Subscriber.
///
/// > **NOTE:** The underlying `aws.securitylake.DataLake` must be configured before creating the `aws.securitylake.Subscriber`. Use a `depends_on` statement.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Multiple Log Sources
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Security Lake subscriber using the subscriber ID. For example:
///
/// ```sh
/// $ pulumi import aws:securitylake/subscriber:Subscriber example 9f3bfe79-d543-474d-a93c-f3846805d208
/// ```
class Subscriber extends pulumi.CustomResource {
  /// The Amazon S3 or Lake Formation access type.
  late final pulumi.Output<String> accessType;

  /// ARN of the Data Lake.
  late final pulumi.Output<String> arn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The Amazon Resource Name (ARN) which uniquely defines the AWS RAM resource share. Before accepting the RAM resource share invitation, you can view details related to the RAM resource share.
  late final pulumi.Output<String> resourceShareArn;

  /// The name of the resource share.
  late final pulumi.Output<String> resourceShareName;

  /// The ARN of the IAM role to be used by the entity putting logs into your custom source partition.
  late final pulumi.Output<String> roleArn;

  /// The ARN for the Amazon Security Lake Amazon S3 bucket.
  late final pulumi.Output<String> s3BucketArn;

  /// The supported AWS services from which logs and events are collected. Security Lake supports log and event collection for natively supported AWS services. See `source` Blocks below.
  late final pulumi.Output<List<SubscriberSource>> sources;

  /// The description for your subscriber account in Security Lake.
  late final pulumi.Output<String?> subscriberDescription;

  /// The subscriber endpoint to which exception messages are posted.
  late final pulumi.Output<String> subscriberEndpoint;

  /// The AWS identity used to access your data. See `subscriber_identity` Block below.
  late final pulumi.Output<SubscriberSubscriberIdentity> subscriberIdentity;

  /// The name of your Security Lake subscriber account.
  late final pulumi.Output<String?> subscriberName;

  /// The subscriber status of the Amazon Security Lake subscriber account.
  late final pulumi.Output<String> subscriberStatus;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<SubscriberTimeouts?> timeouts;

  Subscriber(
    String name, {
    SubscriberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securitylake/subscriber:Subscriber',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessType = registerOutput<String>('accessType');
    this.arn = registerOutput<String>('arn');
    this.region = registerOutput<String>('region');
    this.resourceShareArn = registerOutput<String>('resourceShareArn');
    this.resourceShareName = registerOutput<String>('resourceShareName');
    this.roleArn = registerOutput<String>('roleArn');
    this.s3BucketArn = registerOutput<String>('s3BucketArn');
    this.sources = registerOutput<List<SubscriberSource>>('sources');
    this.subscriberDescription =
        registerOutput<String?>('subscriberDescription');
    this.subscriberEndpoint = registerOutput<String>('subscriberEndpoint');
    this.subscriberIdentity =
        registerOutput<SubscriberSubscriberIdentity>('subscriberIdentity');
    this.subscriberName = registerOutput<String?>('subscriberName');
    this.subscriberStatus = registerOutput<String>('subscriberStatus');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<SubscriberTimeouts?>('timeouts');
  }
}
