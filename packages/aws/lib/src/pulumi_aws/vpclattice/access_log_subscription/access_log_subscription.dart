import 'package:pulumi/pulumi.dart';
import 'access_log_subscription_args.dart';

/// Resource for managing an AWS VPC Lattice Service Network or Service Access log subscription.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Lattice Access Log Subscription using the access log subscription ID. For example:
///
/// ```sh
/// $ pulumi import aws:vpclattice/accessLogSubscription:AccessLogSubscription example rft-8012925589
/// ```
class AccessLogSubscription extends CustomResource {
  /// Amazon Resource Name (ARN) of the access log subscription.
  late final Output<String> arn;

  /// Amazon Resource Name (ARN) of the log destination.
  late final Output<String> destinationArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Amazon Resource Name (ARN) of the service network or service.
  late final Output<String> resourceArn;

  /// The ID or Amazon Resource Identifier (ARN) of the service network or service. You must use the ARN if the resources specified in the operation are in different accounts.
  ///
  /// The following arguments are optional:
  late final Output<String> resourceIdentifier;

  /// Type of log that monitors your Amazon VPC Lattice service networks. Valid values are: `SERVICE`, `RESOURCE`. Defaults to `SERVICE`.
  late final Output<String> serviceNetworkLogType;
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  AccessLogSubscription(
    String name, {
    AccessLogSubscriptionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:vpclattice/accessLogSubscription:AccessLogSubscription',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.destinationArn = registerOutput<String>('destinationArn');
    this.region = registerOutput<String>('region');
    this.resourceArn = registerOutput<String>('resourceArn');
    this.resourceIdentifier = registerOutput<String>('resourceIdentifier');
    this.serviceNetworkLogType =
        registerOutput<String>('serviceNetworkLogType');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
